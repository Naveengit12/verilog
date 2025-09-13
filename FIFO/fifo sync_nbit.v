module synchronous_FIFO #(parameter FIFO_depth = 8,
                                   data_width = 32)(             
      input clk,rst,cs,wr_ena,rd_ena,
      input [data_width-1:0] data_in,
      output reg[data_width-1:0] data_out,
      output full,
      output empty);  
      
      localparam  FIFO_depth_log = $clog2(FIFO_depth);  //fifo depth log = 3(no. of bits required to represent 8(000 to 111)
      reg[data_width-1:0] fifo[0:FIFO_depth-1];  //declaretion of by-directional array to store the data(depth=8 and 32 bit elements)
      reg[FIFO_depth_log:0] write_pointer; // 4 bit
      reg[FIFO_depth_log:0] read_pointer;  // 4 bit
      integer i;
      
      //write
      always @(posedge clk or negedge rst) begin
      if(!rst)
      write_pointer <= 0;
      else if(cs && wr_ena && !full) begin
      fifo[write_pointer[FIFO_depth_log-1:0]] <= data_in;
      write_pointer <= write_pointer + 1'b1;
      end
      end
      
      //read
      always @(posedge clk or negedge rst) begin
      if(!rst)
      read_pointer <= 0;
      else if (cs && rd_ena && !empty) begin
     data_out <= fifo[read_pointer[FIFO_depth_log-1:0]];
     read_pointer <= read_pointer +1'b1;
     end
     end
     
     //declare the full/empty logic
     assign empty = (read_pointer == write_pointer);
     assign full = read_pointer == {~write_pointer[FIFO_depth_log],write_pointer[FIFO_depth_log-1:0]};  
endmodule
