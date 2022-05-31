// Enum for Signal Types
typedef enum logic [1:0]{
        SINE,
        TRIANGLE,
        SQUARE,
        PWM
    } signal_t;
    
module func_gen 
(   
    input  logic        clk,
    input  logic        rst_n,
    input  logic [31:0] set_count,
    input  logic [7:0]  duty_cycle,
    input  logic [1:0]  sig_type,
    input  logic [7:0]  din,
    output logic [15:0] addr,
    output logic [7:0]  signal_waveform
);

logic [31:0] counter;
logic [7:0]  duty_count;
logic [15:0] addr_start;
logic [15:0] addr_end;
logic [7:0]  signal_data;

// Decide signal output
assign signal_waveform = ((sig_type == SQUARE) || (sig_type == PWM)) ? signal_data: din;

always_ff @(posedge clk) begin
    if (rst_n == 0) begin
        addr <= 0;
        counter <= 0;
        signal_data <= 0;
        duty_count <= 0;
        addr_start <= 0;
        addr_end <= 0;
    end     
    else begin
    // Sqaure Wave Logic
        if (sig_type == SQUARE) begin
            if (counter == set_count) begin
                counter <= 0;
                // Generate Sqaure wave
                if (signal_data > 128)
                    signal_data <= 0;
                else 
                    signal_data = 255;
            end
            else begin
                counter <= counter + 1;
            end
        end
        // PWM Logic
        else if (sig_type == PWM) begin
        // Check frequency of signal
            if (counter == set_count) begin
                counter <= 0;
                duty_count <= duty_count + 1;
                // Check for PWM duty cycle
                if (duty_count > duty_cycle)
                    signal_data <= 128;
                else 
                    signal_data <= 255;
            end
            else 
                counter <= counter + 1;     
        end
        // Logic For Sine and Triangle Waves
        else begin
            // Repoint starting address if it is wrong
            // Set Start and end address of the digitized data
            // Stored in the BRAM 
            case (sig_type)
                SINE: begin
                    addr_start <= 16'h0000;
                    addr_end <= 16'h03E7;
                end
                TRIANGLE: begin
                    addr_start <= 16'h03E8;
                    addr_end <= 16'h07CF;
                end
            endcase
            if (addr < addr_start) begin
                addr <= addr_start;
            end
            else begin
                addr <= addr;
            end
            
            // Start incrementing address to traverse digitzed data
            if (counter == set_count) begin
                counter <= 0;
                if (addr >= addr_end)
                    addr <= addr_start;
                else 
                    addr <= addr + 1;
            end
            else 
                counter <= counter + 1;
        end
    end
end

endmodule