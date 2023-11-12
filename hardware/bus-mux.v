/**************************************************************************************************

MIT License

Copyright (c) RISC-V Steel Project

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

**************************************************************************************************/

/**************************************************************************************************

Project Name:  RISC-V Steel SoC - Bus Multiplexer Module
Project Repo:  github.com/riscv-steel/riscv-steel
Author:        Rafael Calcada 
E-mail:        rafaelcalcada@gmail.com

Top Module:    bus_mux
 
**************************************************************************************************/

module bus_mux # (

  parameter S0_START_ADDRESS = 32'h00000000,
  parameter S0_FINAL_ADDRESS = 32'h7fffffff,
  parameter S1_START_ADDRESS = 32'h80000000,
  parameter S1_FINAL_ADDRESS = 32'hffffffff

  )(

  input   wire       clock,
  input   wire       reset,

  // Manager #0

  input   wire  [31:0]  m0_mem_address,
  output  reg   [31:0]  m0_mem_read_data,
  input   wire          m0_mem_read_request,
  output  reg           m0_mem_read_request_ack,
  input   wire  [31:0]  m0_mem_write_data,
  input   wire  [3:0 ]  m0_mem_write_strobe,
  input   wire          m0_mem_write_request,
  output  reg           m0_mem_write_request_ack,
  
  // Subordinate #0

  output  wire  [31:0]  s0_mem_address,
  input   wire  [31:0]  s0_mem_read_data,
  output  wire          s0_mem_read_request,
  input   wire          s0_mem_read_request_ack,
  output  wire  [31:0]  s0_mem_write_data,
  output  wire  [3:0 ]  s0_mem_write_strobe,
  output  wire          s0_mem_write_request,
  input   wire          s0_mem_write_request_ack,

  // Subordinate #1

  output  wire  [31:0]  s1_mem_address,
  input   wire  [31:0]  s1_mem_read_data,
  output  wire          s1_mem_read_request,
  input   wire          s1_mem_read_request_ack,
  output  wire  [31:0]  s1_mem_write_data,
  output  wire  [3:0 ]  s1_mem_write_strobe,
  output  wire          s1_mem_write_request,
  input   wire          s1_mem_write_request_ack

  );

  localparam    SEL_RESET   = 3'b001;
  localparam    SEL_S0      = 3'b010;
  localparam    SEL_S1      = 3'b100;

  wire          reset_internal;
  wire          s0_valid_access;
  wire          s1_valid_access;

  reg           reset_reg;
  reg [2:0]     response_sel;

  always @(posedge clock)
    reset_reg <= reset;

  assign reset_internal = reset | reset_reg;

  assign s0_valid_access =
    $unsigned(m0_mem_address) >= $unsigned(S0_START_ADDRESS) && 
    $unsigned(m0_mem_address) <= $unsigned(S0_FINAL_ADDRESS);
  
  assign s1_valid_access =
    $unsigned(m0_mem_address) >= $unsigned(S1_START_ADDRESS) && 
    $unsigned(m0_mem_address) <= $unsigned(S1_FINAL_ADDRESS);

  assign s0_mem_address       = m0_mem_address;
  assign s0_mem_write_data    = m0_mem_write_data;
  assign s0_mem_write_strobe  = m0_mem_write_strobe;
  assign s0_mem_read_request  = s0_valid_access ? m0_mem_read_request : 1'b0;
  assign s0_mem_write_request = s0_valid_access ? m0_mem_write_request : 1'b0;

  assign s1_mem_address       = m0_mem_address;
  assign s1_mem_write_data    = m0_mem_write_data;
  assign s1_mem_write_strobe  = m0_mem_write_strobe;
  assign s1_mem_read_request  = s1_valid_access ? m0_mem_read_request : 1'b0;
  assign s1_mem_write_request = s1_valid_access ? m0_mem_write_request : 1'b0;

  always @(posedge clock) begin
    if (reset_internal)
      response_sel <= SEL_RESET;
    else if (s0_valid_access)
      response_sel <= SEL_S0;
    else if (s1_valid_access)
      response_sel <= SEL_S1;
    else
      response_sel <= SEL_RESET;
  end

  always @* begin
    case (response_sel)
      SEL_RESET: begin
        m0_mem_write_request_ack  <= 1'b1;
        m0_mem_read_data          <= 32'h00000000;
        m0_mem_read_request_ack   <= 2'b1;
      end
      SEL_S0: begin
        m0_mem_write_request_ack  <= s0_mem_write_request_ack;
        m0_mem_read_data          <= s0_mem_read_data;
        m0_mem_read_request_ack   <= s0_mem_read_request_ack;
      end
      SEL_S1: begin
        m0_mem_write_request_ack  <= s1_mem_write_request_ack;
        m0_mem_read_data          <= s1_mem_read_data;
        m0_mem_read_request_ack   <= s1_mem_read_request_ack;
      end
      default: begin
        m0_mem_write_request_ack  <= 1'b1;
        m0_mem_read_data          <= 32'h00000000;
        m0_mem_read_request_ack   <= 2'b1;
      end
    endcase
  end

endmodule