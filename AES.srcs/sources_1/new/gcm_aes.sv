`timescale 1ns / 1ps

package globals;
    const bit [0:7] SBOX [256] = {
        8'h63, 8'h7c, 8'h77, 8'h7b, 8'hf2, 8'h6b, 8'h6f, 8'hc5, 8'h30, 8'h01, 8'h67, 8'h2b, 8'hfe, 8'hd7, 8'hab, 8'h76,
        8'hca, 8'h82, 8'hc9, 8'h7d, 8'hfa, 8'h59, 8'h47, 8'hf0, 8'had, 8'hd4, 8'ha2, 8'haf, 8'h9c, 8'ha4, 8'h72, 8'hc0,
        8'hb7, 8'hfd, 8'h93, 8'h26, 8'h36, 8'h3f, 8'hf7, 8'hcc, 8'h34, 8'ha5, 8'he5, 8'hf1, 8'h71, 8'hd8, 8'h31, 8'h15,
        8'h04, 8'hc7, 8'h23, 8'hc3, 8'h18, 8'h96, 8'h05, 8'h9a, 8'h07, 8'h12, 8'h80, 8'he2, 8'heb, 8'h27, 8'hb2, 8'h75,
        8'h09, 8'h83, 8'h2c, 8'h1a, 8'h1b, 8'h6e, 8'h5a, 8'ha0, 8'h52, 8'h3b, 8'hd6, 8'hb3, 8'h29, 8'he3, 8'h2f, 8'h84,
        8'h53, 8'hd1, 8'h00, 8'hed, 8'h20, 8'hfc, 8'hb1, 8'h5b, 8'h6a, 8'hcb, 8'hbe, 8'h39, 8'h4a, 8'h4c, 8'h58, 8'hcf,
        8'hd0, 8'hef, 8'haa, 8'hfb, 8'h43, 8'h4d, 8'h33, 8'h85, 8'h45, 8'hf9, 8'h02, 8'h7f, 8'h50, 8'h3c, 8'h9f, 8'ha8,
        8'h51, 8'ha3, 8'h40, 8'h8f, 8'h92, 8'h9d, 8'h38, 8'hf5, 8'hbc, 8'hb6, 8'hda, 8'h21, 8'h10, 8'hff, 8'hf3, 8'hd2,
        8'hcd, 8'h0c, 8'h13, 8'hec, 8'h5f, 8'h97, 8'h44, 8'h17, 8'hc4, 8'ha7, 8'h7e, 8'h3d, 8'h64, 8'h5d, 8'h19, 8'h73,
        8'h60, 8'h81, 8'h4f, 8'hdc, 8'h22, 8'h2a, 8'h90, 8'h88, 8'h46, 8'hee, 8'hb8, 8'h14, 8'hde, 8'h5e, 8'h0b, 8'hdb,
        8'he0, 8'h32, 8'h3a, 8'h0a, 8'h49, 8'h06, 8'h24, 8'h5c, 8'hc2, 8'hd3, 8'hac, 8'h62, 8'h91, 8'h95, 8'he4, 8'h79,
        8'he7, 8'hc8, 8'h37, 8'h6d, 8'h8d, 8'hd5, 8'h4e, 8'ha9, 8'h6c, 8'h56, 8'hf4, 8'hea, 8'h65, 8'h7a, 8'hae, 8'h08,
        8'hba, 8'h78, 8'h25, 8'h2e, 8'h1c, 8'ha6, 8'hb4, 8'hc6, 8'he8, 8'hdd, 8'h74, 8'h1f, 8'h4b, 8'hbd, 8'h8b, 8'h8a,
        8'h70, 8'h3e, 8'hb5, 8'h66, 8'h48, 8'h03, 8'hf6, 8'h0e, 8'h61, 8'h35, 8'h57, 8'hb9, 8'h86, 8'hc1, 8'h1d, 8'h9e,
        8'he1, 8'hf8, 8'h98, 8'h11, 8'h69, 8'hd9, 8'h8e, 8'h94, 8'h9b, 8'h1e, 8'h87, 8'he9, 8'hce, 8'h55, 8'h28, 8'hdf,
        8'h8c, 8'ha1, 8'h89, 8'h0d, 8'hbf, 8'he6, 8'h42, 8'h68, 8'h41, 8'h99, 8'h2d, 8'h0f, 8'hb0, 8'h54, 8'hbb, 8'h16
    };
    
    const bit [0:7] ISBOX [256] = {
        8'h52, 8'h09, 8'h6a, 8'hd5, 8'h30, 8'h36, 8'ha5, 8'h38, 8'hbf, 8'h40, 8'ha3, 8'h9e, 8'h81, 8'hf3, 8'hd7, 8'hfb,
        8'h7c, 8'he3, 8'h39, 8'h82, 8'h9b, 8'h2f, 8'hff, 8'h87, 8'h34, 8'h8e, 8'h43, 8'h44, 8'hc4, 8'hde, 8'he9, 8'hcb,
        8'h54, 8'h7b, 8'h94, 8'h32, 8'ha6, 8'hc2, 8'h23, 8'h3d, 8'hee, 8'h4c, 8'h95, 8'h0b, 8'h42, 8'hfa, 8'hc3, 8'h4e,
        8'h08, 8'h2e, 8'ha1, 8'h66, 8'h28, 8'hd9, 8'h24, 8'hb2, 8'h76, 8'h5b, 8'ha2, 8'h49, 8'h6d, 8'h8b, 8'hd1, 8'h25,
        8'h72, 8'hf8, 8'hf6, 8'h64, 8'h86, 8'h68, 8'h98, 8'h16, 8'hd4, 8'ha4, 8'h5c, 8'hcc, 8'h5d, 8'h65, 8'hb6, 8'h92,
        8'h6c, 8'h70, 8'h48, 8'h50, 8'hfd, 8'hed, 8'hb9, 8'hda, 8'h5e, 8'h15, 8'h46, 8'h57, 8'ha7, 8'h8d, 8'h9d, 8'h84,
        8'h90, 8'hd8, 8'hab, 8'h00, 8'h8c, 8'hbc, 8'hd3, 8'h0a, 8'hf7, 8'he4, 8'h58, 8'h05, 8'hb8, 8'hb3, 8'h45, 8'h06,
        8'hd0, 8'h2c, 8'h1e, 8'h8f, 8'hca, 8'h3f, 8'h0f, 8'h02, 8'hc1, 8'haf, 8'hbd, 8'h03, 8'h01, 8'h13, 8'h8a, 8'h6b,
        8'h3a, 8'h91, 8'h11, 8'h41, 8'h4f, 8'h67, 8'hdc, 8'hea, 8'h97, 8'hf2, 8'hcf, 8'hce, 8'hf0, 8'hb4, 8'he6, 8'h73,
        8'h96, 8'hac, 8'h74, 8'h22, 8'he7, 8'had, 8'h35, 8'h85, 8'he2, 8'hf9, 8'h37, 8'he8, 8'h1c, 8'h75, 8'hdf, 8'h6e,
        8'h47, 8'hf1, 8'h1a, 8'h71, 8'h1d, 8'h29, 8'hc5, 8'h89, 8'h6f, 8'hb7, 8'h62, 8'h0e, 8'haa, 8'h18, 8'hbe, 8'h1b,
        8'hfc, 8'h56, 8'h3e, 8'h4b, 8'hc6, 8'hd2, 8'h79, 8'h20, 8'h9a, 8'hdb, 8'hc0, 8'hfe, 8'h78, 8'hcd, 8'h5a, 8'hf4,
        8'h1f, 8'hdd, 8'ha8, 8'h33, 8'h88, 8'h07, 8'hc7, 8'h31, 8'hb1, 8'h12, 8'h10, 8'h59, 8'h27, 8'h80, 8'hec, 8'h5f,
        8'h60, 8'h51, 8'h7f, 8'ha9, 8'h19, 8'hb5, 8'h4a, 8'h0d, 8'h2d, 8'he5, 8'h7a, 8'h9f, 8'h93, 8'hc9, 8'h9c, 8'hef,
        8'ha0, 8'he0, 8'h3b, 8'h4d, 8'hae, 8'h2a, 8'hf5, 8'hb0, 8'hc8, 8'heb, 8'hbb, 8'h3c, 8'h83, 8'h53, 8'h99, 8'h61,
        8'h17, 8'h2b, 8'h04, 8'h7e, 8'hba, 8'h77, 8'hd6, 8'h26, 8'he1, 8'h69, 8'h14, 8'h63, 8'h55, 8'h21, 8'h0c, 8'h7d
    };
    
    const bit [0:7] gf_table_2 [256] = {
        8'h00, 8'h02, 8'h04, 8'h06, 8'h08, 8'h0a, 8'h0c, 8'h0e, 8'h10, 8'h12, 8'h14, 8'h16, 8'h18, 8'h1a, 8'h1c, 8'h1e, 
        8'h20, 8'h22, 8'h24, 8'h26, 8'h28, 8'h2a, 8'h2c, 8'h2e, 8'h30, 8'h32, 8'h34, 8'h36, 8'h38, 8'h3a, 8'h3c, 8'h3e, 
        8'h40, 8'h42, 8'h44, 8'h46, 8'h48, 8'h4a, 8'h4c, 8'h4e, 8'h50, 8'h52, 8'h54, 8'h56, 8'h58, 8'h5a, 8'h5c, 8'h5e, 
        8'h60, 8'h62, 8'h64, 8'h66, 8'h68, 8'h6a, 8'h6c, 8'h6e, 8'h70, 8'h72, 8'h74, 8'h76, 8'h78, 8'h7a, 8'h7c, 8'h7e, 
        8'h80, 8'h82, 8'h84, 8'h86, 8'h88, 8'h8a, 8'h8c, 8'h8e, 8'h90, 8'h92, 8'h94, 8'h96, 8'h98, 8'h9a, 8'h9c, 8'h9e, 
        8'ha0, 8'ha2, 8'ha4, 8'ha6, 8'ha8, 8'haa, 8'hac, 8'hae, 8'hb0, 8'hb2, 8'hb4, 8'hb6, 8'hb8, 8'hba, 8'hbc, 8'hbe, 
        8'hc0, 8'hc2, 8'hc4, 8'hc6, 8'hc8, 8'hca, 8'hcc, 8'hce, 8'hd0, 8'hd2, 8'hd4, 8'hd6, 8'hd8, 8'hda, 8'hdc, 8'hde, 
        8'he0, 8'he2, 8'he4, 8'he6, 8'he8, 8'hea, 8'hec, 8'hee, 8'hf0, 8'hf2, 8'hf4, 8'hf6, 8'hf8, 8'hfa, 8'hfc, 8'hfe, 
        8'h1b, 8'h19, 8'h1f, 8'h1d, 8'h13, 8'h11, 8'h17, 8'h15, 8'h0b, 8'h09, 8'h0f, 8'h0d, 8'h03, 8'h01, 8'h07, 8'h05, 
        8'h3b, 8'h39, 8'h3f, 8'h3d, 8'h33, 8'h31, 8'h37, 8'h35, 8'h2b, 8'h29, 8'h2f, 8'h2d, 8'h23, 8'h21, 8'h27, 8'h25, 
        8'h5b, 8'h59, 8'h5f, 8'h5d, 8'h53, 8'h51, 8'h57, 8'h55, 8'h4b, 8'h49, 8'h4f, 8'h4d, 8'h43, 8'h41, 8'h47, 8'h45, 
        8'h7b, 8'h79, 8'h7f, 8'h7d, 8'h73, 8'h71, 8'h77, 8'h75, 8'h6b, 8'h69, 8'h6f, 8'h6d, 8'h63, 8'h61, 8'h67, 8'h65, 
        8'h9b, 8'h99, 8'h9f, 8'h9d, 8'h93, 8'h91, 8'h97, 8'h95, 8'h8b, 8'h89, 8'h8f, 8'h8d, 8'h83, 8'h81, 8'h87, 8'h85, 
        8'hbb, 8'hb9, 8'hbf, 8'hbd, 8'hb3, 8'hb1, 8'hb7, 8'hb5, 8'hab, 8'ha9, 8'haf, 8'had, 8'ha3, 8'ha1, 8'ha7, 8'ha5, 
        8'hdb, 8'hd9, 8'hdf, 8'hdd, 8'hd3, 8'hd1, 8'hd7, 8'hd5, 8'hcb, 8'hc9, 8'hcf, 8'hcd, 8'hc3, 8'hc1, 8'hc7, 8'hc5, 
        8'hfb, 8'hf9, 8'hff, 8'hfd, 8'hf3, 8'hf1, 8'hf7, 8'hf5, 8'heb, 8'he9, 8'hef, 8'hed, 8'he3, 8'he1, 8'he7, 8'he5
    };
    
    const bit [0:7] gf_table_3 [256] = {
        8'h00, 8'h03, 8'h06, 8'h05, 8'h0c, 8'h0f, 8'h0a, 8'h09, 8'h18, 8'h1b, 8'h1e, 8'h1d, 8'h14, 8'h17, 8'h12, 8'h11, 
        8'h30, 8'h33, 8'h36, 8'h35, 8'h3c, 8'h3f, 8'h3a, 8'h39, 8'h28, 8'h2b, 8'h2e, 8'h2d, 8'h24, 8'h27, 8'h22, 8'h21, 
        8'h60, 8'h63, 8'h66, 8'h65, 8'h6c, 8'h6f, 8'h6a, 8'h69, 8'h78, 8'h7b, 8'h7e, 8'h7d, 8'h74, 8'h77, 8'h72, 8'h71, 
        8'h50, 8'h53, 8'h56, 8'h55, 8'h5c, 8'h5f, 8'h5a, 8'h59, 8'h48, 8'h4b, 8'h4e, 8'h4d, 8'h44, 8'h47, 8'h42, 8'h41, 
        8'hc0, 8'hc3, 8'hc6, 8'hc5, 8'hcc, 8'hcf, 8'hca, 8'hc9, 8'hd8, 8'hdb, 8'hde, 8'hdd, 8'hd4, 8'hd7, 8'hd2, 8'hd1, 
        8'hf0, 8'hf3, 8'hf6, 8'hf5, 8'hfc, 8'hff, 8'hfa, 8'hf9, 8'he8, 8'heb, 8'hee, 8'hed, 8'he4, 8'he7, 8'he2, 8'he1, 
        8'ha0, 8'ha3, 8'ha6, 8'ha5, 8'hac, 8'haf, 8'haa, 8'ha9, 8'hb8, 8'hbb, 8'hbe, 8'hbd, 8'hb4, 8'hb7, 8'hb2, 8'hb1, 
        8'h90, 8'h93, 8'h96, 8'h95, 8'h9c, 8'h9f, 8'h9a, 8'h99, 8'h88, 8'h8b, 8'h8e, 8'h8d, 8'h84, 8'h87, 8'h82, 8'h81, 
        8'h9b, 8'h98, 8'h9d, 8'h9e, 8'h97, 8'h94, 8'h91, 8'h92, 8'h83, 8'h80, 8'h85, 8'h86, 8'h8f, 8'h8c, 8'h89, 8'h8a, 
        8'hab, 8'ha8, 8'had, 8'hae, 8'ha7, 8'ha4, 8'ha1, 8'ha2, 8'hb3, 8'hb0, 8'hb5, 8'hb6, 8'hbf, 8'hbc, 8'hb9, 8'hba, 
        8'hfb, 8'hf8, 8'hfd, 8'hfe, 8'hf7, 8'hf4, 8'hf1, 8'hf2, 8'he3, 8'he0, 8'he5, 8'he6, 8'hef, 8'hec, 8'he9, 8'hea, 
        8'hcb, 8'hc8, 8'hcd, 8'hce, 8'hc7, 8'hc4, 8'hc1, 8'hc2, 8'hd3, 8'hd0, 8'hd5, 8'hd6, 8'hdf, 8'hdc, 8'hd9, 8'hda, 
        8'h5b, 8'h58, 8'h5d, 8'h5e, 8'h57, 8'h54, 8'h51, 8'h52, 8'h43, 8'h40, 8'h45, 8'h46, 8'h4f, 8'h4c, 8'h49, 8'h4a, 
        8'h6b, 8'h68, 8'h6d, 8'h6e, 8'h67, 8'h64, 8'h61, 8'h62, 8'h73, 8'h70, 8'h75, 8'h76, 8'h7f, 8'h7c, 8'h79, 8'h7a, 
        8'h3b, 8'h38, 8'h3d, 8'h3e, 8'h37, 8'h34, 8'h31, 8'h32, 8'h23, 8'h20, 8'h25, 8'h26, 8'h2f, 8'h2c, 8'h29, 8'h2a, 
        8'h0b, 8'h08, 8'h0d, 8'h0e, 8'h07, 8'h04, 8'h01, 8'h02, 8'h13, 8'h10, 8'h15, 8'h16, 8'h1f, 8'h1c, 8'h19, 8'h1a
    };
    
    const bit [0:7] gf_table_9 [256] = {
        8'h00, 8'h09, 8'h12, 8'h1b, 8'h24, 8'h2d, 8'h36, 8'h3f, 8'h48, 8'h41, 8'h5a, 8'h53, 8'h6c, 8'h65, 8'h7e, 8'h77, 
        8'h90, 8'h99, 8'h82, 8'h8b, 8'hb4, 8'hbd, 8'ha6, 8'haf, 8'hd8, 8'hd1, 8'hca, 8'hc3, 8'hfc, 8'hf5, 8'hee, 8'he7, 
        8'h3b, 8'h32, 8'h29, 8'h20, 8'h1f, 8'h16, 8'h0d, 8'h04, 8'h73, 8'h7a, 8'h61, 8'h68, 8'h57, 8'h5e, 8'h45, 8'h4c, 
        8'hab, 8'ha2, 8'hb9, 8'hb0, 8'h8f, 8'h86, 8'h9d, 8'h94, 8'he3, 8'hea, 8'hf1, 8'hf8, 8'hc7, 8'hce, 8'hd5, 8'hdc, 
        8'h76, 8'h7f, 8'h64, 8'h6d, 8'h52, 8'h5b, 8'h40, 8'h49, 8'h3e, 8'h37, 8'h2c, 8'h25, 8'h1a, 8'h13, 8'h08, 8'h01, 
        8'he6, 8'hef, 8'hf4, 8'hfd, 8'hc2, 8'hcb, 8'hd0, 8'hd9, 8'hae, 8'ha7, 8'hbc, 8'hb5, 8'h8a, 8'h83, 8'h98, 8'h91, 
        8'h4d, 8'h44, 8'h5f, 8'h56, 8'h69, 8'h60, 8'h7b, 8'h72, 8'h05, 8'h0c, 8'h17, 8'h1e, 8'h21, 8'h28, 8'h33, 8'h3a, 
        8'hdd, 8'hd4, 8'hcf, 8'hc6, 8'hf9, 8'hf0, 8'heb, 8'he2, 8'h95, 8'h9c, 8'h87, 8'h8e, 8'hb1, 8'hb8, 8'ha3, 8'haa, 
        8'hec, 8'he5, 8'hfe, 8'hf7, 8'hc8, 8'hc1, 8'hda, 8'hd3, 8'ha4, 8'had, 8'hb6, 8'hbf, 8'h80, 8'h89, 8'h92, 8'h9b, 
        8'h7c, 8'h75, 8'h6e, 8'h67, 8'h58, 8'h51, 8'h4a, 8'h43, 8'h34, 8'h3d, 8'h26, 8'h2f, 8'h10, 8'h19, 8'h02, 8'h0b, 
        8'hd7, 8'hde, 8'hc5, 8'hcc, 8'hf3, 8'hfa, 8'he1, 8'he8, 8'h9f, 8'h96, 8'h8d, 8'h84, 8'hbb, 8'hb2, 8'ha9, 8'ha0, 
        8'h47, 8'h4e, 8'h55, 8'h5c, 8'h63, 8'h6a, 8'h71, 8'h78, 8'h0f, 8'h06, 8'h1d, 8'h14, 8'h2b, 8'h22, 8'h39, 8'h30, 
        8'h9a, 8'h93, 8'h88, 8'h81, 8'hbe, 8'hb7, 8'hac, 8'ha5, 8'hd2, 8'hdb, 8'hc0, 8'hc9, 8'hf6, 8'hff, 8'he4, 8'hed, 
        8'h0a, 8'h03, 8'h18, 8'h11, 8'h2e, 8'h27, 8'h3c, 8'h35, 8'h42, 8'h4b, 8'h50, 8'h59, 8'h66, 8'h6f, 8'h74, 8'h7d, 
        8'ha1, 8'ha8, 8'hb3, 8'hba, 8'h85, 8'h8c, 8'h97, 8'h9e, 8'he9, 8'he0, 8'hfb, 8'hf2, 8'hcd, 8'hc4, 8'hdf, 8'hd6, 
        8'h31, 8'h38, 8'h23, 8'h2a, 8'h15, 8'h1c, 8'h07, 8'h0e, 8'h79, 8'h70, 8'h6b, 8'h62, 8'h5d, 8'h54, 8'h4f, 8'h46
    };
    
    const bit [0:7] gf_table_11 [256] = {
        8'h00, 8'h0b, 8'h16, 8'h1d, 8'h2c, 8'h27, 8'h3a, 8'h31, 8'h58, 8'h53, 8'h4e, 8'h45, 8'h74, 8'h7f, 8'h62, 8'h69, 
        8'hb0, 8'hbb, 8'ha6, 8'had, 8'h9c, 8'h97, 8'h8a, 8'h81, 8'he8, 8'he3, 8'hfe, 8'hf5, 8'hc4, 8'hcf, 8'hd2, 8'hd9, 
        8'h7b, 8'h70, 8'h6d, 8'h66, 8'h57, 8'h5c, 8'h41, 8'h4a, 8'h23, 8'h28, 8'h35, 8'h3e, 8'h0f, 8'h04, 8'h19, 8'h12, 
        8'hcb, 8'hc0, 8'hdd, 8'hd6, 8'he7, 8'hec, 8'hf1, 8'hfa, 8'h93, 8'h98, 8'h85, 8'h8e, 8'hbf, 8'hb4, 8'ha9, 8'ha2, 
        8'hf6, 8'hfd, 8'he0, 8'heb, 8'hda, 8'hd1, 8'hcc, 8'hc7, 8'hae, 8'ha5, 8'hb8, 8'hb3, 8'h82, 8'h89, 8'h94, 8'h9f, 
        8'h46, 8'h4d, 8'h50, 8'h5b, 8'h6a, 8'h61, 8'h7c, 8'h77, 8'h1e, 8'h15, 8'h08, 8'h03, 8'h32, 8'h39, 8'h24, 8'h2f, 
        8'h8d, 8'h86, 8'h9b, 8'h90, 8'ha1, 8'haa, 8'hb7, 8'hbc, 8'hd5, 8'hde, 8'hc3, 8'hc8, 8'hf9, 8'hf2, 8'hef, 8'he4, 
        8'h3d, 8'h36, 8'h2b, 8'h20, 8'h11, 8'h1a, 8'h07, 8'h0c, 8'h65, 8'h6e, 8'h73, 8'h78, 8'h49, 8'h42, 8'h5f, 8'h54, 
        8'hf7, 8'hfc, 8'he1, 8'hea, 8'hdb, 8'hd0, 8'hcd, 8'hc6, 8'haf, 8'ha4, 8'hb9, 8'hb2, 8'h83, 8'h88, 8'h95, 8'h9e, 
        8'h47, 8'h4c, 8'h51, 8'h5a, 8'h6b, 8'h60, 8'h7d, 8'h76, 8'h1f, 8'h14, 8'h09, 8'h02, 8'h33, 8'h38, 8'h25, 8'h2e, 
        8'h8c, 8'h87, 8'h9a, 8'h91, 8'ha0, 8'hab, 8'hb6, 8'hbd, 8'hd4, 8'hdf, 8'hc2, 8'hc9, 8'hf8, 8'hf3, 8'hee, 8'he5, 
        8'h3c, 8'h37, 8'h2a, 8'h21, 8'h10, 8'h1b, 8'h06, 8'h0d, 8'h64, 8'h6f, 8'h72, 8'h79, 8'h48, 8'h43, 8'h5e, 8'h55, 
        8'h01, 8'h0a, 8'h17, 8'h1c, 8'h2d, 8'h26, 8'h3b, 8'h30, 8'h59, 8'h52, 8'h4f, 8'h44, 8'h75, 8'h7e, 8'h63, 8'h68, 
        8'hb1, 8'hba, 8'ha7, 8'hac, 8'h9d, 8'h96, 8'h8b, 8'h80, 8'he9, 8'he2, 8'hff, 8'hf4, 8'hc5, 8'hce, 8'hd3, 8'hd8, 
        8'h7a, 8'h71, 8'h6c, 8'h67, 8'h56, 8'h5d, 8'h40, 8'h4b, 8'h22, 8'h29, 8'h34, 8'h3f, 8'h0e, 8'h05, 8'h18, 8'h13, 
        8'hca, 8'hc1, 8'hdc, 8'hd7, 8'he6, 8'hed, 8'hf0, 8'hfb, 8'h92, 8'h99, 8'h84, 8'h8f, 8'hbe, 8'hb5, 8'ha8, 8'ha3
    };
    
    const bit [0:7] gf_table_13 [256] = {
        8'h00, 8'h0d, 8'h1a, 8'h17, 8'h34, 8'h39, 8'h2e, 8'h23, 8'h68, 8'h65, 8'h72, 8'h7f, 8'h5c, 8'h51, 8'h46, 8'h4b, 
        8'hd0, 8'hdd, 8'hca, 8'hc7, 8'he4, 8'he9, 8'hfe, 8'hf3, 8'hb8, 8'hb5, 8'ha2, 8'haf, 8'h8c, 8'h81, 8'h96, 8'h9b, 
        8'hbb, 8'hb6, 8'ha1, 8'hac, 8'h8f, 8'h82, 8'h95, 8'h98, 8'hd3, 8'hde, 8'hc9, 8'hc4, 8'he7, 8'hea, 8'hfd, 8'hf0, 
        8'h6b, 8'h66, 8'h71, 8'h7c, 8'h5f, 8'h52, 8'h45, 8'h48, 8'h03, 8'h0e, 8'h19, 8'h14, 8'h37, 8'h3a, 8'h2d, 8'h20, 
        8'h6d, 8'h60, 8'h77, 8'h7a, 8'h59, 8'h54, 8'h43, 8'h4e, 8'h05, 8'h08, 8'h1f, 8'h12, 8'h31, 8'h3c, 8'h2b, 8'h26, 
        8'hbd, 8'hb0, 8'ha7, 8'haa, 8'h89, 8'h84, 8'h93, 8'h9e, 8'hd5, 8'hd8, 8'hcf, 8'hc2, 8'he1, 8'hec, 8'hfb, 8'hf6, 
        8'hd6, 8'hdb, 8'hcc, 8'hc1, 8'he2, 8'hef, 8'hf8, 8'hf5, 8'hbe, 8'hb3, 8'ha4, 8'ha9, 8'h8a, 8'h87, 8'h90, 8'h9d, 
        8'h06, 8'h0b, 8'h1c, 8'h11, 8'h32, 8'h3f, 8'h28, 8'h25, 8'h6e, 8'h63, 8'h74, 8'h79, 8'h5a, 8'h57, 8'h40, 8'h4d, 
        8'hda, 8'hd7, 8'hc0, 8'hcd, 8'hee, 8'he3, 8'hf4, 8'hf9, 8'hb2, 8'hbf, 8'ha8, 8'ha5, 8'h86, 8'h8b, 8'h9c, 8'h91, 
        8'h0a, 8'h07, 8'h10, 8'h1d, 8'h3e, 8'h33, 8'h24, 8'h29, 8'h62, 8'h6f, 8'h78, 8'h75, 8'h56, 8'h5b, 8'h4c, 8'h41, 
        8'h61, 8'h6c, 8'h7b, 8'h76, 8'h55, 8'h58, 8'h4f, 8'h42, 8'h09, 8'h04, 8'h13, 8'h1e, 8'h3d, 8'h30, 8'h27, 8'h2a, 
        8'hb1, 8'hbc, 8'hab, 8'ha6, 8'h85, 8'h88, 8'h9f, 8'h92, 8'hd9, 8'hd4, 8'hc3, 8'hce, 8'hed, 8'he0, 8'hf7, 8'hfa, 
        8'hb7, 8'hba, 8'had, 8'ha0, 8'h83, 8'h8e, 8'h99, 8'h94, 8'hdf, 8'hd2, 8'hc5, 8'hc8, 8'heb, 8'he6, 8'hf1, 8'hfc, 
        8'h67, 8'h6a, 8'h7d, 8'h70, 8'h53, 8'h5e, 8'h49, 8'h44, 8'h0f, 8'h02, 8'h15, 8'h18, 8'h3b, 8'h36, 8'h21, 8'h2c, 
        8'h0c, 8'h01, 8'h16, 8'h1b, 8'h38, 8'h35, 8'h22, 8'h2f, 8'h64, 8'h69, 8'h7e, 8'h73, 8'h50, 8'h5d, 8'h4a, 8'h47, 
        8'hdc, 8'hd1, 8'hc6, 8'hcb, 8'he8, 8'he5, 8'hf2, 8'hff, 8'hb4, 8'hb9, 8'hae, 8'ha3, 8'h80, 8'h8d, 8'h9a, 8'h97
    };
        
    const bit [0:7] gf_table_14 [256] = {
        8'h00, 8'h0e, 8'h1c, 8'h12, 8'h38, 8'h36, 8'h24, 8'h2a, 8'h70, 8'h7e, 8'h6c, 8'h62, 8'h48, 8'h46, 8'h54, 8'h5a, 
        8'he0, 8'hee, 8'hfc, 8'hf2, 8'hd8, 8'hd6, 8'hc4, 8'hca, 8'h90, 8'h9e, 8'h8c, 8'h82, 8'ha8, 8'ha6, 8'hb4, 8'hba, 
        8'hdb, 8'hd5, 8'hc7, 8'hc9, 8'he3, 8'hed, 8'hff, 8'hf1, 8'hab, 8'ha5, 8'hb7, 8'hb9, 8'h93, 8'h9d, 8'h8f, 8'h81, 
        8'h3b, 8'h35, 8'h27, 8'h29, 8'h03, 8'h0d, 8'h1f, 8'h11, 8'h4b, 8'h45, 8'h57, 8'h59, 8'h73, 8'h7d, 8'h6f, 8'h61, 
        8'had, 8'ha3, 8'hb1, 8'hbf, 8'h95, 8'h9b, 8'h89, 8'h87, 8'hdd, 8'hd3, 8'hc1, 8'hcf, 8'he5, 8'heb, 8'hf9, 8'hf7, 
        8'h4d, 8'h43, 8'h51, 8'h5f, 8'h75, 8'h7b, 8'h69, 8'h67, 8'h3d, 8'h33, 8'h21, 8'h2f, 8'h05, 8'h0b, 8'h19, 8'h17, 
        8'h76, 8'h78, 8'h6a, 8'h64, 8'h4e, 8'h40, 8'h52, 8'h5c, 8'h06, 8'h08, 8'h1a, 8'h14, 8'h3e, 8'h30, 8'h22, 8'h2c, 
        8'h96, 8'h98, 8'h8a, 8'h84, 8'hae, 8'ha0, 8'hb2, 8'hbc, 8'he6, 8'he8, 8'hfa, 8'hf4, 8'hde, 8'hd0, 8'hc2, 8'hcc, 
        8'h41, 8'h4f, 8'h5d, 8'h53, 8'h79, 8'h77, 8'h65, 8'h6b, 8'h31, 8'h3f, 8'h2d, 8'h23, 8'h09, 8'h07, 8'h15, 8'h1b, 
        8'ha1, 8'haf, 8'hbd, 8'hb3, 8'h99, 8'h97, 8'h85, 8'h8b, 8'hd1, 8'hdf, 8'hcd, 8'hc3, 8'he9, 8'he7, 8'hf5, 8'hfb, 
        8'h9a, 8'h94, 8'h86, 8'h88, 8'ha2, 8'hac, 8'hbe, 8'hb0, 8'hea, 8'he4, 8'hf6, 8'hf8, 8'hd2, 8'hdc, 8'hce, 8'hc0, 
        8'h7a, 8'h74, 8'h66, 8'h68, 8'h42, 8'h4c, 8'h5e, 8'h50, 8'h0a, 8'h04, 8'h16, 8'h18, 8'h32, 8'h3c, 8'h2e, 8'h20, 
        8'hec, 8'he2, 8'hf0, 8'hfe, 8'hd4, 8'hda, 8'hc8, 8'hc6, 8'h9c, 8'h92, 8'h80, 8'h8e, 8'ha4, 8'haa, 8'hb8, 8'hb6, 
        8'h0c, 8'h02, 8'h10, 8'h1e, 8'h34, 8'h3a, 8'h28, 8'h26, 8'h7c, 8'h72, 8'h60, 8'h6e, 8'h44, 8'h4a, 8'h58, 8'h56, 
        8'h37, 8'h39, 8'h2b, 8'h25, 8'h0f, 8'h01, 8'h13, 8'h1d, 8'h47, 8'h49, 8'h5b, 8'h55, 8'h7f, 8'h71, 8'h63, 8'h6d, 
        8'hd7, 8'hd9, 8'hcb, 8'hc5, 8'hef, 8'he1, 8'hf3, 8'hfd, 8'ha7, 8'ha9, 8'hbb, 8'hb5, 8'h9f, 8'h91, 8'h83, 8'h8d
    };
    
    const bit [0:7] rcon [256] = {
        8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 
        8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 
        8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 
        8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 
        8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 
        8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 
        8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 
        8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 
        8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 
        8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 
        8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 8'hc6, 8'h97, 8'h35, 
        8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 8'h61, 8'hc2, 8'h9f, 
        8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d, 8'h01, 8'h02, 8'h04, 
        8'h08, 8'h10, 8'h20, 8'h40, 8'h80, 8'h1b, 8'h36, 8'h6c, 8'hd8, 8'hab, 8'h4d, 8'h9a, 8'h2f, 8'h5e, 8'hbc, 8'h63, 
        8'hc6, 8'h97, 8'h35, 8'h6a, 8'hd4, 8'hb3, 8'h7d, 8'hfa, 8'hef, 8'hc5, 8'h91, 8'h39, 8'h72, 8'he4, 8'hd3, 8'hbd, 
        8'h61, 8'hc2, 8'h9f, 8'h25, 8'h4a, 8'h94, 8'h33, 8'h66, 8'hcc, 8'h83, 8'h1d, 8'h3a, 8'h74, 8'he8, 8'hcb, 8'h8d
    };
    
    //const bit [0:127] cipher_key = 128'h2b7e151628aed2a6abf7158809cf4f3c;
    //const bit [0:1407] key_schedule = 1408'h2b7e151628aed2a6abf7158809cf4f3ca0fafe1788542cb123a339392a6c7605f2c295f27a96b9435935807a7359f67f3d80477d4716fe3e1e237e446d7a883bef44a541a8525b7fb671253bdb0bad00d4d1c6f87c839d87caf2b8bc11f915bc6d88a37a110b3efddbf98641ca0093fd4e54f70e5f5fc9f384a64fb24ea6dc4fead27321b58dbad2312bf5607f8d292fac7766f319fadc2128d12941575c006ed014f9a8c9ee2589e13f0cc8b6630ca6;
    const bit [0:127]  cipher_key   = 128'hFEFFE9928665731C6D6A8F9467308308;
    const bit [0:1407] key_schedule = 1408'hfeffe9928665731c6d6a8f9467308308fb13d9177d76aa0b101c259f772ca697883751e2f541fbe9e55dde76927178e12f8ba9addaca52443f978c32ade6f4d3a934cf3873fe9d7c4c69114ee18fe59dcaed91c0b9130cbcf57a1df214f5f86f0cac393ab5bf358640c528745430d01b48dc961afd63a39cbda68be8e9965bf358e59b04a58638981820b370f1b6e8830d7e77a5a8f84f3db0d8fc4d416e14cea484fc260c7cb31bbca44f56fdca5b98;
    const bit [0:127]  H            = 128'hb83b533708bf535d0aa6e52980d53b78;
    const bit [0:127]  J_0          = 128'hcafebabefacedbaddecaf88800000001;
    
    parameter IV_SIZE           = 96;
    parameter BLOCK_SIZE        = 128;
    parameter PLAIN_TEXT_SIZE   = 128;
    parameter AAD_SIZE          = 128;
    parameter TAG_SIZE          = 128;
    parameter AUTH_INPUT_SIZE   = 384; //AAD_SIZE + PLAIN_TEXT_SIZE + 64 + 64
    
endpackage

function logic[0:127] fn_product(
    input [0:127] X,
    input [0:127] Y
);
    logic [0:127] Z;
    logic [0:127] V;
    integer idx;
        
    Z = 128'b0;
    V = Y;
    
    for(idx = 0; idx <= 127; idx++)
    begin
        if (X[idx] == 1'b1)
            Z = Z ^ V;
        
        if (V[127] == 1'b0)
            V = V >> 1;
        else
        begin
            V = V >> 1;
            V = V ^ {8'b11100001, 120'd0};
        end
    end

    return Z;
endfunction

function logic [0:128] fn_aes_encrypt_unroll(
    input logic [0:127] in_state
);
    
    //Helper variables
    integer i;
    integer j;
    
    // To store intermediate states
    logic [0:127]    state_0;
    logic [0:127]    state_1;
    logic [0:127]    state_2;
    logic [0:127]    state_3;
    logic [0:127]    state_4;
    logic [0:127]    state_5;
    logic [0:127]    state_6;
    logic [0:127]    state_7;
    logic [0:127]    state_8;
    logic [0:127]    state_9;
    logic [0:127]    state_10;

    logic [0:127]    mix_column_state_0;
    logic [0:127]    mix_column_state_1;
    logic [0:127]    mix_column_state_2;
    logic [0:127]    mix_column_state_3;
    logic [0:127]    mix_column_state_4;
    logic [0:127]    mix_column_state_5;
    logic [0:127]    mix_column_state_6;
    logic [0:127]    mix_column_state_7;
    logic [0:127]    mix_column_state_8;
    
    //$display("--------------------Input--------------------");
    //$display("State: %h", in_state);
    //$display("Round Key Value: %h", globals::key_schedule[0:127]);

    //$display("-------------------- Round 0 --------------------");
    state_0 = in_state ^ globals::key_schedule[0:127]; // Adding the first round key
    //$display("After AddRoundKey %h", state_0);
    
    //$display("-------------------- Round 1 --------------------");
    //$display("State: %h", state_0);

    // Applying SubBytes operation
    state_0[0+:8]   = globals::SBOX[state_0[0+:8]];
    state_0[8+:8]   = globals::SBOX[state_0[8+:8]];
    state_0[16+:8]  = globals::SBOX[state_0[16+:8]];
    state_0[24+:8]  = globals::SBOX[state_0[24+:8]];
    state_0[32+:8]  = globals::SBOX[state_0[32+:8]];
    state_0[40+:8]  = globals::SBOX[state_0[40+:8]];
    state_0[48+:8]  = globals::SBOX[state_0[48+:8]];
    state_0[56+:8]  = globals::SBOX[state_0[56+:8]];
    state_0[64+:8]  = globals::SBOX[state_0[64+:8]];
    state_0[72+:8]  = globals::SBOX[state_0[72+:8]];
    state_0[80+:8]  = globals::SBOX[state_0[80+:8]];
    state_0[88+:8]  = globals::SBOX[state_0[88+:8]];
    state_0[96+:8]  = globals::SBOX[state_0[96+:8]];
    state_0[104+:8] = globals::SBOX[state_0[104+:8]];
    state_0[112+:8] = globals::SBOX[state_0[112+:8]];
    state_0[120+:8] = globals::SBOX[state_0[120+:8]];

    //$display("After SubBytes: %h", state_0);

    // Applying ShiftRows operation on the state_0
    {state_0[(0 * 8)+0 +:8], state_0[(0 * 8)+32 +:8], state_0[(0 * 8)+64 +:8], state_0[(0 * 8)+96 +:8]} =
                        {state_0[(0 * 8)+0 +:8], state_0[(0 * 8)+32 +:8], state_0[(0 * 8)+64 +:8], state_0[(0 * 8)+96 +:8]};
    {state_0[(1 * 8)+0 +:8], state_0[(1 * 8)+32 +:8], state_0[(1 * 8)+64 +:8], state_0[(1 * 8)+96 +:8]} =
                        {state_0[(1 * 8)+32 +:8], state_0[(1 * 8)+64 +:8], state_0[(1 * 8)+96 +:8], state_0[(1 * 8)+0 +:8]};
    {state_0[(2 * 8)+0 +:8], state_0[(2 * 8)+32 +:8], state_0[(2 * 8)+64 +:8], state_0[(2 * 8)+96 +:8]} =
                        {state_0[(2 * 8)+64 +:8], state_0[(2 * 8)+96 +:8], state_0[(2 * 8)+0 +:8], state_0[(2 * 8)+32 +:8]};
    {state_0[(3 * 8)+0 +:8], state_0[(3 * 8)+32 +:8], state_0[(3 * 8)+64 +:8], state_0[(3 * 8)+96 +:8]} =
                        {state_0[(3 * 8)+96 +:8], state_0[(3 * 8)+0 +:8], state_0[(3 * 8)+32 +:8], state_0[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_0);

    // Applying MixColumns operation
    mix_column_state_0[0*32+0  +:8]  = globals::gf_table_2[state_0[0*32+0+:8]] ^ globals::gf_table_3[state_0[0*32+8+:8]] ^ state_0[0*32+16+:8] ^ state_0[0*32+24+:8];
    mix_column_state_0[0*32+8  +:8]  = state_0[0*32+0+:8] ^ globals::gf_table_2[state_0[0*32+8+:8]] ^ globals::gf_table_3[state_0[0*32+16+:8]] ^ state_0[0*32+24+:8];
    mix_column_state_0[0*32+16 +:8]  = state_0[0*32+0+:8] ^ state_0[0*32+8+:8] ^ globals::gf_table_2[state_0[0*32+16+:8]] ^ globals::gf_table_3[state_0[0*32+24+:8]];
    mix_column_state_0[0*32+24 +:8]  = globals::gf_table_3[state_0[0*32+0+:8]] ^ state_0[0*32+8+:8] ^ state_0[0*32+16+:8] ^ globals::gf_table_2[state_0[0*32+24+:8]];

    mix_column_state_0[1*32+0  +:8]  = globals::gf_table_2[state_0[1*32+0+:8]] ^ globals::gf_table_3[state_0[1*32+8+:8]] ^ state_0[1*32+16+:8] ^ state_0[1*32+24+:8];
    mix_column_state_0[1*32+8  +:8]  = state_0[1*32+0+:8] ^ globals::gf_table_2[state_0[1*32+8+:8]] ^ globals::gf_table_3[state_0[1*32+16+:8]] ^ state_0[1*32+24+:8];
    mix_column_state_0[1*32+16 +:8]  = state_0[1*32+0+:8] ^ state_0[1*32+8+:8] ^ globals::gf_table_2[state_0[1*32+16+:8]] ^ globals::gf_table_3[state_0[1*32+24+:8]];
    mix_column_state_0[1*32+24 +:8]  = globals::gf_table_3[state_0[1*32+0+:8]] ^ state_0[1*32+8+:8] ^ state_0[1*32+16+:8] ^ globals::gf_table_2[state_0[1*32+24+:8]];

    mix_column_state_0[2*32+0  +:8]  = globals::gf_table_2[state_0[2*32+0+:8]] ^ globals::gf_table_3[state_0[2*32+8+:8]] ^ state_0[2*32+16+:8] ^ state_0[2*32+24+:8];
    mix_column_state_0[2*32+8  +:8]  = state_0[2*32+0+:8] ^ globals::gf_table_2[state_0[2*32+8+:8]] ^ globals::gf_table_3[state_0[2*32+16+:8]] ^ state_0[2*32+24+:8];
    mix_column_state_0[2*32+16 +:8]  = state_0[2*32+0+:8] ^ state_0[2*32+8+:8] ^ globals::gf_table_2[state_0[2*32+16+:8]] ^ globals::gf_table_3[state_0[2*32+24+:8]];
    mix_column_state_0[2*32+24 +:8]  = globals::gf_table_3[state_0[2*32+0+:8]] ^ state_0[2*32+8+:8] ^ state_0[2*32+16+:8] ^ globals::gf_table_2[state_0[2*32+24+:8]];

    mix_column_state_0[3*32+0  +:8]  = globals::gf_table_2[state_0[3*32+0+:8]] ^ globals::gf_table_3[state_0[3*32+8+:8]] ^ state_0[3*32+16+:8] ^ state_0[3*32+24+:8];
    mix_column_state_0[3*32+8  +:8]  = state_0[3*32+0+:8] ^ globals::gf_table_2[state_0[3*32+8+:8]] ^ globals::gf_table_3[state_0[3*32+16+:8]] ^ state_0[3*32+24+:8];
    mix_column_state_0[3*32+16 +:8]  = state_0[3*32+0+:8] ^ state_0[3*32+8+:8] ^ globals::gf_table_2[state_0[3*32+16+:8]] ^ globals::gf_table_3[state_0[3*32+24+:8]];
    mix_column_state_0[3*32+24 +:8]  = globals::gf_table_3[state_0[3*32+0+:8]] ^ state_0[3*32+8+:8] ^ state_0[3*32+16+:8] ^ globals::gf_table_2[state_0[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_0);

    // Applying AddRoundKey operation to the state
    state_1 = mix_column_state_0 ^ globals::key_schedule[1*128 +:128];
    //$display("RoundKey Value %h", globals::key_schedule[1*128 +:128]);
    //$display("After AddRoundKey %h", state_0);

    //$display("-------------------- Round 2 --------------------");
    //$display("State: %h", state_1);

    // Applying SubBytes operation
    state_1[0+:8]   = globals::SBOX[state_1[0+:8]];
    state_1[8+:8]   = globals::SBOX[state_1[8+:8]];
    state_1[16+:8]  = globals::SBOX[state_1[16+:8]];
    state_1[24+:8]  = globals::SBOX[state_1[24+:8]];
    state_1[32+:8]  = globals::SBOX[state_1[32+:8]];
    state_1[40+:8]  = globals::SBOX[state_1[40+:8]];
    state_1[48+:8]  = globals::SBOX[state_1[48+:8]];
    state_1[56+:8]  = globals::SBOX[state_1[56+:8]];
    state_1[64+:8]  = globals::SBOX[state_1[64+:8]];
    state_1[72+:8]  = globals::SBOX[state_1[72+:8]];
    state_1[80+:8]  = globals::SBOX[state_1[80+:8]];
    state_1[88+:8]  = globals::SBOX[state_1[88+:8]];
    state_1[96+:8]  = globals::SBOX[state_1[96+:8]];
    state_1[104+:8] = globals::SBOX[state_1[104+:8]];
    state_1[112+:8] = globals::SBOX[state_1[112+:8]];
    state_1[120+:8] = globals::SBOX[state_1[120+:8]];

    //$display("After SubBytes: %h", state_1);

    // Applying ShiftRows operation on the state_1
    {state_1[(0 * 8)+0 +:8], state_1[(0 * 8)+32 +:8], state_1[(0 * 8)+64 +:8], state_1[(0 * 8)+96 +:8]} =
                        {state_1[(0 * 8)+0 +:8], state_1[(0 * 8)+32 +:8], state_1[(0 * 8)+64 +:8], state_1[(0 * 8)+96 +:8]};
    {state_1[(1 * 8)+0 +:8], state_1[(1 * 8)+32 +:8], state_1[(1 * 8)+64 +:8], state_1[(1 * 8)+96 +:8]} =
                        {state_1[(1 * 8)+32 +:8], state_1[(1 * 8)+64 +:8], state_1[(1 * 8)+96 +:8], state_1[(1 * 8)+0 +:8]};
    {state_1[(2 * 8)+0 +:8], state_1[(2 * 8)+32 +:8], state_1[(2 * 8)+64 +:8], state_1[(2 * 8)+96 +:8]} =
                        {state_1[(2 * 8)+64 +:8], state_1[(2 * 8)+96 +:8], state_1[(2 * 8)+0 +:8], state_1[(2 * 8)+32 +:8]};
    {state_1[(3 * 8)+0 +:8], state_1[(3 * 8)+32 +:8], state_1[(3 * 8)+64 +:8], state_1[(3 * 8)+96 +:8]} =
                        {state_1[(3 * 8)+96 +:8], state_1[(3 * 8)+0 +:8], state_1[(3 * 8)+32 +:8], state_1[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_1);

    // Applying MixColumns operation
    mix_column_state_1[0*32+0  +:8]  = globals::gf_table_2[state_1[0*32+0+:8]] ^ globals::gf_table_3[state_1[0*32+8+:8]] ^ state_1[0*32+16+:8] ^ state_1[0*32+24+:8];
    mix_column_state_1[0*32+8  +:8]  = state_1[0*32+0+:8] ^ globals::gf_table_2[state_1[0*32+8+:8]] ^ globals::gf_table_3[state_1[0*32+16+:8]] ^ state_1[0*32+24+:8];
    mix_column_state_1[0*32+16 +:8]  = state_1[0*32+0+:8] ^ state_1[0*32+8+:8] ^ globals::gf_table_2[state_1[0*32+16+:8]] ^ globals::gf_table_3[state_1[0*32+24+:8]];
    mix_column_state_1[0*32+24 +:8]  = globals::gf_table_3[state_1[0*32+0+:8]] ^ state_1[0*32+8+:8] ^ state_1[0*32+16+:8] ^ globals::gf_table_2[state_1[0*32+24+:8]];

    mix_column_state_1[1*32+0  +:8]  = globals::gf_table_2[state_1[1*32+0+:8]] ^ globals::gf_table_3[state_1[1*32+8+:8]] ^ state_1[1*32+16+:8] ^ state_1[1*32+24+:8];
    mix_column_state_1[1*32+8  +:8]  = state_1[1*32+0+:8] ^ globals::gf_table_2[state_1[1*32+8+:8]] ^ globals::gf_table_3[state_1[1*32+16+:8]] ^ state_1[1*32+24+:8];
    mix_column_state_1[1*32+16 +:8]  = state_1[1*32+0+:8] ^ state_1[1*32+8+:8] ^ globals::gf_table_2[state_1[1*32+16+:8]] ^ globals::gf_table_3[state_1[1*32+24+:8]];
    mix_column_state_1[1*32+24 +:8]  = globals::gf_table_3[state_1[1*32+0+:8]] ^ state_1[1*32+8+:8] ^ state_1[1*32+16+:8] ^ globals::gf_table_2[state_1[1*32+24+:8]];

    mix_column_state_1[2*32+0  +:8]  = globals::gf_table_2[state_1[2*32+0+:8]] ^ globals::gf_table_3[state_1[2*32+8+:8]] ^ state_1[2*32+16+:8] ^ state_1[2*32+24+:8];
    mix_column_state_1[2*32+8  +:8]  = state_1[2*32+0+:8] ^ globals::gf_table_2[state_1[2*32+8+:8]] ^ globals::gf_table_3[state_1[2*32+16+:8]] ^ state_1[2*32+24+:8];
    mix_column_state_1[2*32+16 +:8]  = state_1[2*32+0+:8] ^ state_1[2*32+8+:8] ^ globals::gf_table_2[state_1[2*32+16+:8]] ^ globals::gf_table_3[state_1[2*32+24+:8]];
    mix_column_state_1[2*32+24 +:8]  = globals::gf_table_3[state_1[2*32+0+:8]] ^ state_1[2*32+8+:8] ^ state_1[2*32+16+:8] ^ globals::gf_table_2[state_1[2*32+24+:8]];

    mix_column_state_1[3*32+0  +:8]  = globals::gf_table_2[state_1[3*32+0+:8]] ^ globals::gf_table_3[state_1[3*32+8+:8]] ^ state_1[3*32+16+:8] ^ state_1[3*32+24+:8];
    mix_column_state_1[3*32+8  +:8]  = state_1[3*32+0+:8] ^ globals::gf_table_2[state_1[3*32+8+:8]] ^ globals::gf_table_3[state_1[3*32+16+:8]] ^ state_1[3*32+24+:8];
    mix_column_state_1[3*32+16 +:8]  = state_1[3*32+0+:8] ^ state_1[3*32+8+:8] ^ globals::gf_table_2[state_1[3*32+16+:8]] ^ globals::gf_table_3[state_1[3*32+24+:8]];
    mix_column_state_1[3*32+24 +:8]  = globals::gf_table_3[state_1[3*32+0+:8]] ^ state_1[3*32+8+:8] ^ state_1[3*32+16+:8] ^ globals::gf_table_2[state_1[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_1);

    // Applying AddRoundKey operation to the state
    state_2 = mix_column_state_1 ^ globals::key_schedule[2*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[2*128 +:128]);
    //$display("After AddRoundKey %h", state_2);

    //$display("-------------------- Round 3 --------------------");
    //$display("State: %h", state_2);

    // Applying SubBytes operation
    state_2[0+:8]   = globals::SBOX[state_2[0+:8]];
    state_2[8+:8]   = globals::SBOX[state_2[8+:8]];
    state_2[16+:8]  = globals::SBOX[state_2[16+:8]];
    state_2[24+:8]  = globals::SBOX[state_2[24+:8]];
    state_2[32+:8]  = globals::SBOX[state_2[32+:8]];
    state_2[40+:8]  = globals::SBOX[state_2[40+:8]];
    state_2[48+:8]  = globals::SBOX[state_2[48+:8]];
    state_2[56+:8]  = globals::SBOX[state_2[56+:8]];
    state_2[64+:8]  = globals::SBOX[state_2[64+:8]];
    state_2[72+:8]  = globals::SBOX[state_2[72+:8]];
    state_2[80+:8]  = globals::SBOX[state_2[80+:8]];
    state_2[88+:8]  = globals::SBOX[state_2[88+:8]];
    state_2[96+:8]  = globals::SBOX[state_2[96+:8]];
    state_2[104+:8] = globals::SBOX[state_2[104+:8]];
    state_2[112+:8] = globals::SBOX[state_2[112+:8]];
    state_2[120+:8] = globals::SBOX[state_2[120+:8]];

    //$display("After SubBytes: %h", state_2);

    // Applying ShiftRows operation on the state_2
    {state_2[(0 * 8)+0 +:8], state_2[(0 * 8)+32 +:8], state_2[(0 * 8)+64 +:8], state_2[(0 * 8)+96 +:8]} =
                        {state_2[(0 * 8)+0 +:8], state_2[(0 * 8)+32 +:8], state_2[(0 * 8)+64 +:8], state_2[(0 * 8)+96 +:8]};
    {state_2[(1 * 8)+0 +:8], state_2[(1 * 8)+32 +:8], state_2[(1 * 8)+64 +:8], state_2[(1 * 8)+96 +:8]} =
                        {state_2[(1 * 8)+32 +:8], state_2[(1 * 8)+64 +:8], state_2[(1 * 8)+96 +:8], state_2[(1 * 8)+0 +:8]};
    {state_2[(2 * 8)+0 +:8], state_2[(2 * 8)+32 +:8], state_2[(2 * 8)+64 +:8], state_2[(2 * 8)+96 +:8]} =
                        {state_2[(2 * 8)+64 +:8], state_2[(2 * 8)+96 +:8], state_2[(2 * 8)+0 +:8], state_2[(2 * 8)+32 +:8]};
    {state_2[(3 * 8)+0 +:8], state_2[(3 * 8)+32 +:8], state_2[(3 * 8)+64 +:8], state_2[(3 * 8)+96 +:8]} =
                        {state_2[(3 * 8)+96 +:8], state_2[(3 * 8)+0 +:8], state_2[(3 * 8)+32 +:8], state_2[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_2);

    // Applying MixColumns operation
    mix_column_state_2[0*32+0  +:8]  = globals::gf_table_2[state_2[0*32+0+:8]] ^ globals::gf_table_3[state_2[0*32+8+:8]] ^ state_2[0*32+16+:8] ^ state_2[0*32+24+:8];
    mix_column_state_2[0*32+8  +:8]  = state_2[0*32+0+:8] ^ globals::gf_table_2[state_2[0*32+8+:8]] ^ globals::gf_table_3[state_2[0*32+16+:8]] ^ state_2[0*32+24+:8];
    mix_column_state_2[0*32+16 +:8]  = state_2[0*32+0+:8] ^ state_2[0*32+8+:8] ^ globals::gf_table_2[state_2[0*32+16+:8]] ^ globals::gf_table_3[state_2[0*32+24+:8]];
    mix_column_state_2[0*32+24 +:8]  = globals::gf_table_3[state_2[0*32+0+:8]] ^ state_2[0*32+8+:8] ^ state_2[0*32+16+:8] ^ globals::gf_table_2[state_2[0*32+24+:8]];

    mix_column_state_2[1*32+0  +:8]  = globals::gf_table_2[state_2[1*32+0+:8]] ^ globals::gf_table_3[state_2[1*32+8+:8]] ^ state_2[1*32+16+:8] ^ state_2[1*32+24+:8];
    mix_column_state_2[1*32+8  +:8]  = state_2[1*32+0+:8] ^ globals::gf_table_2[state_2[1*32+8+:8]] ^ globals::gf_table_3[state_2[1*32+16+:8]] ^ state_2[1*32+24+:8];
    mix_column_state_2[1*32+16 +:8]  = state_2[1*32+0+:8] ^ state_2[1*32+8+:8] ^ globals::gf_table_2[state_2[1*32+16+:8]] ^ globals::gf_table_3[state_2[1*32+24+:8]];
    mix_column_state_2[1*32+24 +:8]  = globals::gf_table_3[state_2[1*32+0+:8]] ^ state_2[1*32+8+:8] ^ state_2[1*32+16+:8] ^ globals::gf_table_2[state_2[1*32+24+:8]];

    mix_column_state_2[2*32+0  +:8]  = globals::gf_table_2[state_2[2*32+0+:8]] ^ globals::gf_table_3[state_2[2*32+8+:8]] ^ state_2[2*32+16+:8] ^ state_2[2*32+24+:8];
    mix_column_state_2[2*32+8  +:8]  = state_2[2*32+0+:8] ^ globals::gf_table_2[state_2[2*32+8+:8]] ^ globals::gf_table_3[state_2[2*32+16+:8]] ^ state_2[2*32+24+:8];
    mix_column_state_2[2*32+16 +:8]  = state_2[2*32+0+:8] ^ state_2[2*32+8+:8] ^ globals::gf_table_2[state_2[2*32+16+:8]] ^ globals::gf_table_3[state_2[2*32+24+:8]];
    mix_column_state_2[2*32+24 +:8]  = globals::gf_table_3[state_2[2*32+0+:8]] ^ state_2[2*32+8+:8] ^ state_2[2*32+16+:8] ^ globals::gf_table_2[state_2[2*32+24+:8]];

    mix_column_state_2[3*32+0  +:8]  = globals::gf_table_2[state_2[3*32+0+:8]] ^ globals::gf_table_3[state_2[3*32+8+:8]] ^ state_2[3*32+16+:8] ^ state_2[3*32+24+:8];
    mix_column_state_2[3*32+8  +:8]  = state_2[3*32+0+:8] ^ globals::gf_table_2[state_2[3*32+8+:8]] ^ globals::gf_table_3[state_2[3*32+16+:8]] ^ state_2[3*32+24+:8];
    mix_column_state_2[3*32+16 +:8]  = state_2[3*32+0+:8] ^ state_2[3*32+8+:8] ^ globals::gf_table_2[state_2[3*32+16+:8]] ^ globals::gf_table_3[state_2[3*32+24+:8]];
    mix_column_state_2[3*32+24 +:8]  = globals::gf_table_3[state_2[3*32+0+:8]] ^ state_2[3*32+8+:8] ^ state_2[3*32+16+:8] ^ globals::gf_table_2[state_2[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_2);

    // Applying AddRoundKey operation to the state
    state_3 = mix_column_state_2 ^ globals::key_schedule[3*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[3*128 +:128]);
    //$display("After AddRoundKey %h", state_3);

    //$display("-------------------- Round 4 --------------------");
    //$display("State: %h", state_3);

    // Applying SubBytes operation
    state_3[0+:8]   = globals::SBOX[state_3[0+:8]];
    state_3[8+:8]   = globals::SBOX[state_3[8+:8]];
    state_3[16+:8]  = globals::SBOX[state_3[16+:8]];
    state_3[24+:8]  = globals::SBOX[state_3[24+:8]];
    state_3[32+:8]  = globals::SBOX[state_3[32+:8]];
    state_3[40+:8]  = globals::SBOX[state_3[40+:8]];
    state_3[48+:8]  = globals::SBOX[state_3[48+:8]];
    state_3[56+:8]  = globals::SBOX[state_3[56+:8]];
    state_3[64+:8]  = globals::SBOX[state_3[64+:8]];
    state_3[72+:8]  = globals::SBOX[state_3[72+:8]];
    state_3[80+:8]  = globals::SBOX[state_3[80+:8]];
    state_3[88+:8]  = globals::SBOX[state_3[88+:8]];
    state_3[96+:8]  = globals::SBOX[state_3[96+:8]];
    state_3[104+:8] = globals::SBOX[state_3[104+:8]];
    state_3[112+:8] = globals::SBOX[state_3[112+:8]];
    state_3[120+:8] = globals::SBOX[state_3[120+:8]];

    //$display("After SubBytes: %h", state_3);

    // Applying ShiftRows operation on the state_3
    {state_3[(0 * 8)+0 +:8], state_3[(0 * 8)+32 +:8], state_3[(0 * 8)+64 +:8], state_3[(0 * 8)+96 +:8]} =
                        {state_3[(0 * 8)+0 +:8], state_3[(0 * 8)+32 +:8], state_3[(0 * 8)+64 +:8], state_3[(0 * 8)+96 +:8]};
    {state_3[(1 * 8)+0 +:8], state_3[(1 * 8)+32 +:8], state_3[(1 * 8)+64 +:8], state_3[(1 * 8)+96 +:8]} =
                        {state_3[(1 * 8)+32 +:8], state_3[(1 * 8)+64 +:8], state_3[(1 * 8)+96 +:8], state_3[(1 * 8)+0 +:8]};
    {state_3[(2 * 8)+0 +:8], state_3[(2 * 8)+32 +:8], state_3[(2 * 8)+64 +:8], state_3[(2 * 8)+96 +:8]} =
                        {state_3[(2 * 8)+64 +:8], state_3[(2 * 8)+96 +:8], state_3[(2 * 8)+0 +:8], state_3[(2 * 8)+32 +:8]};
    {state_3[(3 * 8)+0 +:8], state_3[(3 * 8)+32 +:8], state_3[(3 * 8)+64 +:8], state_3[(3 * 8)+96 +:8]} =
                        {state_3[(3 * 8)+96 +:8], state_3[(3 * 8)+0 +:8], state_3[(3 * 8)+32 +:8], state_3[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_3);

    // Applying MixColumns operation
    mix_column_state_3[0*32+0  +:8]  = globals::gf_table_2[state_3[0*32+0+:8]] ^ globals::gf_table_3[state_3[0*32+8+:8]] ^ state_3[0*32+16+:8] ^ state_3[0*32+24+:8];
    mix_column_state_3[0*32+8  +:8]  = state_3[0*32+0+:8] ^ globals::gf_table_2[state_3[0*32+8+:8]] ^ globals::gf_table_3[state_3[0*32+16+:8]] ^ state_3[0*32+24+:8];
    mix_column_state_3[0*32+16 +:8]  = state_3[0*32+0+:8] ^ state_3[0*32+8+:8] ^ globals::gf_table_2[state_3[0*32+16+:8]] ^ globals::gf_table_3[state_3[0*32+24+:8]];
    mix_column_state_3[0*32+24 +:8]  = globals::gf_table_3[state_3[0*32+0+:8]] ^ state_3[0*32+8+:8] ^ state_3[0*32+16+:8] ^ globals::gf_table_2[state_3[0*32+24+:8]];

    mix_column_state_3[1*32+0  +:8]  = globals::gf_table_2[state_3[1*32+0+:8]] ^ globals::gf_table_3[state_3[1*32+8+:8]] ^ state_3[1*32+16+:8] ^ state_3[1*32+24+:8];
    mix_column_state_3[1*32+8  +:8]  = state_3[1*32+0+:8] ^ globals::gf_table_2[state_3[1*32+8+:8]] ^ globals::gf_table_3[state_3[1*32+16+:8]] ^ state_3[1*32+24+:8];
    mix_column_state_3[1*32+16 +:8]  = state_3[1*32+0+:8] ^ state_3[1*32+8+:8] ^ globals::gf_table_2[state_3[1*32+16+:8]] ^ globals::gf_table_3[state_3[1*32+24+:8]];
    mix_column_state_3[1*32+24 +:8]  = globals::gf_table_3[state_3[1*32+0+:8]] ^ state_3[1*32+8+:8] ^ state_3[1*32+16+:8] ^ globals::gf_table_2[state_3[1*32+24+:8]];

    mix_column_state_3[2*32+0  +:8]  = globals::gf_table_2[state_3[2*32+0+:8]] ^ globals::gf_table_3[state_3[2*32+8+:8]] ^ state_3[2*32+16+:8] ^ state_3[2*32+24+:8];
    mix_column_state_3[2*32+8  +:8]  = state_3[2*32+0+:8] ^ globals::gf_table_2[state_3[2*32+8+:8]] ^ globals::gf_table_3[state_3[2*32+16+:8]] ^ state_3[2*32+24+:8];
    mix_column_state_3[2*32+16 +:8]  = state_3[2*32+0+:8] ^ state_3[2*32+8+:8] ^ globals::gf_table_2[state_3[2*32+16+:8]] ^ globals::gf_table_3[state_3[2*32+24+:8]];
    mix_column_state_3[2*32+24 +:8]  = globals::gf_table_3[state_3[2*32+0+:8]] ^ state_3[2*32+8+:8] ^ state_3[2*32+16+:8] ^ globals::gf_table_2[state_3[2*32+24+:8]];

    mix_column_state_3[3*32+0  +:8]  = globals::gf_table_2[state_3[3*32+0+:8]] ^ globals::gf_table_3[state_3[3*32+8+:8]] ^ state_3[3*32+16+:8] ^ state_3[3*32+24+:8];
    mix_column_state_3[3*32+8  +:8]  = state_3[3*32+0+:8] ^ globals::gf_table_2[state_3[3*32+8+:8]] ^ globals::gf_table_3[state_3[3*32+16+:8]] ^ state_3[3*32+24+:8];
    mix_column_state_3[3*32+16 +:8]  = state_3[3*32+0+:8] ^ state_3[3*32+8+:8] ^ globals::gf_table_2[state_3[3*32+16+:8]] ^ globals::gf_table_3[state_3[3*32+24+:8]];
    mix_column_state_3[3*32+24 +:8]  = globals::gf_table_3[state_3[3*32+0+:8]] ^ state_3[3*32+8+:8] ^ state_3[3*32+16+:8] ^ globals::gf_table_2[state_3[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_3);

    // Applying AddRoundKey operation to the state
    state_4 = mix_column_state_3 ^ globals::key_schedule[4*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[4*128 +:128]);
    //$display("After AddRoundKey %h", state_4);

    //$display("-------------------- Round 5 --------------------");
    //$display("State: %h", state_4);

    // Applying SubBytes operation
    state_4[0+:8]   = globals::SBOX[state_4[0+:8]];
    state_4[8+:8]   = globals::SBOX[state_4[8+:8]];
    state_4[16+:8]  = globals::SBOX[state_4[16+:8]];
    state_4[24+:8]  = globals::SBOX[state_4[24+:8]];
    state_4[32+:8]  = globals::SBOX[state_4[32+:8]];
    state_4[40+:8]  = globals::SBOX[state_4[40+:8]];
    state_4[48+:8]  = globals::SBOX[state_4[48+:8]];
    state_4[56+:8]  = globals::SBOX[state_4[56+:8]];
    state_4[64+:8]  = globals::SBOX[state_4[64+:8]];
    state_4[72+:8]  = globals::SBOX[state_4[72+:8]];
    state_4[80+:8]  = globals::SBOX[state_4[80+:8]];
    state_4[88+:8]  = globals::SBOX[state_4[88+:8]];
    state_4[96+:8]  = globals::SBOX[state_4[96+:8]];
    state_4[104+:8] = globals::SBOX[state_4[104+:8]];
    state_4[112+:8] = globals::SBOX[state_4[112+:8]];
    state_4[120+:8] = globals::SBOX[state_4[120+:8]];

    //$display("After SubBytes: %h", state_4);

    // Applying ShiftRows operation on the state_4
    {state_4[(0 * 8)+0 +:8], state_4[(0 * 8)+32 +:8], state_4[(0 * 8)+64 +:8], state_4[(0 * 8)+96 +:8]} =
                        {state_4[(0 * 8)+0 +:8], state_4[(0 * 8)+32 +:8], state_4[(0 * 8)+64 +:8], state_4[(0 * 8)+96 +:8]};
    {state_4[(1 * 8)+0 +:8], state_4[(1 * 8)+32 +:8], state_4[(1 * 8)+64 +:8], state_4[(1 * 8)+96 +:8]} =
                        {state_4[(1 * 8)+32 +:8], state_4[(1 * 8)+64 +:8], state_4[(1 * 8)+96 +:8], state_4[(1 * 8)+0 +:8]};
    {state_4[(2 * 8)+0 +:8], state_4[(2 * 8)+32 +:8], state_4[(2 * 8)+64 +:8], state_4[(2 * 8)+96 +:8]} =
                        {state_4[(2 * 8)+64 +:8], state_4[(2 * 8)+96 +:8], state_4[(2 * 8)+0 +:8], state_4[(2 * 8)+32 +:8]};
    {state_4[(3 * 8)+0 +:8], state_4[(3 * 8)+32 +:8], state_4[(3 * 8)+64 +:8], state_4[(3 * 8)+96 +:8]} =
                        {state_4[(3 * 8)+96 +:8], state_4[(3 * 8)+0 +:8], state_4[(3 * 8)+32 +:8], state_4[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_4);

    // Applying MixColumns operation
    mix_column_state_4[0*32+0  +:8]  = globals::gf_table_2[state_4[0*32+0+:8]] ^ globals::gf_table_3[state_4[0*32+8+:8]] ^ state_4[0*32+16+:8] ^ state_4[0*32+24+:8];
    mix_column_state_4[0*32+8  +:8]  = state_4[0*32+0+:8] ^ globals::gf_table_2[state_4[0*32+8+:8]] ^ globals::gf_table_3[state_4[0*32+16+:8]] ^ state_4[0*32+24+:8];
    mix_column_state_4[0*32+16 +:8]  = state_4[0*32+0+:8] ^ state_4[0*32+8+:8] ^ globals::gf_table_2[state_4[0*32+16+:8]] ^ globals::gf_table_3[state_4[0*32+24+:8]];
    mix_column_state_4[0*32+24 +:8]  = globals::gf_table_3[state_4[0*32+0+:8]] ^ state_4[0*32+8+:8] ^ state_4[0*32+16+:8] ^ globals::gf_table_2[state_4[0*32+24+:8]];

    mix_column_state_4[1*32+0  +:8]  = globals::gf_table_2[state_4[1*32+0+:8]] ^ globals::gf_table_3[state_4[1*32+8+:8]] ^ state_4[1*32+16+:8] ^ state_4[1*32+24+:8];
    mix_column_state_4[1*32+8  +:8]  = state_4[1*32+0+:8] ^ globals::gf_table_2[state_4[1*32+8+:8]] ^ globals::gf_table_3[state_4[1*32+16+:8]] ^ state_4[1*32+24+:8];
    mix_column_state_4[1*32+16 +:8]  = state_4[1*32+0+:8] ^ state_4[1*32+8+:8] ^ globals::gf_table_2[state_4[1*32+16+:8]] ^ globals::gf_table_3[state_4[1*32+24+:8]];
    mix_column_state_4[1*32+24 +:8]  = globals::gf_table_3[state_4[1*32+0+:8]] ^ state_4[1*32+8+:8] ^ state_4[1*32+16+:8] ^ globals::gf_table_2[state_4[1*32+24+:8]];

    mix_column_state_4[2*32+0  +:8]  = globals::gf_table_2[state_4[2*32+0+:8]] ^ globals::gf_table_3[state_4[2*32+8+:8]] ^ state_4[2*32+16+:8] ^ state_4[2*32+24+:8];
    mix_column_state_4[2*32+8  +:8]  = state_4[2*32+0+:8] ^ globals::gf_table_2[state_4[2*32+8+:8]] ^ globals::gf_table_3[state_4[2*32+16+:8]] ^ state_4[2*32+24+:8];
    mix_column_state_4[2*32+16 +:8]  = state_4[2*32+0+:8] ^ state_4[2*32+8+:8] ^ globals::gf_table_2[state_4[2*32+16+:8]] ^ globals::gf_table_3[state_4[2*32+24+:8]];
    mix_column_state_4[2*32+24 +:8]  = globals::gf_table_3[state_4[2*32+0+:8]] ^ state_4[2*32+8+:8] ^ state_4[2*32+16+:8] ^ globals::gf_table_2[state_4[2*32+24+:8]];

    mix_column_state_4[3*32+0  +:8]  = globals::gf_table_2[state_4[3*32+0+:8]] ^ globals::gf_table_3[state_4[3*32+8+:8]] ^ state_4[3*32+16+:8] ^ state_4[3*32+24+:8];
    mix_column_state_4[3*32+8  +:8]  = state_4[3*32+0+:8] ^ globals::gf_table_2[state_4[3*32+8+:8]] ^ globals::gf_table_3[state_4[3*32+16+:8]] ^ state_4[3*32+24+:8];
    mix_column_state_4[3*32+16 +:8]  = state_4[3*32+0+:8] ^ state_4[3*32+8+:8] ^ globals::gf_table_2[state_4[3*32+16+:8]] ^ globals::gf_table_3[state_4[3*32+24+:8]];
    mix_column_state_4[3*32+24 +:8]  = globals::gf_table_3[state_4[3*32+0+:8]] ^ state_4[3*32+8+:8] ^ state_4[3*32+16+:8] ^ globals::gf_table_2[state_4[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_4);

    // Applying AddRoundKey operation to the state
    state_5 = mix_column_state_4 ^ globals::key_schedule[5*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[5*128 +:128]);
    //$display("After AddRoundKey %h", state_5);

    //$display("-------------------- Round 6 --------------------");
    //$display("State: %h", state_5);

    // Applying SubBytes operation
    state_5[0+:8]   = globals::SBOX[state_5[0+:8]];
    state_5[8+:8]   = globals::SBOX[state_5[8+:8]];
    state_5[16+:8]  = globals::SBOX[state_5[16+:8]];
    state_5[24+:8]  = globals::SBOX[state_5[24+:8]];
    state_5[32+:8]  = globals::SBOX[state_5[32+:8]];
    state_5[40+:8]  = globals::SBOX[state_5[40+:8]];
    state_5[48+:8]  = globals::SBOX[state_5[48+:8]];
    state_5[56+:8]  = globals::SBOX[state_5[56+:8]];
    state_5[64+:8]  = globals::SBOX[state_5[64+:8]];
    state_5[72+:8]  = globals::SBOX[state_5[72+:8]];
    state_5[80+:8]  = globals::SBOX[state_5[80+:8]];
    state_5[88+:8]  = globals::SBOX[state_5[88+:8]];
    state_5[96+:8]  = globals::SBOX[state_5[96+:8]];
    state_5[104+:8] = globals::SBOX[state_5[104+:8]];
    state_5[112+:8] = globals::SBOX[state_5[112+:8]];
    state_5[120+:8] = globals::SBOX[state_5[120+:8]];

    //$display("After SubBytes: %h", state_5);

    // Applying ShiftRows operation on the state_5
    {state_5[(0 * 8)+0 +:8], state_5[(0 * 8)+32 +:8], state_5[(0 * 8)+64 +:8], state_5[(0 * 8)+96 +:8]} =
                        {state_5[(0 * 8)+0 +:8], state_5[(0 * 8)+32 +:8], state_5[(0 * 8)+64 +:8], state_5[(0 * 8)+96 +:8]};
    {state_5[(1 * 8)+0 +:8], state_5[(1 * 8)+32 +:8], state_5[(1 * 8)+64 +:8], state_5[(1 * 8)+96 +:8]} =
                        {state_5[(1 * 8)+32 +:8], state_5[(1 * 8)+64 +:8], state_5[(1 * 8)+96 +:8], state_5[(1 * 8)+0 +:8]};
    {state_5[(2 * 8)+0 +:8], state_5[(2 * 8)+32 +:8], state_5[(2 * 8)+64 +:8], state_5[(2 * 8)+96 +:8]} =
                        {state_5[(2 * 8)+64 +:8], state_5[(2 * 8)+96 +:8], state_5[(2 * 8)+0 +:8], state_5[(2 * 8)+32 +:8]};
    {state_5[(3 * 8)+0 +:8], state_5[(3 * 8)+32 +:8], state_5[(3 * 8)+64 +:8], state_5[(3 * 8)+96 +:8]} =
                        {state_5[(3 * 8)+96 +:8], state_5[(3 * 8)+0 +:8], state_5[(3 * 8)+32 +:8], state_5[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_5);

    // Applying MixColumns operation
    mix_column_state_5[0*32+0  +:8]  = globals::gf_table_2[state_5[0*32+0+:8]] ^ globals::gf_table_3[state_5[0*32+8+:8]] ^ state_5[0*32+16+:8] ^ state_5[0*32+24+:8];
    mix_column_state_5[0*32+8  +:8]  = state_5[0*32+0+:8] ^ globals::gf_table_2[state_5[0*32+8+:8]] ^ globals::gf_table_3[state_5[0*32+16+:8]] ^ state_5[0*32+24+:8];
    mix_column_state_5[0*32+16 +:8]  = state_5[0*32+0+:8] ^ state_5[0*32+8+:8] ^ globals::gf_table_2[state_5[0*32+16+:8]] ^ globals::gf_table_3[state_5[0*32+24+:8]];
    mix_column_state_5[0*32+24 +:8]  = globals::gf_table_3[state_5[0*32+0+:8]] ^ state_5[0*32+8+:8] ^ state_5[0*32+16+:8] ^ globals::gf_table_2[state_5[0*32+24+:8]];

    mix_column_state_5[1*32+0  +:8]  = globals::gf_table_2[state_5[1*32+0+:8]] ^ globals::gf_table_3[state_5[1*32+8+:8]] ^ state_5[1*32+16+:8] ^ state_5[1*32+24+:8];
    mix_column_state_5[1*32+8  +:8]  = state_5[1*32+0+:8] ^ globals::gf_table_2[state_5[1*32+8+:8]] ^ globals::gf_table_3[state_5[1*32+16+:8]] ^ state_5[1*32+24+:8];
    mix_column_state_5[1*32+16 +:8]  = state_5[1*32+0+:8] ^ state_5[1*32+8+:8] ^ globals::gf_table_2[state_5[1*32+16+:8]] ^ globals::gf_table_3[state_5[1*32+24+:8]];
    mix_column_state_5[1*32+24 +:8]  = globals::gf_table_3[state_5[1*32+0+:8]] ^ state_5[1*32+8+:8] ^ state_5[1*32+16+:8] ^ globals::gf_table_2[state_5[1*32+24+:8]];

    mix_column_state_5[2*32+0  +:8]  = globals::gf_table_2[state_5[2*32+0+:8]] ^ globals::gf_table_3[state_5[2*32+8+:8]] ^ state_5[2*32+16+:8] ^ state_5[2*32+24+:8];
    mix_column_state_5[2*32+8  +:8]  = state_5[2*32+0+:8] ^ globals::gf_table_2[state_5[2*32+8+:8]] ^ globals::gf_table_3[state_5[2*32+16+:8]] ^ state_5[2*32+24+:8];
    mix_column_state_5[2*32+16 +:8]  = state_5[2*32+0+:8] ^ state_5[2*32+8+:8] ^ globals::gf_table_2[state_5[2*32+16+:8]] ^ globals::gf_table_3[state_5[2*32+24+:8]];
    mix_column_state_5[2*32+24 +:8]  = globals::gf_table_3[state_5[2*32+0+:8]] ^ state_5[2*32+8+:8] ^ state_5[2*32+16+:8] ^ globals::gf_table_2[state_5[2*32+24+:8]];

    mix_column_state_5[3*32+0  +:8]  = globals::gf_table_2[state_5[3*32+0+:8]] ^ globals::gf_table_3[state_5[3*32+8+:8]] ^ state_5[3*32+16+:8] ^ state_5[3*32+24+:8];
    mix_column_state_5[3*32+8  +:8]  = state_5[3*32+0+:8] ^ globals::gf_table_2[state_5[3*32+8+:8]] ^ globals::gf_table_3[state_5[3*32+16+:8]] ^ state_5[3*32+24+:8];
    mix_column_state_5[3*32+16 +:8]  = state_5[3*32+0+:8] ^ state_5[3*32+8+:8] ^ globals::gf_table_2[state_5[3*32+16+:8]] ^ globals::gf_table_3[state_5[3*32+24+:8]];
    mix_column_state_5[3*32+24 +:8]  = globals::gf_table_3[state_5[3*32+0+:8]] ^ state_5[3*32+8+:8] ^ state_5[3*32+16+:8] ^ globals::gf_table_2[state_5[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_5);

    // Applying AddRoundKey operation to the state
    state_6 = mix_column_state_5 ^ globals::key_schedule[6*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[6*128 +:128]);
    //$display("After AddRoundKey %h", state_6);

    //$display("-------------------- Round 7 --------------------");
    //$display("State: %h", state_6);

    // Applying SubBytes operation
    state_6[0+:8]   = globals::SBOX[state_6[0+:8]];
    state_6[8+:8]   = globals::SBOX[state_6[8+:8]];
    state_6[16+:8]  = globals::SBOX[state_6[16+:8]];
    state_6[24+:8]  = globals::SBOX[state_6[24+:8]];
    state_6[32+:8]  = globals::SBOX[state_6[32+:8]];
    state_6[40+:8]  = globals::SBOX[state_6[40+:8]];
    state_6[48+:8]  = globals::SBOX[state_6[48+:8]];
    state_6[56+:8]  = globals::SBOX[state_6[56+:8]];
    state_6[64+:8]  = globals::SBOX[state_6[64+:8]];
    state_6[72+:8]  = globals::SBOX[state_6[72+:8]];
    state_6[80+:8]  = globals::SBOX[state_6[80+:8]];
    state_6[88+:8]  = globals::SBOX[state_6[88+:8]];
    state_6[96+:8]  = globals::SBOX[state_6[96+:8]];
    state_6[104+:8] = globals::SBOX[state_6[104+:8]];
    state_6[112+:8] = globals::SBOX[state_6[112+:8]];
    state_6[120+:8] = globals::SBOX[state_6[120+:8]];

    //$display("After SubBytes: %h", state_6);

    // Applying ShiftRows operation on the state_6
    {state_6[(0 * 8)+0 +:8], state_6[(0 * 8)+32 +:8], state_6[(0 * 8)+64 +:8], state_6[(0 * 8)+96 +:8]} =
                        {state_6[(0 * 8)+0 +:8], state_6[(0 * 8)+32 +:8], state_6[(0 * 8)+64 +:8], state_6[(0 * 8)+96 +:8]};
    {state_6[(1 * 8)+0 +:8], state_6[(1 * 8)+32 +:8], state_6[(1 * 8)+64 +:8], state_6[(1 * 8)+96 +:8]} =
                        {state_6[(1 * 8)+32 +:8], state_6[(1 * 8)+64 +:8], state_6[(1 * 8)+96 +:8], state_6[(1 * 8)+0 +:8]};
    {state_6[(2 * 8)+0 +:8], state_6[(2 * 8)+32 +:8], state_6[(2 * 8)+64 +:8], state_6[(2 * 8)+96 +:8]} =
                        {state_6[(2 * 8)+64 +:8], state_6[(2 * 8)+96 +:8], state_6[(2 * 8)+0 +:8], state_6[(2 * 8)+32 +:8]};
    {state_6[(3 * 8)+0 +:8], state_6[(3 * 8)+32 +:8], state_6[(3 * 8)+64 +:8], state_6[(3 * 8)+96 +:8]} =
                        {state_6[(3 * 8)+96 +:8], state_6[(3 * 8)+0 +:8], state_6[(3 * 8)+32 +:8], state_6[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_6);

    // Applying MixColumns operation
    mix_column_state_6[0*32+0  +:8]  = globals::gf_table_2[state_6[0*32+0+:8]] ^ globals::gf_table_3[state_6[0*32+8+:8]] ^ state_6[0*32+16+:8] ^ state_6[0*32+24+:8];
    mix_column_state_6[0*32+8  +:8]  = state_6[0*32+0+:8] ^ globals::gf_table_2[state_6[0*32+8+:8]] ^ globals::gf_table_3[state_6[0*32+16+:8]] ^ state_6[0*32+24+:8];
    mix_column_state_6[0*32+16 +:8]  = state_6[0*32+0+:8] ^ state_6[0*32+8+:8] ^ globals::gf_table_2[state_6[0*32+16+:8]] ^ globals::gf_table_3[state_6[0*32+24+:8]];
    mix_column_state_6[0*32+24 +:8]  = globals::gf_table_3[state_6[0*32+0+:8]] ^ state_6[0*32+8+:8] ^ state_6[0*32+16+:8] ^ globals::gf_table_2[state_6[0*32+24+:8]];

    mix_column_state_6[1*32+0  +:8]  = globals::gf_table_2[state_6[1*32+0+:8]] ^ globals::gf_table_3[state_6[1*32+8+:8]] ^ state_6[1*32+16+:8] ^ state_6[1*32+24+:8];
    mix_column_state_6[1*32+8  +:8]  = state_6[1*32+0+:8] ^ globals::gf_table_2[state_6[1*32+8+:8]] ^ globals::gf_table_3[state_6[1*32+16+:8]] ^ state_6[1*32+24+:8];
    mix_column_state_6[1*32+16 +:8]  = state_6[1*32+0+:8] ^ state_6[1*32+8+:8] ^ globals::gf_table_2[state_6[1*32+16+:8]] ^ globals::gf_table_3[state_6[1*32+24+:8]];
    mix_column_state_6[1*32+24 +:8]  = globals::gf_table_3[state_6[1*32+0+:8]] ^ state_6[1*32+8+:8] ^ state_6[1*32+16+:8] ^ globals::gf_table_2[state_6[1*32+24+:8]];

    mix_column_state_6[2*32+0  +:8]  = globals::gf_table_2[state_6[2*32+0+:8]] ^ globals::gf_table_3[state_6[2*32+8+:8]] ^ state_6[2*32+16+:8] ^ state_6[2*32+24+:8];
    mix_column_state_6[2*32+8  +:8]  = state_6[2*32+0+:8] ^ globals::gf_table_2[state_6[2*32+8+:8]] ^ globals::gf_table_3[state_6[2*32+16+:8]] ^ state_6[2*32+24+:8];
    mix_column_state_6[2*32+16 +:8]  = state_6[2*32+0+:8] ^ state_6[2*32+8+:8] ^ globals::gf_table_2[state_6[2*32+16+:8]] ^ globals::gf_table_3[state_6[2*32+24+:8]];
    mix_column_state_6[2*32+24 +:8]  = globals::gf_table_3[state_6[2*32+0+:8]] ^ state_6[2*32+8+:8] ^ state_6[2*32+16+:8] ^ globals::gf_table_2[state_6[2*32+24+:8]];

    mix_column_state_6[3*32+0  +:8]  = globals::gf_table_2[state_6[3*32+0+:8]] ^ globals::gf_table_3[state_6[3*32+8+:8]] ^ state_6[3*32+16+:8] ^ state_6[3*32+24+:8];
    mix_column_state_6[3*32+8  +:8]  = state_6[3*32+0+:8] ^ globals::gf_table_2[state_6[3*32+8+:8]] ^ globals::gf_table_3[state_6[3*32+16+:8]] ^ state_6[3*32+24+:8];
    mix_column_state_6[3*32+16 +:8]  = state_6[3*32+0+:8] ^ state_6[3*32+8+:8] ^ globals::gf_table_2[state_6[3*32+16+:8]] ^ globals::gf_table_3[state_6[3*32+24+:8]];
    mix_column_state_6[3*32+24 +:8]  = globals::gf_table_3[state_6[3*32+0+:8]] ^ state_6[3*32+8+:8] ^ state_6[3*32+16+:8] ^ globals::gf_table_2[state_6[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_6);

    // Applying AddRoundKey operation to the state
    state_7 = mix_column_state_6 ^ globals::key_schedule[7*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[7*128 +:128]);
    //$display("After AddRoundKey %h", state_7);

    //$display("-------------------- Round 8 --------------------");
    //$display("State: %h", state_7);

    // Applying SubBytes operation
    state_7[0+:8]   = globals::SBOX[state_7[0+:8]];
    state_7[8+:8]   = globals::SBOX[state_7[8+:8]];
    state_7[16+:8]  = globals::SBOX[state_7[16+:8]];
    state_7[24+:8]  = globals::SBOX[state_7[24+:8]];
    state_7[32+:8]  = globals::SBOX[state_7[32+:8]];
    state_7[40+:8]  = globals::SBOX[state_7[40+:8]];
    state_7[48+:8]  = globals::SBOX[state_7[48+:8]];
    state_7[56+:8]  = globals::SBOX[state_7[56+:8]];
    state_7[64+:8]  = globals::SBOX[state_7[64+:8]];
    state_7[72+:8]  = globals::SBOX[state_7[72+:8]];
    state_7[80+:8]  = globals::SBOX[state_7[80+:8]];
    state_7[88+:8]  = globals::SBOX[state_7[88+:8]];
    state_7[96+:8]  = globals::SBOX[state_7[96+:8]];
    state_7[104+:8] = globals::SBOX[state_7[104+:8]];
    state_7[112+:8] = globals::SBOX[state_7[112+:8]];
    state_7[120+:8] = globals::SBOX[state_7[120+:8]];

    //$display("After SubBytes: %h", state_7);

    // Applying ShiftRows operation on the state_7
    {state_7[(0 * 8)+0 +:8], state_7[(0 * 8)+32 +:8], state_7[(0 * 8)+64 +:8], state_7[(0 * 8)+96 +:8]} =
                        {state_7[(0 * 8)+0 +:8], state_7[(0 * 8)+32 +:8], state_7[(0 * 8)+64 +:8], state_7[(0 * 8)+96 +:8]};
    {state_7[(1 * 8)+0 +:8], state_7[(1 * 8)+32 +:8], state_7[(1 * 8)+64 +:8], state_7[(1 * 8)+96 +:8]} =
                        {state_7[(1 * 8)+32 +:8], state_7[(1 * 8)+64 +:8], state_7[(1 * 8)+96 +:8], state_7[(1 * 8)+0 +:8]};
    {state_7[(2 * 8)+0 +:8], state_7[(2 * 8)+32 +:8], state_7[(2 * 8)+64 +:8], state_7[(2 * 8)+96 +:8]} =
                        {state_7[(2 * 8)+64 +:8], state_7[(2 * 8)+96 +:8], state_7[(2 * 8)+0 +:8], state_7[(2 * 8)+32 +:8]};
    {state_7[(3 * 8)+0 +:8], state_7[(3 * 8)+32 +:8], state_7[(3 * 8)+64 +:8], state_7[(3 * 8)+96 +:8]} =
                        {state_7[(3 * 8)+96 +:8], state_7[(3 * 8)+0 +:8], state_7[(3 * 8)+32 +:8], state_7[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_7);

    // Applying MixColumns operation
    mix_column_state_7[0*32+0  +:8]  = globals::gf_table_2[state_7[0*32+0+:8]] ^ globals::gf_table_3[state_7[0*32+8+:8]] ^ state_7[0*32+16+:8] ^ state_7[0*32+24+:8];
    mix_column_state_7[0*32+8  +:8]  = state_7[0*32+0+:8] ^ globals::gf_table_2[state_7[0*32+8+:8]] ^ globals::gf_table_3[state_7[0*32+16+:8]] ^ state_7[0*32+24+:8];
    mix_column_state_7[0*32+16 +:8]  = state_7[0*32+0+:8] ^ state_7[0*32+8+:8] ^ globals::gf_table_2[state_7[0*32+16+:8]] ^ globals::gf_table_3[state_7[0*32+24+:8]];
    mix_column_state_7[0*32+24 +:8]  = globals::gf_table_3[state_7[0*32+0+:8]] ^ state_7[0*32+8+:8] ^ state_7[0*32+16+:8] ^ globals::gf_table_2[state_7[0*32+24+:8]];

    mix_column_state_7[1*32+0  +:8]  = globals::gf_table_2[state_7[1*32+0+:8]] ^ globals::gf_table_3[state_7[1*32+8+:8]] ^ state_7[1*32+16+:8] ^ state_7[1*32+24+:8];
    mix_column_state_7[1*32+8  +:8]  = state_7[1*32+0+:8] ^ globals::gf_table_2[state_7[1*32+8+:8]] ^ globals::gf_table_3[state_7[1*32+16+:8]] ^ state_7[1*32+24+:8];
    mix_column_state_7[1*32+16 +:8]  = state_7[1*32+0+:8] ^ state_7[1*32+8+:8] ^ globals::gf_table_2[state_7[1*32+16+:8]] ^ globals::gf_table_3[state_7[1*32+24+:8]];
    mix_column_state_7[1*32+24 +:8]  = globals::gf_table_3[state_7[1*32+0+:8]] ^ state_7[1*32+8+:8] ^ state_7[1*32+16+:8] ^ globals::gf_table_2[state_7[1*32+24+:8]];

    mix_column_state_7[2*32+0  +:8]  = globals::gf_table_2[state_7[2*32+0+:8]] ^ globals::gf_table_3[state_7[2*32+8+:8]] ^ state_7[2*32+16+:8] ^ state_7[2*32+24+:8];
    mix_column_state_7[2*32+8  +:8]  = state_7[2*32+0+:8] ^ globals::gf_table_2[state_7[2*32+8+:8]] ^ globals::gf_table_3[state_7[2*32+16+:8]] ^ state_7[2*32+24+:8];
    mix_column_state_7[2*32+16 +:8]  = state_7[2*32+0+:8] ^ state_7[2*32+8+:8] ^ globals::gf_table_2[state_7[2*32+16+:8]] ^ globals::gf_table_3[state_7[2*32+24+:8]];
    mix_column_state_7[2*32+24 +:8]  = globals::gf_table_3[state_7[2*32+0+:8]] ^ state_7[2*32+8+:8] ^ state_7[2*32+16+:8] ^ globals::gf_table_2[state_7[2*32+24+:8]];

    mix_column_state_7[3*32+0  +:8]  = globals::gf_table_2[state_7[3*32+0+:8]] ^ globals::gf_table_3[state_7[3*32+8+:8]] ^ state_7[3*32+16+:8] ^ state_7[3*32+24+:8];
    mix_column_state_7[3*32+8  +:8]  = state_7[3*32+0+:8] ^ globals::gf_table_2[state_7[3*32+8+:8]] ^ globals::gf_table_3[state_7[3*32+16+:8]] ^ state_7[3*32+24+:8];
    mix_column_state_7[3*32+16 +:8]  = state_7[3*32+0+:8] ^ state_7[3*32+8+:8] ^ globals::gf_table_2[state_7[3*32+16+:8]] ^ globals::gf_table_3[state_7[3*32+24+:8]];
    mix_column_state_7[3*32+24 +:8]  = globals::gf_table_3[state_7[3*32+0+:8]] ^ state_7[3*32+8+:8] ^ state_7[3*32+16+:8] ^ globals::gf_table_2[state_7[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_7);

    // Applying AddRoundKey operation to the state
    state_8 = mix_column_state_7 ^ globals::key_schedule[8*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[8*128 +:128]);
    //$display("After AddRoundKey %h", state_8);

    //$display("-------------------- Round 9 --------------------");
    //$display("State: %h", state_8);

    // Applying SubBytes operation
    state_8[0+:8]   = globals::SBOX[state_8[0+:8]];
    state_8[8+:8]   = globals::SBOX[state_8[8+:8]];
    state_8[16+:8]  = globals::SBOX[state_8[16+:8]];
    state_8[24+:8]  = globals::SBOX[state_8[24+:8]];
    state_8[32+:8]  = globals::SBOX[state_8[32+:8]];
    state_8[40+:8]  = globals::SBOX[state_8[40+:8]];
    state_8[48+:8]  = globals::SBOX[state_8[48+:8]];
    state_8[56+:8]  = globals::SBOX[state_8[56+:8]];
    state_8[64+:8]  = globals::SBOX[state_8[64+:8]];
    state_8[72+:8]  = globals::SBOX[state_8[72+:8]];
    state_8[80+:8]  = globals::SBOX[state_8[80+:8]];
    state_8[88+:8]  = globals::SBOX[state_8[88+:8]];
    state_8[96+:8]  = globals::SBOX[state_8[96+:8]];
    state_8[104+:8] = globals::SBOX[state_8[104+:8]];
    state_8[112+:8] = globals::SBOX[state_8[112+:8]];
    state_8[120+:8] = globals::SBOX[state_8[120+:8]];

    //$display("After SubBytes: %h", state_8);

    // Applying ShiftRows operation on the state_8
    {state_8[(0 * 8)+0 +:8], state_8[(0 * 8)+32 +:8], state_8[(0 * 8)+64 +:8], state_8[(0 * 8)+96 +:8]} =
                        {state_8[(0 * 8)+0 +:8], state_8[(0 * 8)+32 +:8], state_8[(0 * 8)+64 +:8], state_8[(0 * 8)+96 +:8]};
    {state_8[(1 * 8)+0 +:8], state_8[(1 * 8)+32 +:8], state_8[(1 * 8)+64 +:8], state_8[(1 * 8)+96 +:8]} =
                        {state_8[(1 * 8)+32 +:8], state_8[(1 * 8)+64 +:8], state_8[(1 * 8)+96 +:8], state_8[(1 * 8)+0 +:8]};
    {state_8[(2 * 8)+0 +:8], state_8[(2 * 8)+32 +:8], state_8[(2 * 8)+64 +:8], state_8[(2 * 8)+96 +:8]} =
                        {state_8[(2 * 8)+64 +:8], state_8[(2 * 8)+96 +:8], state_8[(2 * 8)+0 +:8], state_8[(2 * 8)+32 +:8]};
    {state_8[(3 * 8)+0 +:8], state_8[(3 * 8)+32 +:8], state_8[(3 * 8)+64 +:8], state_8[(3 * 8)+96 +:8]} =
                        {state_8[(3 * 8)+96 +:8], state_8[(3 * 8)+0 +:8], state_8[(3 * 8)+32 +:8], state_8[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_8);

    // Applying MixColumns operation
    mix_column_state_8[0*32+0  +:8]  = globals::gf_table_2[state_8[0*32+0+:8]] ^ globals::gf_table_3[state_8[0*32+8+:8]] ^ state_8[0*32+16+:8] ^ state_8[0*32+24+:8];
    mix_column_state_8[0*32+8  +:8]  = state_8[0*32+0+:8] ^ globals::gf_table_2[state_8[0*32+8+:8]] ^ globals::gf_table_3[state_8[0*32+16+:8]] ^ state_8[0*32+24+:8];
    mix_column_state_8[0*32+16 +:8]  = state_8[0*32+0+:8] ^ state_8[0*32+8+:8] ^ globals::gf_table_2[state_8[0*32+16+:8]] ^ globals::gf_table_3[state_8[0*32+24+:8]];
    mix_column_state_8[0*32+24 +:8]  = globals::gf_table_3[state_8[0*32+0+:8]] ^ state_8[0*32+8+:8] ^ state_8[0*32+16+:8] ^ globals::gf_table_2[state_8[0*32+24+:8]];

    mix_column_state_8[1*32+0  +:8]  = globals::gf_table_2[state_8[1*32+0+:8]] ^ globals::gf_table_3[state_8[1*32+8+:8]] ^ state_8[1*32+16+:8] ^ state_8[1*32+24+:8];
    mix_column_state_8[1*32+8  +:8]  = state_8[1*32+0+:8] ^ globals::gf_table_2[state_8[1*32+8+:8]] ^ globals::gf_table_3[state_8[1*32+16+:8]] ^ state_8[1*32+24+:8];
    mix_column_state_8[1*32+16 +:8]  = state_8[1*32+0+:8] ^ state_8[1*32+8+:8] ^ globals::gf_table_2[state_8[1*32+16+:8]] ^ globals::gf_table_3[state_8[1*32+24+:8]];
    mix_column_state_8[1*32+24 +:8]  = globals::gf_table_3[state_8[1*32+0+:8]] ^ state_8[1*32+8+:8] ^ state_8[1*32+16+:8] ^ globals::gf_table_2[state_8[1*32+24+:8]];

    mix_column_state_8[2*32+0  +:8]  = globals::gf_table_2[state_8[2*32+0+:8]] ^ globals::gf_table_3[state_8[2*32+8+:8]] ^ state_8[2*32+16+:8] ^ state_8[2*32+24+:8];
    mix_column_state_8[2*32+8  +:8]  = state_8[2*32+0+:8] ^ globals::gf_table_2[state_8[2*32+8+:8]] ^ globals::gf_table_3[state_8[2*32+16+:8]] ^ state_8[2*32+24+:8];
    mix_column_state_8[2*32+16 +:8]  = state_8[2*32+0+:8] ^ state_8[2*32+8+:8] ^ globals::gf_table_2[state_8[2*32+16+:8]] ^ globals::gf_table_3[state_8[2*32+24+:8]];
    mix_column_state_8[2*32+24 +:8]  = globals::gf_table_3[state_8[2*32+0+:8]] ^ state_8[2*32+8+:8] ^ state_8[2*32+16+:8] ^ globals::gf_table_2[state_8[2*32+24+:8]];

    mix_column_state_8[3*32+0  +:8]  = globals::gf_table_2[state_8[3*32+0+:8]] ^ globals::gf_table_3[state_8[3*32+8+:8]] ^ state_8[3*32+16+:8] ^ state_8[3*32+24+:8];
    mix_column_state_8[3*32+8  +:8]  = state_8[3*32+0+:8] ^ globals::gf_table_2[state_8[3*32+8+:8]] ^ globals::gf_table_3[state_8[3*32+16+:8]] ^ state_8[3*32+24+:8];
    mix_column_state_8[3*32+16 +:8]  = state_8[3*32+0+:8] ^ state_8[3*32+8+:8] ^ globals::gf_table_2[state_8[3*32+16+:8]] ^ globals::gf_table_3[state_8[3*32+24+:8]];
    mix_column_state_8[3*32+24 +:8]  = globals::gf_table_3[state_8[3*32+0+:8]] ^ state_8[3*32+8+:8] ^ state_8[3*32+16+:8] ^ globals::gf_table_2[state_8[3*32+24+:8]];

    //$display("After MixColumns: %h", mix_column_state_8);

    // Applying AddRoundKey operation to the state
    state_9 = mix_column_state_8 ^ globals::key_schedule[9*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[9*128 +:128]);
    //$display("After AddRoundKey %h", state_9);

    //$display("-------------------- Round 10 --------------------");
    //$display("State: %h", state_9);

    // Applying SubBytes operation
    state_9[0+:8]   = globals::SBOX[state_9[0+:8]];
    state_9[8+:8]   = globals::SBOX[state_9[8+:8]];
    state_9[16+:8]  = globals::SBOX[state_9[16+:8]];
    state_9[24+:8]  = globals::SBOX[state_9[24+:8]];
    state_9[32+:8]  = globals::SBOX[state_9[32+:8]];
    state_9[40+:8]  = globals::SBOX[state_9[40+:8]];
    state_9[48+:8]  = globals::SBOX[state_9[48+:8]];
    state_9[56+:8]  = globals::SBOX[state_9[56+:8]];
    state_9[64+:8]  = globals::SBOX[state_9[64+:8]];
    state_9[72+:8]  = globals::SBOX[state_9[72+:8]];
    state_9[80+:8]  = globals::SBOX[state_9[80+:8]];
    state_9[88+:8]  = globals::SBOX[state_9[88+:8]];
    state_9[96+:8]  = globals::SBOX[state_9[96+:8]];
    state_9[104+:8] = globals::SBOX[state_9[104+:8]];
    state_9[112+:8] = globals::SBOX[state_9[112+:8]];
    state_9[120+:8] = globals::SBOX[state_9[120+:8]];

    //$display("After SubBytes: %h", state_9);

    // Applying ShiftRows operation on the state_9
    {state_9[(0 * 8)+0 +:8], state_9[(0 * 8)+32 +:8], state_9[(0 * 8)+64 +:8], state_9[(0 * 8)+96 +:8]} =
                        {state_9[(0 * 8)+0 +:8], state_9[(0 * 8)+32 +:8], state_9[(0 * 8)+64 +:8], state_9[(0 * 8)+96 +:8]};
    {state_9[(1 * 8)+0 +:8], state_9[(1 * 8)+32 +:8], state_9[(1 * 8)+64 +:8], state_9[(1 * 8)+96 +:8]} =
                        {state_9[(1 * 8)+32 +:8], state_9[(1 * 8)+64 +:8], state_9[(1 * 8)+96 +:8], state_9[(1 * 8)+0 +:8]};
    {state_9[(2 * 8)+0 +:8], state_9[(2 * 8)+32 +:8], state_9[(2 * 8)+64 +:8], state_9[(2 * 8)+96 +:8]} =
                        {state_9[(2 * 8)+64 +:8], state_9[(2 * 8)+96 +:8], state_9[(2 * 8)+0 +:8], state_9[(2 * 8)+32 +:8]};
    {state_9[(3 * 8)+0 +:8], state_9[(3 * 8)+32 +:8], state_9[(3 * 8)+64 +:8], state_9[(3 * 8)+96 +:8]} =
                        {state_9[(3 * 8)+96 +:8], state_9[(3 * 8)+0 +:8], state_9[(3 * 8)+32 +:8], state_9[(3 * 8)+64 +:8]};

    //$display("After ShiftRows: %h", state_9);

    // Applying AddRoundKey operation to the state
    state_10 = state_9 ^ globals::key_schedule[10*128 +:128]; // round*128
    //$display("RoundKey Value %h", globals::key_schedule[10*128 +:128]);
    //$display("After AddRoundKey %h", state_10);
    
    return state_10;
endfunction

module gcm_aes(
        clk,
        i_iv,
        i_plain_text,
        i_aad,
        o_cipher_text,
        o_tag
    );

    input   clk;

    /*
    input  [0:globals::IV_SIZE - 1]           i_iv;
    input  [0:globals::PLAIN_TEXT_SIZE - 1]   i_plain_text; 
    input  [0:globals::AAD_SIZE - 1]          i_aad;
    */
    
    input  [0:5]        i_iv;
    input  [0:4]        i_plain_text; 
    input  [0:4]        i_aad;
    
    
    output reg [0:globals::PLAIN_TEXT_SIZE - 1]   o_cipher_text;
    output reg [0:globals::TAG_SIZE - 1]          o_tag;

    //Local input registers
    logic [0:globals::PLAIN_TEXT_SIZE-1]    r_in_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_in_aad;
    logic [0:globals::IV_SIZE - 1]          r_s1_iv;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s1_plain_text;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_s2_plain_text;
    logic [0:globals::AAD_SIZE - 1]         r_s1_aad;
    logic [0:globals::AAD_SIZE - 1]         r_s2_aad;
    logic [0:globals::AAD_SIZE - 1]         r_s3_aad;

    //Local output registers
    logic [0:globals::TAG_SIZE - 1]         r_tag;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  r_cipher_text;
    
    // Pipeline stage variables
    logic [0:127]                           r_J_0;
    logic [0:127]                           r_s3_J_0;
    logic [0:127]                           r_H;
    logic [0:127]                           r_auth_input;
    
    logic [0:127]                           w_j_0;
    logic [0:127]                           w_h;
    logic [0:127]                           w_cb;
    logic [0: globals::AUTH_INPUT_SIZE - 1] w_auth_input;
    logic [0:127]                           w_s_block;
    logic [0:127]                           w_encrypted_cb_s2;
    logic [0:127]                           w_encrypted_cb_s3;
    logic [0:127]                           w_pre_tag;
    logic [0:globals::TAG_SIZE - 1]         w_tag;
    logic [0:127]                           w_s2_J_0;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_plain_text;
    logic [0:globals::AAD_SIZE - 1]         w_s1_aad;
    logic [0:globals::AAD_SIZE - 1]         w_s2_aad;
    logic [0:globals::PLAIN_TEXT_SIZE - 1]  w_cipher_text;
    
    int i;
    // Following variables have the same meaning as in the NIST document
    int n;
    int m;
    int s; 

    always_ff @(posedge clk)
    begin
        //Latch input
        r_s1_iv <= {i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv, i_iv};
        r_s1_plain_text <= {i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text, i_plain_text[0]};
        r_s1_aad <= {i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad, i_aad[0]};

        //r_s1_iv <= i_iv;
        //r_s1_plain_text <= i_plain_text;
        //r_s1_aad <= i_aad;
        
        //Latch State 1 outputs
        r_s2_plain_text <= w_plain_text; 
        r_s2_aad <= w_s1_aad;
        r_J_0 <= w_j_0;
        r_H <= w_h;
        
        //Latch Sw_tage 2 outputs
        r_cipher_text <= w_cipher_text;
        r_s3_aad <= w_s2_aad;
        r_s3_J_0 <= w_s2_J_0;
        
        //Latch Sw_tage 3 outputs (Final outputs)
        o_tag <= w_tag;
        o_cipher_text <= r_cipher_text;
    end
    
    //Helper variables
    
    always_comb
    begin
        /* PIPELINE STAGE - 1 [BEGIN] */
        $display("Sw_tage 1 - START");
        //Step 1 - Computing H value
        w_h = fn_aes_encrypt_unroll(128'd0);
        $display("H: %h", H);

        //Step 2 - Compute J_0
        w_j_0 = {r_s1_iv, 31'd0, 1'b1};
        $display("J_0: %h", J_0);
        $display("IV: %h", r_s1_iv);
        
        w_plain_text = r_s1_plain_text;
        w_s1_aad = r_s1_aad;
        $display("Sw_tage 1 - END");
        /* PIPELINE Sw_tagE - 1 [END] */

        /* PIPELINE Sw_tagE - 2 [START] */
        $display("Sw_tage 2 - START");
        //Step 3a - Incrementing right-most 32 bits of  J_0
        $display("inc32(J_0): %h", {r_J_0[0:95], r_J_0[96:127] + 1'b1});

        //Step 3b - GCTR operation
        n = globals::PLAIN_TEXT_SIZE / 128;
        w_cb = {r_J_0[0:95], r_J_0[96:127] + 1'b1}; // Setting the initial counter block to inc(J_0)
        for(i = 1; i < n; i++) // Loop runs for n-1 iterations
        begin
            $display("CB: %h", w_cb);
            $display("PT: %h", r_s2_plain_text[(i-1)*128+:128]);
            w_encrypted_cb_s2 = fn_aes_encrypt_unroll(w_cb);
            $display("Encrypted CB: %h", w_encrypted_cb_s2);
            w_cipher_text[(i-1)*128+:128] =  r_s2_plain_text[(i-1)*128+:128] ^ w_encrypted_cb_s2;
            $display("Cipher block: %h", w_cipher_text[(i-1)*128+:128]);
            w_cb = {w_cb[0:95], w_cb[96:127] + 1'b1};
        end
        
        $display("CB: %h", w_cb);
        $display("PT: %h", r_s2_plain_text[(i-1)*128+:128]);
        w_encrypted_cb_s2 = fn_aes_encrypt_unroll(w_cb);
        $display("Encrypted CB: %h", w_encrypted_cb_s2);
        w_cipher_text[(n-1)*128+:128] =  r_s2_plain_text[(n-1)*128+:128] ^ w_encrypted_cb_s2;
        $display("CIPHER TEXT: %h", w_cipher_text);
        
        // Step 4 - Computing constants is not necessary since we are assuming
        // the inputs are multiples of 128. Zero padding is done to align the
        // size with 128
        
        w_s2_aad = r_s1_aad;
        w_s2_J_0 = r_J_0;
        $display("Sw_tage 2 - END");
        /* PIPELINE Sw_tagE - 2 [END] */
        
        /* PIPELINE Sw_tagE - 3 [START] */
        $display("Sw_tage 3 - START");
        // Step 5 - Computing GHASH of the S block
        m = globals::AUTH_INPUT_SIZE / 128;
        w_auth_input = {r_s3_aad, r_cipher_text, 64'd128, 64'd128};
        $display("AUTH INPUT: %h", w_auth_input);
        
        w_s_block = 128'd0;
        for(i = 0; i < m; i++) // Loop runs for n iterations
        begin
            w_s_block = (w_s_block ^ w_auth_input[i*128+:128]);
            w_s_block = fn_product(w_s_block, r_H);
            $display("S: %h", w_s_block);
        end
        $display("S: %h", w_s_block);
        
        // Step 6 - Computing the authentication w_tag
        w_encrypted_cb_s3 = fn_aes_encrypt_unroll(r_s3_J_0);
        w_pre_tag =  w_s_block ^ w_encrypted_cb_s3;
        w_tag = w_pre_tag[0:globals::TAG_SIZE-1];
        $display("AUTH w_tag: %h", w_tag);
        $display("Sw_tage 3 - END");
        /* PIPELINE Sw_tagE - 3 [END] */
    end
endmodule
