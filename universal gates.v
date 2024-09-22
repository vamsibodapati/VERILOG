NAND GATE:
  CODE:
module nand1(in1,in2,out);
  input in1,in2;
  output out;
  assign out= ~(in1&in2);
endmodule

NOTE: same test bench of basic gates example can be used by just changing the module name.

NOR GATE:
  CODE:
module nor1(in1,in2,out);
  input in1,in2;
  output out;
  assign out= ~(in1|in2);
endmodule
NOTE: same test bench of basic gates example can be used by just changing the module name.
