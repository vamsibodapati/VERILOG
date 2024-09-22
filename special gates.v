XOR GATE:
  CODE:
module xor1(input in1,input in2,output out);
  assign out= in1^in2;
endmodule

XNOR GATE:
  CODE:
module xnor1(input in1,input in2,output out);
  assign out= ~(in1^in2);
endmodule
