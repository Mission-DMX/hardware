/******************************************************************************
   The MIT License (MIT)

   Copyright (c) 2025 Alchitry
******************************************************************************/

module uart_rx #(
    parameter int CLK_FREQ = 100_000_000, // clock frequency
    parameter int BAUD     = 1_000_000     // desired baud rate
)(
    input  logic       clk,       // clock input
    input  logic       rst,       // reset active high
    input  logic       rx,        // UART rx input
    output logic [7:0] data,      // received data
    output logic       new_data,   // new data flag
    output logic       has_transmission_incomming
);

    // -------------------------------------------------------------------------
    // Constants
    // -------------------------------------------------------------------------
    localparam int CLK_PER_BIT = (CLK_FREQ + BAUD) / BAUD - 1;
    localparam int CTR_SIZE    = $clog2(CLK_PER_BIT);

    // -------------------------------------------------------------------------
    // State machine
    // -------------------------------------------------------------------------
    typedef enum logic [1:0] {
        IDLE,
        WAIT_HALF,
        WAIT_FULL,
        WAIT_HIGH
    } state_t;

    state_t state, next_state;

    // -------------------------------------------------------------------------
    // Registers
    // -------------------------------------------------------------------------
    logic [CTR_SIZE-1:0] ctr;
    logic [2:0]          bit_ctr;
    logic [7:0]          saved_data;
    logic                new_data_buffer;
    logic [2:0]          rxd;              // RX input shift register

    // -------------------------------------------------------------------------
    // Sequential logic
    // -------------------------------------------------------------------------
    always_ff @(posedge clk) begin
        if (rst) begin
            state            <= IDLE;
            ctr              <= '0;
            bit_ctr          <= '0;
            saved_data       <= '0;
            new_data_buffer  <= 1'b0;
            rxd              <= 3'b111;
        end else begin
            state           <= next_state;
            new_data_buffer <= 1'b0;

            // RX input synchronizer / buffer
            rxd <= {rxd[1:0], rx};

            case (state)
                IDLE: begin
                    ctr     <= '0;
                    bit_ctr <= '0;
                    has_transmission_incomming <= '0;
                end

                WAIT_HALF: begin
                    has_transmission_incomming <= '1;
                    ctr <= ctr + 1'b1;
                    if (ctr == (CLK_PER_BIT >> 1)) begin
                        ctr <= '0;
                    end
                end

                WAIT_FULL: begin
                    has_transmission_incomming <= '1;
                    ctr <= ctr + 1'b1;
                    if (ctr == CLK_PER_BIT - 1) begin
                        ctr        <= '0;
                        saved_data <= {rxd[2], saved_data[7:1]};
                        bit_ctr    <= bit_ctr + 1'b1;
                        if (bit_ctr == 3'd7) begin
                            new_data_buffer <= 1'b1;
                        end
                    end
                end

                default: ;
            endcase
        end
    end

    // -------------------------------------------------------------------------
    // Next-state logic
    // -------------------------------------------------------------------------
    always_comb begin
        next_state = state;

        case (state)
            IDLE: begin
                if (rxd[2] == 1'b0)
                    next_state = WAIT_FULL;
            end

            WAIT_HALF: begin
                if (ctr == (CLK_PER_BIT >> 1))
                    next_state = WAIT_FULL;
            end

            WAIT_FULL: begin
                if ((ctr == CLK_PER_BIT - 1) && (bit_ctr == 3'd7))
                    next_state = WAIT_HIGH;
            end

            WAIT_HIGH: begin
                if (rxd[2] == 1'b1)
                    next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end

    // -------------------------------------------------------------------------
    // Outputs
    // -------------------------------------------------------------------------
    assign data     = saved_data;
    assign new_data = new_data_buffer;

endmodule