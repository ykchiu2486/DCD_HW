VERILATOR = verilator
FLAG = --trace --binary -j 0 -Wall
VCD_VIEWER = gtkwave  

SRC = hw1_tb.v
OUT = Vhw1_tb
WAVE = waveform.vcd          
DIR = obj_dir

all: compile run view

compile:
	$(VERILATOR) $(FLAG) $(SRC)

run:
	./$(DIR)/$(OUT)

view:
	$(VCD_VIEWER) $(WAVE)

clean:
	rm -rf $(DIR) $(WAVE)
