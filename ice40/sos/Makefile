SILKFLOW_CMD = run_nextpnr
TARGET ?= tinyfpga-bx

# ---
FPGA = lp8k-cm81
PART = iCE40-LP8K-CM81
PCF = tinyfpga-bx.pcf
#--

ifeq (${TARGET}, icestick)
FPGA = hx1k-vq100
PART = HX1K-VQ100
PCF = icestick.pcf
endif

all: top.bit
vtr: SILKFLOW_CMD = run
vtr: top.bit

top.bit:
	silkflow $(SILKFLOW_CMD) -t top -D $(FPGA) -P $(PART) -p $(PCF) example.v

.PHONY: clean

clean:
	rm -rf build
	rm -f *.bit
	rm -f *.json
	rm -f *.asc
	rm -f *.fasm