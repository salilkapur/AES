module display_latch(
    clk,
    i_data,
    i_refresh_display,
    o_display_data
);

    input logic         clk;
    input logic [0:15]  i_data;
    input logic         i_refresh_display;
    
    output logic [0:15] o_display_data;
    
    logic [0:15]    r_display_data;
    logic [0:15]    r_data;
    logic           r_refresh_display;

    logic           w_refresh_display;
    logic [0:15]    w_display_data;
    logic [0:15]    w_data;
    
    always_ff @(posedge clk)
    begin
        r_data              <= i_data;
        r_refresh_display   <= i_refresh_display;
        r_display_data      <= w_display_data;
    end

    always_comb
    begin
        if (r_refresh_display == 1'b1)
            w_display_data = r_data;
        else
            w_display_data = r_display_data;

        o_display_data = w_display_data;
    end

endmodule
