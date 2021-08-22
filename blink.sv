// create module
	module blink (
	input wire clk, // 50MHz input clock
	input button, // Button input
	output reg LED // LED ouput
	
	
	);

// create a binary counter
reg [8:0] cnt; // 8-bit counter
reg press;

initial begin
cnt <= 8'd0; // start at zero

end

always @(posedge clk) begin


 press <= 1'b0; 

if (button == 1) begin
	cnt <= cnt + 1; // count++
	
	if (press == 0) // setting press value
		press <= 1;
	else 
		press <= 0;
end
LED = press;
end

endmodule
