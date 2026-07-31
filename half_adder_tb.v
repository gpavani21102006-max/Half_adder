iverilog -o halfadder halfadder.v halfadder_tb.v
`timescale 1ns/1ps

module halfadder_tb;

reg A, B;
wire Sum, Carry;

halfadder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("output.vcd");
    $dumpvars(0, halfadder_tb);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule