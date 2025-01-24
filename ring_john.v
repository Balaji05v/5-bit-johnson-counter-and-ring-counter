module ring_john #(parameter WIDTH = 4) (
 input clk,
 input rstn,
 input rj,
 output reg [WIDTH-1:0] y );
 integer i;
 always @(posedge clk or posedge rstn) begin
 if (rstn==1) begin
 y <= 1;
 end else begin
 if (rj == 1) begin
 y[WIDTH-1] <= ~y[0];
 for (i = 0; i < WIDTH-1; i = i + 1) begin
 y[i] <= y[i+1];
 end
 end else begin
 y[WIDTH-1] <= y[0];
 for (i = 0; i < WIDTH-1; i = i + 1) begin
 y[i] <= y[i+1];
 end
 end    end
 end
endmodule
