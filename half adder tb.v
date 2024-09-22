module tb_ha;
  reg a;
  reg b;
  wire sum;
  wire c_out;
  integer i;
  ha(.a(a),.b(b),.sum(sum),.c_out(c_out));
  initial begin 
    a = 0;
    b = 0;
    $monitor("a=%b,b=%b,sum=%b,c_out=%b",a,b,sum,c_out);
    for(i=0; i<5; i=i+1)begin
     #10 a=$random;
     #10 b=$random;
    end
  end
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule
