module tb_mul;
  reg [3:0]A;
  reg [3:0]B;
  wire [7:0]P;
  wire po,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15;
  wire s2,s1,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
  integer i;
  mul (.A(A),.B(B),.P(P));
  initial begin
    A=0;
    B=0;
    $monitor("A=%d,B=%d,P=%d",A,B,P);
    for(i=0; i<10; i=i+1)begin
      #10 A=$random;
      #10 B=$random;
    end
  end
  initial begin 
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule
