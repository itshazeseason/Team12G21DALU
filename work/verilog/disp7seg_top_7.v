/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module disp7seg_top_7 (
    input clk,
    input rst,
    input [4:0] dispmode,
    input [15:0] data16,
    output reg [6:0] seg,
    output reg [3:0] sel
  );
  
  
  
  localparam SEGC_A = 5'h0a;
  
  localparam SEGC_B_ = 5'h0b;
  
  localparam SEGC_C = 5'h0c;
  
  localparam SEGC_D_ = 5'h0d;
  
  localparam SEGC_E = 5'h0e;
  
  localparam SEGC_F = 5'h0f;
  
  localparam SEGC_O = 5'h00;
  
  localparam SEGC_I = 5'h01;
  
  localparam SEGC_S = 5'h05;
  
  localparam SEGC_BK = 5'h10;
  
  localparam SEGC_O_ = 5'h11;
  
  localparam SEGC_C_ = 5'h12;
  
  localparam SEGC_U_ = 5'h13;
  
  localparam SEGC_N_ = 5'h14;
  
  localparam SEGC_R_ = 5'h15;
  
  localparam SEGC_Q_ = 5'h16;
  
  localparam SEGC_P = 5'h18;
  
  localparam SEGC_X = 5'h19;
  
  localparam SEGC_L = 5'h1a;
  
  localparam SEGC_H_ = 5'h1b;
  
  localparam SEGC_Y_ = 5'h1c;
  
  localparam SEGC_T_ = 5'h1d;
  
  localparam SEGC_A_ = 5'h1e;
  
  localparam SEGC__ = 5'h1f;
  
  wire [7-1:0] M_disp7seg_seg;
  wire [4-1:0] M_disp7seg_sel;
  reg [20-1:0] M_disp7seg_digits;
  disp7seg_15 disp7seg (
    .clk(clk),
    .rst(rst),
    .digits(M_disp7seg_digits),
    .seg(M_disp7seg_seg),
    .sel(M_disp7seg_sel)
  );
  
  always @* begin
    M_disp7seg_digits = 20'h84210;
    seg = M_disp7seg_seg;
    sel = M_disp7seg_sel;
    
    case (dispmode)
      1'h0: begin
        M_disp7seg_digits = 20'h535b0;
      end
      1'h1: begin
        M_disp7seg_digits = 20'h2cd70;
      end
      2'h2: begin
        M_disp7seg_digits = 20'hf6570;
      end
      2'h3: begin
        M_disp7seg_digits = 20'h551b0;
      end
      3'h4: begin
        M_disp7seg_digits = 20'h05610;
      end
      3'h5: begin
        M_disp7seg_digits = 20'hcc6b0;
      end
      3'h6: begin
        M_disp7seg_digits = 20'hfabf0;
      end
      3'h7: begin
        M_disp7seg_digits = 20'hfaff0;
      end
      4'h8: begin
        M_disp7seg_digits = 20'h5cbd0;
      end
      4'h9: begin
        M_disp7seg_digits = 20'hf4970;
      end
      4'ha: begin
        M_disp7seg_digits = 20'h2ef50;
      end
      4'hb: begin
        M_disp7seg_digits = 20'h2eeb0;
      end
      4'hc: begin
        M_disp7seg_digits = 20'h2d550;
      end
      4'hd: begin
        M_disp7seg_digits = 20'hac750;
      end
      4'he: begin
        M_disp7seg_digits = 20'hac6b0;
      end
      4'hf: begin
        M_disp7seg_digits = 20'haaa10;
      end
      5'h10: begin
        M_disp7seg_digits = 20'h63ad0;
      end
      5'h11: begin
        M_disp7seg_digits = 20'h66bb0;
      end
      5'h12: begin
        M_disp7seg_digits = 20'h669d0;
      end
      5'h1b: begin
        M_disp7seg_digits = 20'h756b0;
      end
      5'h1c: begin
        M_disp7seg_digits = 20'hc28a5;
      end
      5'h1d: begin
        M_disp7seg_digits = 20'h7a83a;
      end
      5'h1e: begin
        M_disp7seg_digits = 20'hab790;
      end
      5'h1f: begin
        M_disp7seg_digits = {{1'h0, data16[12+3-:4]}, {1'h0, data16[8+3-:4]}, {1'h0, data16[4+3-:4]}, {1'h0, data16[0+3-:4]}};
      end
      default: begin
        M_disp7seg_digits = 20'h84210;
      end
    endcase
  end
endmodule