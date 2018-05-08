`timescale 1ns / 1ps

module display(  
        input [0:15] i_data,
        input [0:31] i_count,
        input logic i_refresh_display,
        input clk,
        input clr,
        output reg [6:0] a_to_g,
        output reg [3:0] an,
        output wire dp
);
          
    logic [1:0]     s;     
    logic [3:0]     digit;
    logic [3:0]     aen;
    logic [19:0]    clkdiv;
    logic [0:15]    r_data;
    logic [0:15]    r_display_data;
    logic [0:15]    w_display_data;
    logic [0:31]    count;
    logic           r_refresh_display;
    logic           w_refresh_display;

    assign dp = 1; 
    assign aen = 4'b1111; // all turned off initially
    
    always_ff @(posedge clk)
    begin
        r_data <= i_data;
        r_display_data <= w_display_data;
        count <= i_count;
        r_refresh_display <= i_refresh_display;
    end
    
    always_comb
    begin
        if (r_refresh_display == 1)
            w_display_data = r_data;
        else
            w_display_data = r_display_data;

        case(s)
            0:digit = w_display_data[0:3]; // s is 00 -->0 ;  digit gets assigned 4 bit value assigned to x[3:0]
            1:digit = w_display_data[4:7]; // s is 01 -->1 ;  digit gets assigned 4 bit value assigned to x[7:4]
            2:digit = w_display_data[8:11]; // s is 10 -->2 ;  digit gets assigned 4 bit value assigned to x[11:8
            3:digit = w_display_data[12:15]; // s is 11 -->3 ;  digit gets assigned 4 bit value assigned to x[15:12]
            default:digit = w_display_data[0:3];
        endcase

        case(digit)
            //Order of bits for 7 segment display gfedcba
            1'h0:a_to_g = 7'b1000000; 
            1'h1:a_to_g = 7'b1111001; 
            1'h2:a_to_g = 7'b0100100; 
            1'h3:a_to_g = 7'b0110000; 
            1'h4:a_to_g = 7'b0011001; 
            1'h5:a_to_g = 7'b0010010; 
            1'h6:a_to_g = 7'b0000010; 
            1'h7:a_to_g = 7'b1111000; 
            1'h8:a_to_g = 7'b0000000; 
            1'h9:a_to_g = 7'b0010000; 
            1'hA:a_to_g = 7'b0001000; 
            1'hB:a_to_g = 7'b0000011; 
            1'hC:a_to_g = 7'b0100111;
            1'hD:a_to_g = 7'b0100001;
            1'hE:a_to_g = 7'b0000110;
            1'hF:a_to_g = 7'b0001110;
            default: a_to_g = 7'b0000000;
        endcase

        s = clkdiv[19:18];
        an=4'b1111;
        if(aen[s] == 1)
            an[s] = 0;
    end

    always @(posedge clk or posedge clr)
    begin
        if ( clr == 1)
            clkdiv <= 0;
        else
            clkdiv <= clkdiv+1;
    end
endmodule
