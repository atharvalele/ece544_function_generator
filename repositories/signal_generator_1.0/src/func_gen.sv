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
    input  logic        pll_locked,
    input  logic [31:0] set_count,
    input  logic [7:0]  duty_cycle,
    input  logic [1:0]  sig_type,
    input  logic [7:0]  din,
    output logic [7:0]  addr,
    output logic [7:0]  signal_waveform
);

logic [7:0]  duty_count;
logic [7:0]  addr_start;
logic [7:0]  addr_end;
logic [7:0]  signal_data;
logic [1:0]  set_sig_type;
logic [31:0] set_freq;


assign signal_waveform = ((sig_type == SQUARE) || (sig_type == PWM)) ? signal_data: din;

always_ff @(posedge clk or negedge rst_n) begin
    if (rst_n == 0) begin
        addr <= 0;
        signal_data <= 0;
        duty_count <= 0;
        addr_start <= 0;
        addr_end <= 8'h63;
        set_sig_type <= 0;
        set_freq <= 999;
    end     
    else begin
        if (pll_locked == 1) begin
        // Validate Signal Types
            if (set_sig_type != sig_type) begin
                if (sig_type >= 0 && sig_type <= 3) 
                    set_sig_type <= sig_type;
                else 
                    set_sig_type <= set_sig_type;
                    
                case (sig_type)
                    SINE: begin
                        addr_start <= 8'h00;
                        addr_end <= 8'h63;
                    end
                    TRIANGLE: begin
                        addr_start <= 8'h64;
                        addr_end <= 8'hC7;
                    end
                    SQUARE: begin
                        addr_start <= 8'h00;
                        addr_end <= 8'h00;
                        signal_data <= 0;
                    end
                    PWM: begin
                        addr_start <= 8'h00;
                        addr_end <= 8'h00;
                    end
                endcase
            end
            else 
                set_sig_type <= set_sig_type;          
            
          // Sqaure Wave Logic
            if (set_sig_type == SQUARE) begin
                // Generate Sqaure wave
                signal_data <= ~signal_data;
            end
            // PWM Logic
            else if (set_sig_type == PWM) begin
            // Check frequency of signal
                duty_count <= duty_count + 1;
                // Check for PWM duty cycle
                if (duty_count > duty_cycle)
                    signal_data <= 128;
                else 
                    signal_data <= 255;
            end
            // Logic For Sine and Triangle Waves
            else begin
                // Repoint starting address if it is wrong
                if (addr < addr_start) begin
                    addr <= addr_start;
                end
                else begin
                    addr <= addr;
                end
                
                // Start incrementing address to traverse digitzed data
                if (addr >= addr_end)
                    addr <= addr_start;
                else 
                    addr <= addr + 1;
            end
        end
        else begin
            signal_data <= signal_data;
        end
    end
end

endmodule