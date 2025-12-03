`timescale 1ns/1ps


module testbench;

	reg reset,clk;
	wire [7:0] bluff;
	CPU_mc dut(clk,16'b0000000000000000,reset,bluff);
	
	initial begin	
		reset=1'b0;
		#5
		reset=1'b1;
		#10;
		reset=1'b0;
		#69670;
		$finish;
	end 
	
	initial clk = 1'b1;
	always #5 clk = ~clk;

endmodule