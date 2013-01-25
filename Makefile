PROJECT = WheelieCar

SCHEMATICS = ATMega328.sch

PCB_PAGES = P3 P9 P11R
PCB_ACTIONS = LoadFrom(LayoutToBuffer, $(PROJECT).new.pcb); \
	      PasteBuffer(ToLayout, 0, 0, mil) \
	      DisperseElements(All) \
	      ExecuteFile($(PROJECT).cmd) \
	      LoadFrom(Netlist, $(PROJECT).net)

SCHEMS_PS := $(SCHEMATICS:.sch=.ps)
SCHEMS_PDF := $(SCHEMATICS:.sch=.pdf)

.PHONY: updatepcb pdfs clean

all: updatepcb

##################################
### REGLAS PARA ACTUALIZAR PCB ###
##################################
updatepcb: $(PROJECT).pcb

## Si han cambiado los esquemáticos se abre el programa "pcb" y se ejecutan las
## acciones necesarias para incorporar los cambios
$(PROJECT).pcb: $(SCHEMATICS)
	@echo -e "\n*** Comprobando si hay que actualizar $(PROJECT).pcb ***"

	@make $(PROJECT).pcb.new

	@#Si se ha editado el .sch, pero no hace falta cambiar el .pcb:
	@if [ ! -e $(PROJECT).new.pcb ]; then \
		echo -e "\n*** NO hay que actualizar $(PROJECT).pcb ***"; \
		touch $(PROJECT).pcb; \
		touch $(PROJECT).net; \
	else \
		echo -e "\n*** Hay que actualizar $(PROJECT).pcb ***"; \
		echo "Abriendo pcb..."; \
		pcb --action-string "$(PCB_ACTIONS)" $(PROJECT).pcb; \
	fi


## Genera el pcb.new y el netlist a partir de los esquemáticos
## Los nombres de los esquemáticos han de estar definidos en gsch2pcbrc
$(PROJECT).pcb.new: $(SCHEMATICS)
	@echo -e "\n*** Generando $(PROJECT).pcb.new a partir de los esquemáticos ***"
	gsch2pcb -v gsch2pcbrc

####################################
### REGLAS PARA GENERAR LOS PDFs ###
####################################
pdfs: $(PROJECT).pdf


## Une los pdfs de los esquemáticos con el de la PCB
$(PROJECT).pdf: $(SCHEMS_PDF) $(PROJECT)-PCB.pdf
	@echo -e "\n*** Creando $(PROJECT).pdf ***"

	@#Creamos dos arrays auxiliares a partir de los cuales crearemos las
	@#cadenas PDFS y PDFS_pfx, necesarias para pasarle a pdftk todos los
	@#esquemáticos
	@SCHEM_ARRAY=($(SCHEMS_PDF)); \
	ABC_ARRAY=({A..Z}); \
	for ((i=0 ; i < $${#SCHEM_ARRAY[@]} ; ++i)); do \
		PDFS_pfx="$$PDFS_pfx $${ABC_ARRAY[$$i]}"; \
		PDFS="$$PDFS $${ABC_ARRAY[$$i]}=$${SCHEM_ARRAY[$$i]}"; \
	done; \
	\
	pdftk $$PDFS P=$(PROJECT)-PCB.pdf cat $$PDFS_pfx $(PCB_PAGES) output $(PROJECT).pdf


## Genera el PS a partir del PCB y lo convierte a PDF
$(PROJECT)-PCB.pdf: $(PROJECT).pcb
	@echo -e "\n*** Generando el pdf de la PCB ***"

	pcb -x ps --psfile $(PROJECT)-PCB.ps $(PROJECT).pcb
	ps2pdf -sPAPERSIZE=a4 $(PROJECT)-PCB.ps
	@rm $(PROJECT)-PCB.ps


## Convertimos todos los PS a PDF o pide que se creen si no existen
$(SCHEMS_PDF): $(SCHEMATICS)
	@for schem_ps in $(SCHEMS_PS); do \
		echo -e "\n*** Convirtiendo $$schem_ps a pdf ***"; \
		\
		if [ -e "$$schem_ps" ];then \
			ps2pdf -sPAPERSIZE=a4 $$schem_ps; \
			rm $$schem_ps; \
		else \
			echo -e "** ACTUALIZA $$schem_ps **\n"; \
			exit 1; \
		fi; \
	done


clean:
	@echo -e "\n*** Limpiando ***"

	@rm -fv $(PROJECT).pdf
	@rm -fv $(PROJECT)-PCB.pdf
	@rm -fv $(PROJECT)-PCB.ps
	@rm -fv $(SCHEMS_PDF)
	@rm -fv $(SCHEMS_PS)
	@rm -fv $(PROJECT).net
	@rm -fv $(PROJECT).cmd
	@rm -fv $(PROJECT).new.pcb
