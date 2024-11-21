`timescale 1ns / 1ps

module tb_Register #(parameter bits = 8);

    logic clk;
    logic rst_n;
    logic en;
    logic [bits-1:0] d;
    logic [bits-1:0] q;
    
Register #(bits) register1(
    .clk(clk),
    .rst_n(rst_n),
    .en(en),
    .d(d),
    .q(q)
);

    initial begin
      forever #5 clk = ~clk;
    end
    
    initial begin
      clk =0;
      en = 1;  
      rst_n = 0;
      d = 1; 
      #10; 
      rst_n = 1; 
      #10;
      en = 1;  
      d = 1; 
      #10;
      en = 0; 
      d = 0; 
      #10; 
      rst_n = 0; 
      #10;
      en =0;  
      d = 1; 
      #10;
      en =1;  
      d = 0; 
      #10;
      en =1; 
      d = 1; 
      #10; 
    
      $finish;
end
    
endmodule