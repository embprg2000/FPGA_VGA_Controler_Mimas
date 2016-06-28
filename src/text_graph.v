//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:11 05/08/2015 
// Design Name: 
// Module Name:    text_graph 
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
module text(clk, x, y, color);
	input  clk;
	input  [9:0] x, y;
	output [7:0] color;
	
	parameter CHAR_WIDTH    = 8;
	parameter CHAR_HEIGHT   = 10;
	parameter CHAR_PER_LINE = 62;
	parameter COLOR_TEXT    = 8'b11111100;
	parameter COLOR_BKG     = 8'b00000000;

	reg  [3:0] colCnt;
	reg  [4:0] rowCnt;
	reg  [10:0] addr;
	reg  [6:0] col;
	reg  [6:0] row;
	
	initial begin
		col <= 0;
		row <= 0;
	end
	
	always @(posedge clk) begin
		if (x == 0) begin
			col    <= 0;
			colCnt <= 0;
		end
		else begin
			if (colCnt < CHAR_WIDTH)
				colCnt <= colCnt + 1;
			else begin
				col    <= col + 1;
				colCnt <= 0 ;
			end
		end
	end
	
	always @(posedge clk) begin
		if (y < 10) begin
			row    <= 0;
			rowCnt <= 0 ;
			addr   <= 0;
		end
		else begin
			if (x == 1) begin
				// Don't use (x == 0) since x stays zero for multiple clock cycles.
				// Update the row counter at the beginning of the line
				if (rowCnt < CHAR_HEIGHT)
					rowCnt <= rowCnt + 1;
				else begin
					row    <= row + 1;
					rowCnt <= 0 ;
					addr   <= addr + CHAR_PER_LINE;
				end
			end
		end
	end
	
	
	wire [0:8*17-1] example_text = "Work In Progress!";

	reg [7:0] char_data;
	always @(posedge clk) begin
		case (row)
			1: begin
					if (col >= 20 && col < 37) begin
						addr_char <= example_text[(col - 20)*8+:8];
					end
					else begin
						addr_char <= 0;
					end
				end
			6:  addr_char <= (col == 1) ? "1" : (col == 2) ? "0" : 0;
			15: addr_char <= (col == 2) ? "0" : 0;
			24: addr_char <= (col == 0) ? "-" : (col == 1) ? "1" : (col == 2) ? "0" : 0;
			27: begin
					if (col == 3)
						addr_char <= "0";
					if (col >= 13 && col <= 15)
						addr_char <= (col == 13) ? "1" : (col == 14) ? "0" : (col == 15) ? "0" : 0;
					else if (col >= 24 && col <= 26)
						addr_char <= (col == 24) ? "2" : (col == 25) ? "0" : (col == 26) ? "0" : 0;
					else if (col >= 35 && col <= 37)
						addr_char <= (col == 35) ? "3" : (col == 36) ? "0" : (col == 37) ? "0" : 0;
					else if (col >= 46 && col <= 48)
						addr_char <= (col == 46) ? "4" : (col == 47) ? "0" : (col == 48) ? "0" : 0;
					else if (col >= 57 && col <= 59)
						addr_char <= (col == 57) ? "5" : (col == 58) ? "0" : (col == 59) ? "0" : 0;
					else
						addr_char <= 0;
				 end
			default: addr_char <= 0;
		endcase
	end

	reg pixel;	
	wire [7:0] rom_data;
	reg [11:0] addr_char;
	reg [11:0] addr_map;
	always @(posedge clk) begin
		if (rowCnt < 8) begin
			case (colCnt)
				//0:  addr_char <= addr + ((col) & 11'h3F); //addr + col;
				1:  addr_map  <= {addr_char[8:0], rowCnt[2:0]};
				2:  pixel <= (8'b10000000 & rom_data) > 0;
				3:  pixel <= (8'b01000000 & rom_data) > 0;
				4:  pixel <= (8'b00100000 & rom_data) > 0;
				5:  pixel <= (8'b00010000 & rom_data) > 0;
				6:  pixel <= (8'b00001000 & rom_data) > 0;
				7:  pixel <= (8'b00000100 & rom_data) > 0;
				8:  pixel <= (8'b00000010 & rom_data) > 0;
				9:  pixel <= (8'b00000001 & rom_data) > 0;
				default: pixel <= 0;
			endcase
		end
		else begin
			pixel <= 0;
		end
	end

	char_map char_map_inst(clk, addr_map, rom_data);
	
	assign color = (pixel == 1) ? COLOR_TEXT : COLOR_BKG;	
	
endmodule

