 module fa(input a,input b,input cin,output sum,output c_out);
  assign sum=a^b^cin;
  assign c_out= a&b | b&cin | cin&a;
 endmodule
