module multiply_tb;

  // Inputs
  reg [3:0] a;
  reg [3:0] b;

  // Output
  wire [7:0] p;

  // Instantiate the DUT (Device Under Test)
  multiply uut (
    .a(a),
    .b(b),
    .p(p)
  );

  initial begin
    // Display header
    $display("Time\t a\t b\t p");
    $monitor("%0t\t %b\t %b\t %b (%0d)", $time, a, b, p, p);

    // Test Case 1
    a = 4'b0011; // 3
    b = 4'b0101; // 5
    #10;

    // Test Case 2
    a = 4'b1111; // 15
    b = 4'b0001; // 1
    #10;

    // Test Case 3
    a = 4'b1010; // 10
    b = 4'b0011; // 3
    #10;

    // Test Case 4
    a = 4'b1000; // 8
    b = 4'b1000; // 8
    #10;

    // Test Case 5 (Edge Case)
    a = 4'b0000; // 0
    b = 4'b1111; // 15
    #10;

    // End of simulation
    $finish;
  end

endmodule
