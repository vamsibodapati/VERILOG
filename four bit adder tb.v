module tb_fba;
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]sum;
  wire [3:0]c_out;
  integer i;
  fba(.a(a),.b(b),.cin(cin),.sum(sum),.c_out(c_out));
  initial begin
    a=0;
    b=0;
    cin=0;
    $monitor("a=%b,b=%b,cin=%b,sum=%b,c_out=%b",a,b,cin,sum,c_out);
    for(i=0; i<5; i=i+1)begin
     #10 a=$random;
     #10 b=$random;
     #10 cin=$random;
    end
  end
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule
