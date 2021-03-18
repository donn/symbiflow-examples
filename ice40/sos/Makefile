SILKFLOW_CMD = run_nextpnr

all: top.bit

vtr: SILKFLOW_CMD = run
vtr: top.bit

top.bit: example.v
	mkdir -p build
	cd build && silkflow $(SILKFLOW_CMD) -t top -D lp8k-cm81 -P lp8k-cm81 -p ../tinyfpga.pcf -b ../top.bit ../example.v

.PHONY: clean

clean:
	rm -rf build
	rm -f *.bit
	rm -f *.json
	rm -f *.asc
	rm -f *.fasm