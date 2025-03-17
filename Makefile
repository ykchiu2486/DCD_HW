VERILATOR = verilator
VCD_VIEWER = gtkwave  

SRC = hw1_tb.v
OUT = Vhw1_tb
WAVE = waveform.vcd          
DIR = obj_dir

all: compile run view

compile:
	$(VERILATOR) --trace --binary -j 0 -Wall $(SRC)

run:
	./$(DIR)/$(OUT)

view:
	$(VCD_VIEWER) $(WAVE)

clean:
	rm -rf $(DIR) $(WAVE)
