module fa(input a,input b,input cin,output sum,output c_out);
  assign sum=a^b^cin;
  assign c_out= a&b | b&cin | cin&a;
endmodule
module fba(input[3:0]a,input[3:0]b,input cin,output[3:0]sum,output c_out);
  wire c0,c1,c2;
  fa fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .c_out(c0));
  fa fa1 (.a(a[1]), .b(b[1]), .cin(c0), .sum(sum[1]), .c_out(c1));
  fa fa2 (.a(a[2]), .b(b[2]), .cin(c1), .sum(sum[2]), .c_out(c2));
  fa fa3 (.a(a[3]), .b(b[3]), .cin(c2), .sum(sum[3]), .c_out(c_out));
endmodule
