module ram (
  input [7:0] data_a, data_b,
  input [13:0] addr_a, addr_b,
  input we_a, we_b, clk,
	output reg [7:0] q_a, q_b);
	
reg [7:0] ram[16383:0];
	
always @ (posedge clk)
  if (we_a) 
  begin
    ram[addr_a] <= data_a;
    q_a <= data_a;
  end
  else
    q_a <= ram[addr_a];

always @ (posedge clk)
  if (we_b)
  begin
    ram[addr_b] <= data_b;
    q_b <= data_b;
  end
  else
    q_b <= ram[addr_b];

endmodule
