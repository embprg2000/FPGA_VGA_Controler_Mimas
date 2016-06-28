`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:11 05/11/2015 
// Design Name: 
// Module Name:    graph 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module graph(clk, x, y, color);
	input  clk;
	input  [9:0] x, y;
	output [7:0] color;
	
	parameter COLOR_GRAPH = 8'b11111111;
	parameter COLOR_GRID  = 8'b01101101;
	parameter COLOR_BKG   = 8'b00000000;
	
	parameter max_y_val = 255;
	parameter x_min = 30;
	parameter x_max = x_min + 512;
	parameter y_max = 300;
	parameter y_min = y_max - max_y_val;
	
	wire [7:0] graph_col, grid_hor, grid_ver;
	reg graph_hor, graph_ver;
	
	reg [7:0] yPos;
	reg [6:0] xGridCnt;
	reg [6:0] yGridCnt;
	
	reg xLimit;
	reg yLimit;
	reg yGrid;
	
	always @(posedge clk) begin
		xLimit    <= (x >= x_min && x <= x_max);
		yLimit    <= (y >= y_min && y <= y_max);
		graph_hor <= xLimit && (y == y_min || y == y_max);
		graph_ver <= yLimit && (x == x_min || x == x_max);
		
		if (xLimit == 1) begin
			xGridCnt <= (xGridCnt < 49) ? xGridCnt + 1 : 0;
		end
		else begin
			xGridCnt <= 0;
		end
			
		if (yLimit == 1) begin
			if (x == 2) begin
				yPos  <= yPos - 1;
				yGrid <= (yPos == 127) || (yPos == 226) || (yPos == 28); 
			end
		end
		else begin
			yPos  <= max_y_val;
			yGrid <= 0;
		end
	end
	
	assign grid_ver = (xGridCnt == 49 && yLimit == 1) ? COLOR_GRID : COLOR_BKG;
	assign grid_hor = (yGrid == 1     && xLimit == 1) ? COLOR_GRID : COLOR_BKG;
	
	assign color = (graph_hor || graph_ver) ? COLOR_GRAPH : grid_ver | grid_hor;

endmodule
