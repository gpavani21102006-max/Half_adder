// Half Adder Design Module
module half_adder (
    input  a,     // First input binary bit
    input  b,     // Second input binary bit
    output sum,   // Sum output bit (A XOR B)
    output carry  // Carry output bit (A AND B)
);

    // Continuous assignments for combinational logic
    assign sum   = a ^ b;  // XOR gate logic
    assign carry = a & b;  // AND gate logic

endmodule
