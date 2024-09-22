NOT GATE:
CODE:  
 module and(in,out);                                                
  input in;
  output out;
  assign out=! in;
endmodule
TEST BENCH:
// 1. declaration of testbench variables
module tb_not1;
  reg in;
  wire out;
  integer i;
  // 2 instantiate the design with testbench variables 
  not1 (.in(in),.out(out));
  // 3 provide stimulus
  initial begin
    in=0;
    $monitor ("in=0x%0h,out=0x%0h",in,out);
    // use for loop to apply random variables
    for(i=0; i<5; i=i+1)begin
      #10 in=0;
      #10 in=1;
    end
  end
 AND GATE:
CODE:
module and1(in1,in2,out);
  input in1,in2;
  output out;
  assign out= in1&in2;
endmodule
TEST BENCH:
// 1. declaration of testbench variables
module tb_and1;
  reg in1,in2;
  wire out;
  integer i;
  // 2 instantiate the design with testbench variables 
  and1 (.in1(in1),.in2(in2),.out(out));
  // 3 provide stimulus
  initial begin
    in1=0;
    in2=0;
    $monitor ("in1=%b,in1=%b,out=%b",in1,in2,out);
    // use for loop to apply random variables
    for(i=0; i<5; i=i+1)begin
      #10 in1=$random;
      #10 in2=$random;
    end
  end
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule
  
 OR GATE:
  CODE:
module and1(in1,in2,out);
  input in1,in2;
  output out;
  assign out= in1 | in2;
endmodule
  NOTE: same test bench of before example can be used by just changing the module name.

  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule
