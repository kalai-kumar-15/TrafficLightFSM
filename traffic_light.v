module traffic_light (
    input clk,
    input reset,
    output reg [2:0] lights
);

reg [1:0] state;

parameter RED = 2'b00,
          GREEN = 2'b01,
          YELLOW = 2'b10;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= RED;
        lights <= 3'b100;
    end else begin
        case (state)
            RED: begin
                state <= GREEN;
                lights <= 3'b001;
            end
            GREEN: begin
                state <= YELLOW;
                lights <= 3'b010;
            end
            YELLOW: begin
                state <= RED;
                lights <= 3'b100;
            end
        endcase
    end
end

endmodule
