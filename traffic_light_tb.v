`timescale 1ns / 1ps
module traffic_light_tb;

reg clk, reset;
wire [2:0] lights;

traffic_light uut (
    .clk(clk),
    .reset(reset),
    .lights(lights)
);

// Clock generator
always #5 clk = ~clk;

initial begin
    $dumpfile("traffic.vcd");
    $dumpvars(0, traffic_light_tb);

    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end

endmodule
