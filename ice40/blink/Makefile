all: top.bit

top.bit:
	silkflow run -t top -D lp8k-cm81 -P lp8k-cm81 -p tinyfpga-bx.pcf example.v

.PHONY: clean

clean:
	rm -f $(find . | grep "\.v" | grep -v "example")
	rm -f *.log
	rm -f *.json
	rm -f *.place
	rm -f *.rpt
	rm -f *.fasm
	rm -f *.asc
	rm -f *.eblif
	rm -f *.route
	rm -f *.bin
	rm -f *.net
	rm -f *.post_routing