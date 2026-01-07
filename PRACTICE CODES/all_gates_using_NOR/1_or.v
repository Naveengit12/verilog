module or_nor_gate(A, B, Q);
  input A;
  input B;
  output Q;
  
  wire Q1;
  
  nor g1(Q1, A, B);
  nor g2(Q, Q1);
endmodule


// TESTBENCH
module or_nor_gate_tb;   
  reg A, B;
  wire Q;
  or_nor_gate dut(.A(A), .B(B), .Q(Q));

  initial begin
  $dumpfile(".vcd");
  $dumpvars();

  A = 0; B = 0;
  #10; A = 0; B = 1;
  #10; A = 1; B = 0;
  #10; A = 1; B = 1;
  #20;
  $display("Time=%0t : Calling $finish",$time);
  $finish;
end
endmodule
