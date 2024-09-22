module tb_fa;
  reg a,b,cin;
  wire sum,c_out;
  integer i;
  fa(.a(a),.b(b),.cin(cin),.sum(sum),.c_out(c_out));
  initial begin
    a=0;
    b=0;
    cin=0;
    $monitor("a=%b,b=%b,cin=%b,sum=%b,c_out=%b",a,b,cin,sum,c_out);
    for(i=0; i<10; i=i+1)begin
      #10 a=$random;
      #20 b=$random;
      #30 cin=$random;
    end
  end
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule
