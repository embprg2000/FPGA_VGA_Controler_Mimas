//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:45 05/04/2015 
// Design Name: 
// Module Name:    char_map 
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
module char_map(clk, address, data);

input				clk;
input [10:0]	address;
output reg [7:0] 	data;

always @(posedge clk) begin
	
	case(address)
		// 20h: space
		11'h100: data <= 8'h00;
		11'h101: data <= 8'h00;
		11'h102: data <= 8'h00;
		11'h103: data <= 8'h00;
		11'h104: data <= 8'h00;
		11'h105: data <= 8'h00;
		11'h106: data <= 8'h00;
		11'h107: data <= 8'h00;
		// 21h: !
		11'h108: data <= 8'h10;
		11'h109: data <= 8'h10;
		11'h10A: data <= 8'h10;
		11'h10B: data <= 8'h10;
		11'h10C: data <= 8'h00;
		11'h10D: data <= 8'h00;
		11'h10E: data <= 8'h10;
		11'h10F: data <= 8'h00;
		// 22h: "
		11'h110: data <= 8'h28;
		11'h111: data <= 8'h28;
		11'h112: data <= 8'h28;
		11'h113: data <= 8'h00;
		11'h114: data <= 8'h00;
		11'h115: data <= 8'h00;
		11'h116: data <= 8'h00;
		11'h117: data <= 8'h00;
		// 23h: #
		11'h118: data <= 8'h28;
		11'h119: data <= 8'h28;
		11'h11A: data <= 8'h7C;
		11'h11B: data <= 8'h28;
		11'h11C: data <= 8'h7C;
		11'h11D: data <= 8'h28;
		11'h11E: data <= 8'h28;
		11'h11F: data <= 8'h00;
		// 24h: $
		11'h120: data <= 8'h10;
		11'h121: data <= 8'h3C;
		11'h122: data <= 8'h50;
		11'h123: data <= 8'h38;
		11'h124: data <= 8'h14;
		11'h125: data <= 8'h78;
		11'h126: data <= 8'h10;
		11'h127: data <= 8'h00;
		// 25h: %
		11'h128: data <= 8'h60;
		11'h129: data <= 8'h64;
		11'h12A: data <= 8'h08;
		11'h12B: data <= 8'h10;
		11'h12C: data <= 8'h20;
		11'h12D: data <= 8'h46;
		11'h12E: data <= 8'h06;
		11'h12F: data <= 8'h00;
		// 26h: &
		11'h130: data <= 8'h30;
		11'h131: data <= 8'h48;
		11'h132: data <= 8'h50;
		11'h133: data <= 8'h20;
		11'h134: data <= 8'h54;
		11'h135: data <= 8'h48;
		11'h136: data <= 8'h34;
		11'h137: data <= 8'h00;
		// 27h: '
		11'h138: data <= 8'h30;
		11'h139: data <= 8'h10;
		11'h13A: data <= 8'h20;
		11'h13B: data <= 8'h00;
		11'h13C: data <= 8'h00;
		11'h13D: data <= 8'h00;
		11'h13E: data <= 8'h00;
		11'h13F: data <= 8'h00;
		// 28h: (
		11'h140: data <= 8'h08;
		11'h141: data <= 8'h10;
		11'h142: data <= 8'h20;
		11'h143: data <= 8'h20;
		11'h144: data <= 8'h20;
		11'h145: data <= 8'h10;
		11'h146: data <= 8'h08;
		11'h147: data <= 8'h00;
		// 29h: )
		11'h148: data <= 8'h20;
		11'h149: data <= 8'h10;
		11'h14A: data <= 8'h08;
		11'h14B: data <= 8'h08;
		11'h14C: data <= 8'h08;
		11'h14D: data <= 8'h10;
		11'h14E: data <= 8'h20;
		11'h14F: data <= 8'h00;
		// 2Ah: *
		11'h150: data <= 8'h00;
		11'h151: data <= 8'h10;
		11'h152: data <= 8'h54;
		11'h153: data <= 8'h38;
		11'h154: data <= 8'h54;
		11'h155: data <= 8'h10;
		11'h156: data <= 8'h00;
		11'h157: data <= 8'h00;
		// 2Bh: +
		11'h158: data <= 8'h00;
		11'h159: data <= 8'h10;
		11'h15A: data <= 8'h10;
		11'h15B: data <= 8'h7C;
		11'h15C: data <= 8'h10;
		11'h15D: data <= 8'h10;
		11'h15E: data <= 8'h00;
		11'h15F: data <= 8'h00;
		// 2Ch: ,
		11'h160: data <= 8'h00;
		11'h161: data <= 8'h00;
		11'h162: data <= 8'h00;
		11'h163: data <= 8'h00;
		11'h164: data <= 8'h00;
		11'h165: data <= 8'h30;
		11'h166: data <= 8'h10;
		11'h167: data <= 8'h20;
		// 2Dh: -
		11'h168: data <= 8'h00;
		11'h169: data <= 8'h00;
		11'h16A: data <= 8'h00;
		11'h16B: data <= 8'h7C;
		11'h16C: data <= 8'h00;
		11'h16D: data <= 8'h00;
		11'h16E: data <= 8'h00;
		11'h16F: data <= 8'h00;
		// 2Eh: .
		11'h170: data <= 8'h00;
		11'h171: data <= 8'h00;
		11'h172: data <= 8'h00;
		11'h173: data <= 8'h00;
		11'h174: data <= 8'h00;
		11'h175: data <= 8'h30;
		11'h176: data <= 8'h30;
		11'h177: data <= 8'h00;
		// 2Fh: /
		11'h178: data <= 8'h00;
		11'h179: data <= 8'h04;
		11'h17A: data <= 8'h08;
		11'h17B: data <= 8'h10;
		11'h17C: data <= 8'h20;
		11'h17D: data <= 8'h40;
		11'h17E: data <= 8'h00;
		11'h17F: data <= 8'h00;
		// 30h: 0
		11'h180: data <= 8'h38;
		11'h181: data <= 8'h44;
		11'h182: data <= 8'h4C;
		11'h183: data <= 8'h54;
		11'h184: data <= 8'h64;
		11'h185: data <= 8'h44;
		11'h186: data <= 8'h38;
		11'h187: data <= 8'h00;
		// 31h: 1
		11'h188: data <= 8'h10;
		11'h189: data <= 8'h30;
		11'h18A: data <= 8'h10;
		11'h18B: data <= 8'h10;
		11'h18C: data <= 8'h10;
		11'h18D: data <= 8'h10;
		11'h18E: data <= 8'h38;
		11'h18F: data <= 8'h00;
		// 32h: 2
		11'h190: data <= 8'h38;
		11'h191: data <= 8'h44;
		11'h192: data <= 8'h04;
		11'h193: data <= 8'h08;
		11'h194: data <= 8'h10;
		11'h195: data <= 8'h20;
		11'h196: data <= 8'h7C;
		11'h197: data <= 8'h00;
		// 33h: 3
		11'h198: data <= 8'h7C;
		11'h199: data <= 8'h08;
		11'h19A: data <= 8'h10;
		11'h19B: data <= 8'h08;
		11'h19C: data <= 8'h04;
		11'h19D: data <= 8'h44;
		11'h19E: data <= 8'h38;
		11'h19F: data <= 8'h00;
		// 34h: 4
		11'h1A0: data <= 8'h08;
		11'h1A1: data <= 8'h18;
		11'h1A2: data <= 8'h28;
		11'h1A3: data <= 8'h48;
		11'h1A4: data <= 8'h7C;
		11'h1A5: data <= 8'h08;
		11'h1A6: data <= 8'h08;
		11'h1A7: data <= 8'h00;
		// 35h: 5
		11'h1A8: data <= 8'h7C;
		11'h1A9: data <= 8'h40;
		11'h1AA: data <= 8'h78;
		11'h1AB: data <= 8'h04;
		11'h1AC: data <= 8'h04;
		11'h1AD: data <= 8'h44;
		11'h1AE: data <= 8'h38;
		11'h1AF: data <= 8'h00;
		// 36h: 6
		11'h1B0: data <= 8'h18;
		11'h1B1: data <= 8'h20;
		11'h1B2: data <= 8'h40;
		11'h1B3: data <= 8'h78;
		11'h1B4: data <= 8'h44;
		11'h1B5: data <= 8'h44;
		11'h1B6: data <= 8'h38;
		11'h1B7: data <= 8'h00;
		// 37h: 7
		11'h1B8: data <= 8'h7C;
		11'h1B9: data <= 8'h04;
		11'h1BA: data <= 8'h08;
		11'h1BB: data <= 8'h10;
		11'h1BC: data <= 8'h20;
		11'h1BD: data <= 8'h20;
		11'h1BE: data <= 8'h20;
		11'h1BF: data <= 8'h00;
		// 38h: 8
		11'h1C0: data <= 8'h38;
		11'h1C1: data <= 8'h44;
		11'h1C2: data <= 8'h44;
		11'h1C3: data <= 8'h38;
		11'h1C4: data <= 8'h44;
		11'h1C5: data <= 8'h44;
		11'h1C6: data <= 8'h38;
		11'h1C7: data <= 8'h00;
		// 39h: 9
		11'h1C8: data <= 8'h38;
		11'h1C9: data <= 8'h44;
		11'h1CA: data <= 8'h44;
		11'h1CB: data <= 8'h3C;
		11'h1CC: data <= 8'h04;
		11'h1CD: data <= 8'h08;
		11'h1CE: data <= 8'h30;
		11'h1CF: data <= 8'h00;
		// 3Ah: :
		11'h1D0: data <= 8'h00;
		11'h1D1: data <= 8'h30;
		11'h1D2: data <= 8'h30;
		11'h1D3: data <= 8'h00;
		11'h1D4: data <= 8'h00;
		11'h1D5: data <= 8'h30;
		11'h1D6: data <= 8'h30;
		11'h1D7: data <= 8'h00;
		// 3Bh: ;
		11'h1D8: data <= 8'h00;
		11'h1D9: data <= 8'h30;
		11'h1DA: data <= 8'h30;
		11'h1DB: data <= 8'h00;
		11'h1DC: data <= 8'h00;
		11'h1DD: data <= 8'h30;
		11'h1DE: data <= 8'h10;
		11'h1DF: data <= 8'h20;
		// 3Ch: <
		11'h1E0: data <= 8'h08;
		11'h1E1: data <= 8'h10;
		11'h1E2: data <= 8'h20;
		11'h1E3: data <= 8'h40;
		11'h1E4: data <= 8'h20;
		11'h1E5: data <= 8'h10;
		11'h1E6: data <= 8'h08;
		11'h1E7: data <= 8'h00;
		// 3Dh: =
		11'h1E8: data <= 8'h00;
		11'h1E9: data <= 8'h00;
		11'h1EA: data <= 8'h7C;
		11'h1EB: data <= 8'h00;
		11'h1EC: data <= 8'h7C;
		11'h1ED: data <= 8'h00;
		11'h1EE: data <= 8'h00;
		11'h1EF: data <= 8'h00;
		// 3Eh: >
		11'h1F0: data <= 8'h20;
		11'h1F1: data <= 8'h10;
		11'h1F2: data <= 8'h08;
		11'h1F3: data <= 8'h04;
		11'h1F4: data <= 8'h08;
		11'h1F5: data <= 8'h10;
		11'h1F6: data <= 8'h20;
		11'h1F7: data <= 8'h00;
		// 3Fh: ?
		11'h1F8: data <= 8'h38;
		11'h1F9: data <= 8'h44;
		11'h1FA: data <= 8'h04;
		11'h1FB: data <= 8'h08;
		11'h1FC: data <= 8'h10;
		11'h1FD: data <= 8'h00;
		11'h1FE: data <= 8'h10;
		11'h1FF: data <= 8'h00;
		// 40h: @
		11'h200: data <= 8'h38;
		11'h201: data <= 8'h44;
		11'h202: data <= 8'h04;
		11'h203: data <= 8'h34;
		11'h204: data <= 8'h54;
		11'h205: data <= 8'h54;
		11'h206: data <= 8'h38;
		11'h207: data <= 8'h00;
		// 41h: A
		11'h208: data <= 8'h38;
		11'h209: data <= 8'h44;
		11'h20A: data <= 8'h44;
		11'h20B: data <= 8'h44;
		11'h20C: data <= 8'h7C;
		11'h20D: data <= 8'h44;
		11'h20E: data <= 8'h44;
		11'h20F: data <= 8'h00;
		// 42h: B
		11'h210: data <= 8'h78;
		11'h211: data <= 8'h44;
		11'h212: data <= 8'h44;
		11'h213: data <= 8'h78;
		11'h214: data <= 8'h44;
		11'h215: data <= 8'h44;
		11'h216: data <= 8'h78;
		11'h217: data <= 8'h00;
		// 43h: C
		11'h218: data <= 8'h38;
		11'h219: data <= 8'h44;
		11'h21A: data <= 8'h40;
		11'h21B: data <= 8'h40;
		11'h21C: data <= 8'h40;
		11'h21D: data <= 8'h44;
		11'h21E: data <= 8'h38;
		11'h21F: data <= 8'h00;
		// 44h: D
		11'h220: data <= 8'h70;
		11'h221: data <= 8'h48;
		11'h222: data <= 8'h44;
		11'h223: data <= 8'h44;
		11'h224: data <= 8'h44;
		11'h225: data <= 8'h48;
		11'h226: data <= 8'h70;
		11'h227: data <= 8'h00;
		// 45h: E
		11'h228: data <= 8'h7C;
		11'h229: data <= 8'h40;
		11'h22A: data <= 8'h40;
		11'h22B: data <= 8'h78;
		11'h22C: data <= 8'h40;
		11'h22D: data <= 8'h40;
		11'h22E: data <= 8'h7C;
		11'h22F: data <= 8'h00;
		// 46h: F
		11'h230: data <= 8'h7C;
		11'h231: data <= 8'h40;
		11'h232: data <= 8'h40;
		11'h233: data <= 8'h78;
		11'h234: data <= 8'h40;
		11'h235: data <= 8'h40;
		11'h236: data <= 8'h40;
		11'h237: data <= 8'h00;
		// 47h: G
		11'h238: data <= 8'h38;
		11'h239: data <= 8'h44;
		11'h23A: data <= 8'h40;
		11'h23B: data <= 8'h5C;
		11'h23C: data <= 8'h44;
		11'h23D: data <= 8'h44;
		11'h23E: data <= 8'h3C;
		11'h23F: data <= 8'h00;
		// 48h: H
		11'h240: data <= 8'h44;
		11'h241: data <= 8'h44;
		11'h242: data <= 8'h44;
		11'h243: data <= 8'h7C;
		11'h244: data <= 8'h44;
		11'h245: data <= 8'h44;
		11'h246: data <= 8'h44;
		11'h247: data <= 8'h00;
		// 49h: I
		11'h248: data <= 8'h38;
		11'h249: data <= 8'h10;
		11'h24A: data <= 8'h10;
		11'h24B: data <= 8'h10;
		11'h24C: data <= 8'h10;
		11'h24D: data <= 8'h10;
		11'h24E: data <= 8'h38;
		11'h24F: data <= 8'h00;
		// 4Ah: J
		11'h250: data <= 8'h1C;
		11'h251: data <= 8'h08;
		11'h252: data <= 8'h08;
		11'h253: data <= 8'h08;
		11'h254: data <= 8'h08;
		11'h255: data <= 8'h48;
		11'h256: data <= 8'h30;
		11'h257: data <= 8'h00;
		// 4Bh: K
		11'h258: data <= 8'h44;
		11'h259: data <= 8'h48;
		11'h25A: data <= 8'h50;
		11'h25B: data <= 8'h60;
		11'h25C: data <= 8'h50;
		11'h25D: data <= 8'h48;
		11'h25E: data <= 8'h44;
		11'h25F: data <= 8'h00;
		// 4Ch: L
		11'h260: data <= 8'h40;
		11'h261: data <= 8'h40;
		11'h262: data <= 8'h40;
		11'h263: data <= 8'h40;
		11'h264: data <= 8'h40;
		11'h265: data <= 8'h40;
		11'h266: data <= 8'h7C;
		11'h267: data <= 8'h00;
		// 4Dh: M
		11'h268: data <= 8'h44;
		11'h269: data <= 8'h6C;
		11'h26A: data <= 8'h54;
		11'h26B: data <= 8'h54;
		11'h26C: data <= 8'h44;
		11'h26D: data <= 8'h44;
		11'h26E: data <= 8'h44;
		11'h26F: data <= 8'h00;
		// 4Eh: N
		11'h270: data <= 8'h44;
		11'h271: data <= 8'h44;
		11'h272: data <= 8'h64;
		11'h273: data <= 8'h54;
		11'h274: data <= 8'h4C;
		11'h275: data <= 8'h44;
		11'h276: data <= 8'h44;
		11'h277: data <= 8'h00;
		// 4Fh: O
		11'h278: data <= 8'h38;
		11'h279: data <= 8'h44;
		11'h27A: data <= 8'h44;
		11'h27B: data <= 8'h44;
		11'h27C: data <= 8'h44;
		11'h27D: data <= 8'h44;
		11'h27E: data <= 8'h38;
		11'h27F: data <= 8'h00;
		// 50h: P
		11'h280: data <= 8'h78;
		11'h281: data <= 8'h44;
		11'h282: data <= 8'h44;
		11'h283: data <= 8'h78;
		11'h284: data <= 8'h40;
		11'h285: data <= 8'h40;
		11'h286: data <= 8'h40;
		11'h287: data <= 8'h00;
		// 51h: Q
		11'h288: data <= 8'h38;
		11'h289: data <= 8'h44;
		11'h28A: data <= 8'h44;
		11'h28B: data <= 8'h44;
		11'h28C: data <= 8'h54;
		11'h28D: data <= 8'h48;
		11'h28E: data <= 8'h34;
		11'h28F: data <= 8'h00;
		// 52h: R
		11'h290: data <= 8'h78;
		11'h291: data <= 8'h44;
		11'h292: data <= 8'h44;
		11'h293: data <= 8'h78;
		11'h294: data <= 8'h50;
		11'h295: data <= 8'h48;
		11'h296: data <= 8'h44;
		11'h297: data <= 8'h00;
		// 53h: S
		11'h298: data <= 8'h3C;
		11'h299: data <= 8'h40;
		11'h29A: data <= 8'h40;
		11'h29B: data <= 8'h38;
		11'h29C: data <= 8'h04;
		11'h29D: data <= 8'h04;
		11'h29E: data <= 8'h78;
		11'h29F: data <= 8'h00;
		// 54h: T
		11'h2A0: data <= 8'h7C;
		11'h2A1: data <= 8'h10;
		11'h2A2: data <= 8'h10;
		11'h2A3: data <= 8'h10;
		11'h2A4: data <= 8'h10;
		11'h2A5: data <= 8'h10;
		11'h2A6: data <= 8'h10;
		11'h2A7: data <= 8'h00;
		// 55h: U
		11'h2A8: data <= 8'h44;
		11'h2A9: data <= 8'h44;
		11'h2AA: data <= 8'h44;
		11'h2AB: data <= 8'h44;
		11'h2AC: data <= 8'h44;
		11'h2AD: data <= 8'h44;
		11'h2AE: data <= 8'h38;
		11'h2AF: data <= 8'h00;
		// 56h: V
		11'h2B0: data <= 8'h44;
		11'h2B1: data <= 8'h44;
		11'h2B2: data <= 8'h44;
		11'h2B3: data <= 8'h44;
		11'h2B4: data <= 8'h44;
		11'h2B5: data <= 8'h28;
		11'h2B6: data <= 8'h10;
		11'h2B7: data <= 8'h00;
		// 57h: W
		11'h2B8: data <= 8'h44;
		11'h2B9: data <= 8'h44;
		11'h2BA: data <= 8'h44;
		11'h2BB: data <= 8'h54;
		11'h2BC: data <= 8'h54;
		11'h2BD: data <= 8'h54;
		11'h2BE: data <= 8'h28;
		11'h2BF: data <= 8'h00;
		// 58h: X
		11'h2C0: data <= 8'h44;
		11'h2C1: data <= 8'h44;
		11'h2C2: data <= 8'h28;
		11'h2C3: data <= 8'h10;
		11'h2C4: data <= 8'h28;
		11'h2C5: data <= 8'h44;
		11'h2C6: data <= 8'h44;
		11'h2C7: data <= 8'h00;
		// 59h: Y
		11'h2C8: data <= 8'h44;
		11'h2C9: data <= 8'h44;
		11'h2CA: data <= 8'h44;
		11'h2CB: data <= 8'h28;
		11'h2CC: data <= 8'h10;
		11'h2CD: data <= 8'h10;
		11'h2CE: data <= 8'h10;
		11'h2CF: data <= 8'h00;
		// 5Ah: Z
		11'h2D0: data <= 8'h7C;
		11'h2D1: data <= 8'h04;
		11'h2D2: data <= 8'h08;
		11'h2D3: data <= 8'h10;
		11'h2D4: data <= 8'h20;
		11'h2D5: data <= 8'h40;
		11'h2D6: data <= 8'h7C;
		11'h2D7: data <= 8'h00;
		// 5Bh: [
		11'h2D8: data <= 8'h38;
		11'h2D9: data <= 8'h20;
		11'h2DA: data <= 8'h20;
		11'h2DB: data <= 8'h20;
		11'h2DC: data <= 8'h20;
		11'h2DD: data <= 8'h20;
		11'h2DE: data <= 8'h38;
		11'h2DF: data <= 8'h00;
		// 5Ch: \
		11'h2E0: data <= 8'h00;
		11'h2E1: data <= 8'h40;
		11'h2E2: data <= 8'h20;
		11'h2E3: data <= 8'h10;
		11'h2E4: data <= 8'h08;
		11'h2E5: data <= 8'h04;
		11'h2E6: data <= 8'h00;
		11'h2E7: data <= 8'h00;
		// 5Dh: ]
		11'h2E8: data <= 8'h38;
		11'h2E9: data <= 8'h08;
		11'h2EA: data <= 8'h08;
		11'h2EB: data <= 8'h08;
		11'h2EC: data <= 8'h08;
		11'h2ED: data <= 8'h08;
		11'h2EE: data <= 8'h38;
		11'h2EF: data <= 8'h00;
		// 5Eh: ^
		11'h2F0: data <= 8'h10;
		11'h2F1: data <= 8'h28;
		11'h2F2: data <= 8'h44;
		11'h2F3: data <= 8'h00;
		11'h2F4: data <= 8'h00;
		11'h2F5: data <= 8'h00;
		11'h2F6: data <= 8'h00;
		11'h2F7: data <= 8'h00;
		// 5Fh: _
		11'h2F8: data <= 8'h00;
		11'h2F9: data <= 8'h00;
		11'h2FA: data <= 8'h00;
		11'h2FB: data <= 8'h00;
		11'h2FC: data <= 8'h00;
		11'h2FD: data <= 8'h00;
		11'h2FE: data <= 8'h7C;
		11'h2FF: data <= 8'h00;
		// 60h: `
		11'h300: data <= 8'h20;
		11'h301: data <= 8'h10;
		11'h302: data <= 8'h08;
		11'h303: data <= 8'h00;
		11'h304: data <= 8'h00;
		11'h305: data <= 8'h00;
		11'h306: data <= 8'h00;
		11'h307: data <= 8'h00;
		// 61h: a
		11'h308: data <= 8'h00;
		11'h309: data <= 8'h00;
		11'h30A: data <= 8'h38;
		11'h30B: data <= 8'h04;
		11'h30C: data <= 8'h3C;
		11'h30D: data <= 8'h44;
		11'h30E: data <= 8'h3C;
		11'h30F: data <= 8'h00;
		// 62h: b
		11'h310: data <= 8'h40;
		11'h311: data <= 8'h40;
		11'h312: data <= 8'h58;
		11'h313: data <= 8'h64;
		11'h314: data <= 8'h44;
		11'h315: data <= 8'h44;
		11'h316: data <= 8'h78;
		11'h317: data <= 8'h00;
		// 63h: c
		11'h318: data <= 8'h00;
		11'h319: data <= 8'h00;
		11'h31A: data <= 8'h38;
		11'h31B: data <= 8'h40;
		11'h31C: data <= 8'h40;
		11'h31D: data <= 8'h44;
		11'h31E: data <= 8'h38;
		11'h31F: data <= 8'h00;
		// 64h: d
		11'h320: data <= 8'h04;
		11'h321: data <= 8'h04;
		11'h322: data <= 8'h34;
		11'h323: data <= 8'h4C;
		11'h324: data <= 8'h44;
		11'h325: data <= 8'h44;
		11'h326: data <= 8'h3C;
		11'h327: data <= 8'h00;
		// 65h: e
		11'h328: data <= 8'h00;
		11'h329: data <= 8'h00;
		11'h32A: data <= 8'h38;
		11'h32B: data <= 8'h44;
		11'h32C: data <= 8'h7C;
		11'h32D: data <= 8'h40;
		11'h32E: data <= 8'h38;
		11'h32F: data <= 8'h00;
		// 66h: f
		11'h330: data <= 8'h18;
		11'h331: data <= 8'h24;
		11'h332: data <= 8'h20;
		11'h333: data <= 8'h70;
		11'h334: data <= 8'h20;
		11'h335: data <= 8'h20;
		11'h336: data <= 8'h20;
		11'h337: data <= 8'h00;
		// 67h: g
		11'h338: data <= 8'h00;
		11'h339: data <= 8'h00;
		11'h33A: data <= 8'h3C;
		11'h33B: data <= 8'h44;
		11'h33C: data <= 8'h44;
		11'h33D: data <= 8'h3C;
		11'h33E: data <= 8'h04;
		11'h33F: data <= 8'h38;
		// 68h: h
		11'h340: data <= 8'h40;
		11'h341: data <= 8'h40;
		11'h342: data <= 8'h58;
		11'h343: data <= 8'h64;
		11'h344: data <= 8'h44;
		11'h345: data <= 8'h44;
		11'h346: data <= 8'h44;
		11'h347: data <= 8'h00;
		// 69h: i
		11'h348: data <= 8'h10;
		11'h349: data <= 8'h10;
		11'h34A: data <= 8'h30;
		11'h34B: data <= 8'h10;
		11'h34C: data <= 8'h10;
		11'h34D: data <= 8'h10;
		11'h34E: data <= 8'h38;
		11'h34F: data <= 8'h00;
		// 6Ah: j
		11'h350: data <= 8'h00;
		11'h351: data <= 8'h08;
		11'h352: data <= 8'h00;
		11'h353: data <= 8'h18;
		11'h354: data <= 8'h08;
		11'h355: data <= 8'h08;
		11'h356: data <= 8'h48;
		11'h357: data <= 8'h30;
		// 6Bh: k
		11'h358: data <= 8'h40;
		11'h359: data <= 8'h40;
		11'h35A: data <= 8'h48;
		11'h35B: data <= 8'h50;
		11'h35C: data <= 8'h60;
		11'h35D: data <= 8'h50;
		11'h35E: data <= 8'h48;
		11'h35F: data <= 8'h00;
		// 6Ch: l
		11'h360: data <= 8'h30;
		11'h361: data <= 8'h10;
		11'h362: data <= 8'h10;
		11'h363: data <= 8'h10;
		11'h364: data <= 8'h10;
		11'h365: data <= 8'h10;
		11'h366: data <= 8'h38;
		11'h367: data <= 8'h00;
		// 6Dh: m
		11'h368: data <= 8'h00;
		11'h369: data <= 8'h00;
		11'h36A: data <= 8'h68;
		11'h36B: data <= 8'h54;
		11'h36C: data <= 8'h54;
		11'h36D: data <= 8'h44;
		11'h36E: data <= 8'h44;
		11'h36F: data <= 8'h00;
		// 6Eh: n
		11'h370: data <= 8'h00;
		11'h371: data <= 8'h00;
		11'h372: data <= 8'h58;
		11'h373: data <= 8'h64;
		11'h374: data <= 8'h44;
		11'h375: data <= 8'h44;
		11'h376: data <= 8'h44;
		11'h377: data <= 8'h00;
		// 6Fh: o
		11'h378: data <= 8'h00;
		11'h379: data <= 8'h00;
		11'h37A: data <= 8'h38;
		11'h37B: data <= 8'h44;
		11'h37C: data <= 8'h44;
		11'h37D: data <= 8'h44;
		11'h37E: data <= 8'h38;
		11'h37F: data <= 8'h00;
		// 70h: p
		11'h380: data <= 8'h00;
		11'h381: data <= 8'h00;
		11'h382: data <= 8'h78;
		11'h383: data <= 8'h44;
		11'h384: data <= 8'h78;
		11'h385: data <= 8'h40;
		11'h386: data <= 8'h40;
		11'h387: data <= 8'h40;
		// 71h: q
		11'h388: data <= 8'h00;
		11'h389: data <= 8'h00;
		11'h38A: data <= 8'h00;
		11'h38B: data <= 8'h34;
		11'h38C: data <= 8'h4C;
		11'h38D: data <= 8'h3C;
		11'h38E: data <= 8'h04;
		11'h38F: data <= 8'h04;
		// 72h: r
		11'h390: data <= 8'h00;
		11'h391: data <= 8'h00;
		11'h392: data <= 8'h58;
		11'h393: data <= 8'h64;
		11'h394: data <= 8'h40;
		11'h395: data <= 8'h40;
		11'h396: data <= 8'h40;
		11'h397: data <= 8'h00;
		// 73h: s
		11'h398: data <= 8'h00;
		11'h399: data <= 8'h00;
		11'h39A: data <= 8'h38;
		11'h39B: data <= 8'h40;
		11'h39C: data <= 8'h38;
		11'h39D: data <= 8'h04;
		11'h39E: data <= 8'h78;
		11'h39F: data <= 8'h00;
		// 74h: t
		11'h3A0: data <= 8'h00;
		11'h3A1: data <= 8'h20;
		11'h3A2: data <= 8'h20;
		11'h3A3: data <= 8'h70;
		11'h3A4: data <= 8'h20;
		11'h3A5: data <= 8'h20;
		11'h3A6: data <= 8'h24;
		11'h3A7: data <= 8'h18;
		// 75h: u
		11'h3A8: data <= 8'h00;
		11'h3A9: data <= 8'h00;
		11'h3AA: data <= 8'h44;
		11'h3AB: data <= 8'h44;
		11'h3AC: data <= 8'h44;
		11'h3AD: data <= 8'h4C;
		11'h3AE: data <= 8'h34;
		11'h3AF: data <= 8'h00;
		// 76h: v
		11'h3B0: data <= 8'h00;
		11'h3B1: data <= 8'h00;
		11'h3B2: data <= 8'h44;
		11'h3B3: data <= 8'h44;
		11'h3B4: data <= 8'h44;
		11'h3B5: data <= 8'h28;
		11'h3B6: data <= 8'h10;
		11'h3B7: data <= 8'h00;
		// 77h: w
		11'h3B8: data <= 8'h00;
		11'h3B9: data <= 8'h00;
		11'h3BA: data <= 8'h44;
		11'h3BB: data <= 8'h44;
		11'h3BC: data <= 8'h54;
		11'h3BD: data <= 8'h54;
		11'h3BE: data <= 8'h28;
		11'h3BF: data <= 8'h00;
		// 78h: x
		11'h3C0: data <= 8'h00;
		11'h3C1: data <= 8'h00;
		11'h3C2: data <= 8'h44;
		11'h3C3: data <= 8'h28;
		11'h3C4: data <= 8'h10;
		11'h3C5: data <= 8'h28;
		11'h3C6: data <= 8'h44;
		11'h3C7: data <= 8'h00;
		// 79h: y
		11'h3C8: data <= 8'h00;
		11'h3C9: data <= 8'h00;
		11'h3CA: data <= 8'h00;
		11'h3CB: data <= 8'h44;
		11'h3CC: data <= 8'h44;
		11'h3CD: data <= 8'h3C;
		11'h3CE: data <= 8'h04;
		11'h3CF: data <= 8'h38;
		// 7Ah: z
		11'h3D0: data <= 8'h00;
		11'h3D1: data <= 8'h00;
		11'h3D2: data <= 8'h7C;
		11'h3D3: data <= 8'h08;
		11'h3D4: data <= 8'h10;
		11'h3D5: data <= 8'h20;
		11'h3D6: data <= 8'h7C;
		11'h3D7: data <= 8'h00;
		// 7Bh: {
		11'h3D8: data <= 8'h08;
		11'h3D9: data <= 8'h10;
		11'h3DA: data <= 8'h10;
		11'h3DB: data <= 8'h20;
		11'h3DC: data <= 8'h10;
		11'h3DD: data <= 8'h10;
		11'h3DE: data <= 8'h08;
		11'h3DF: data <= 8'h00;
		// 7Ch: |
		11'h3E0: data <= 8'h10;
		11'h3E1: data <= 8'h10;
		11'h3E2: data <= 8'h10;
		11'h3E3: data <= 8'h10;
		11'h3E4: data <= 8'h10;
		11'h3E5: data <= 8'h10;
		11'h3E6: data <= 8'h10;
		11'h3E7: data <= 8'h00;
		// 7Dh: }
		11'h3E8: data <= 8'h20;
		11'h3E9: data <= 8'h10;
		11'h3EA: data <= 8'h10;
		11'h3EB: data <= 8'h08;
		11'h3EC: data <= 8'h10;
		11'h3ED: data <= 8'h10;
		11'h3EE: data <= 8'h20;
		11'h3EF: data <= 8'h00;
		// 7Eh: ~
		11'h3F0: data <= 8'h00;
		11'h3F1: data <= 8'h00;
		11'h3F2: data <= 8'h60;
		11'h3F3: data <= 8'h92;
		11'h3F4: data <= 8'h0C;
		11'h3F5: data <= 8'h00;
		11'h3F6: data <= 8'h00;
		11'h3F7: data <= 8'h00;
		// 7Fh: hash pattern
		11'h3F8: data <= 8'h55;
		11'h3F9: data <= 8'hAA;
		11'h3FA: data <= 8'h55;
		11'h3FB: data <= 8'hAA;
		11'h3FC: data <= 8'h55;
		11'h3FD: data <= 8'hAA;
		11'h3FE: data <= 8'h55;
		11'h3FF: data <= 8'hAA;
		default: data <= 8'h00;
	endcase                              
end

endmodule //CHAR_GEN_ROM


