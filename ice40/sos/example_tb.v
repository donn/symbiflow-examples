`ifndef VCDFILE
`define VCDFILE "out.vcd"
`endif

module test;

	/* Make a regular pulsing clock. */
	reg clk = 0;
	always #1 clk = !clk;

	wire led;
	wire usbpu;
	top uut (.CLK(clk), .LED(led), .USBPU(usbpu));

	initial begin
		#1000;
		$dumpflush;
		$finish;
	end

endmodule // test
