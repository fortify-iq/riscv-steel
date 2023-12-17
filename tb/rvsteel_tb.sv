`timescale 1ns/100ps

module rvsteel_tb;


logic  clock = 0;
logic  reset = 1;
logic  uart_rx = 0;
logic  uart_tx;


localparam  CLOCK_FREQUENCY = 960000;
localparam  UART_BAUD_RATE = 9600;
localparam  MEMORY_SIZE = 8192;
localparam  MEMORY_INIT_FILE = "./test_firmware_c0000000.hex";
localparam  BOOT_ADDRESS = 32'h00000000;


rvsteel_soc #(
  .CLOCK_FREQUENCY (CLOCK_FREQUENCY),
  .UART_BAUD_RATE  (UART_BAUD_RATE),
  .MEMORY_SIZE     (MEMORY_SIZE),
  .MEMORY_INIT_FILE(MEMORY_INIT_FILE),
  .BOOT_ADDRESS    (BOOT_ADDRESS)
) DUT (
  .clock      (clock  ),
  .reset      (reset  ),
  .uart_rx    (uart_rx),
  .uart_tx    (uart_tx)
);



initial begin
  reset = 1;
  fork
    forever begin
      #10 clock = ~clock;
    end
    begin
      #200;
      reset = 0;
      #1000000;
      $finish;
    end
  join

end


endmodule