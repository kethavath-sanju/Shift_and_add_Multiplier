
module multiply (
  input [3:0] a,
  input [3:0] b,
  output reg [7:0] p
);
  integer i;

  always @(*) begin
    p = 0;
    for (i = 0; i < 4; i = i + 1) begin
      if (b[i] == 1)
        p = p + (a << i); 
    end
  end

endmodule


