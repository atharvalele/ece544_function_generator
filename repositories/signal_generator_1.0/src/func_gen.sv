module func_gen 
(   
    input         clk,
    input         rst_n,
    input  [31:0] set_count,
    input  [3:0]  sig_type,
    output logic [9:0] addr
);

logic [31:0] counter;

always_ff @(posedge clk) begin
    if (rst_n == 0) begin
        addr <= 0;
        counter <= 0;
    end     
    else begin
        if (counter == set_count) begin
            counter <= 0;
            addr <= addr + 1;
        end
        else 
            counter <= counter + 1;
    end
end

endmodule