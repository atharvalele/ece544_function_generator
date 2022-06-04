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
logic [1:0]  set_sig_type;
logic [31:0] set_freq;

// Decide signal output
assign signal_waveform = ((set_sig_type == SQUARE) || (set_sig_type == PWM)) ? signal_data: din;

always_ff @(posedge clk or negedge rst_n) begin
    if (rst_n == 0) begin
        addr <= 0;
        counter <= 0;
        signal_data <= 0;
        duty_count <= 0;
        addr_start <= 0;
        addr_end <= 0;
    end     
    else begin
        // Validate Signal Types
        if (set_sig_type != sig_type) begin
            if (sig_type >= 0 && sig_type <= 3)
                set_sig_type <= sig_type;
            else 
                set_sig_type <= set_sig_type;
                
            case (set_sig_type)
                SINE: begin
                    addr_start <= 16'h0000;
                    addr_end <= 16'h03E7;
                end
                TRIANGLE: begin
                    addr_start <= 16'h03E8;
                    addr_end <= 16'h07CF;
                end
                SQUARE: begin
                    addr_start <= 16'h0000;
                    addr_end <= 16'h0000;
                end
                PWM: begin
                    addr_start <= 16'h0000;
                    addr_end <= 16'h0000;
                end
                
            endcase
        end
        else 
            set_sig_type <= set_sig_type;
            
        // Validate Frequency 
        
        // Sine and Triangle 9999
        // Square and PWM 499999
        
        if (set_freq != set_count) begin
            if (set_sig_type == SINE && set_sig_type == TRIANGLE) begin
                if (set_freq >= 0 && set_freq <= 999)
                    set_freq <= set_count;
                else 
                    set_freq <= set_freq;
            end
            else begin
                if (set_freq >= 0 && set_freq <= 499999)
                    set_freq <= set_count;
                else 
                    set_freq <= set_freq;
            end
        end
        else 
            set_freq <= set_freq;
        
        // Sqaure Wave Logic
        if (set_sig_type == SQUARE) begin
            if (counter == set_freq) begin
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
        else if (set_sig_type == PWM) begin
        // Check frequency of signal
            if (counter == set_freq) begin
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
            if (addr < addr_start) begin
                addr <= addr_start;
            end
            else begin
                addr <= addr;
            end
            
            // Start incrementing address to traverse digitzed data
            if (counter == set_freq) begin
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