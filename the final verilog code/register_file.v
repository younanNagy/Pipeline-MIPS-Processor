module regFile(rs_address,rt_address,dest_address,writeBack_data,reg_write,clk,rs_data,rt_data,reg_file_address,reg_file_data); // 6 i/p , 2 o/p

input [4:0] rs_address,rt_address,reg_file_address; //address '5 bits 
input [4:0] dest_address;
input[31:0] writeBack_data; // data to be saved '32 bits
input reg_write;
input clk;

output reg [31:0] rs_data,rt_data,reg_file_data; //output data from rs_address,rt_address '32 bits

reg [31:0] index[0:31]; // first is number of reg size , second is number of regs

always @(posedge clk)
begin
if(reg_write)
begin

index[dest_address] <= writeBack_data;

end 


                                                                  
end
 always @(negedge clk)
begin
rs_data <= index[rs_address];
rt_data <= index[rt_address];

end

  integer i;
integer line=0;

always@(reg_file_address)
begin
reg_file_data<=index[reg_file_address];
end

initial
begin
for (i = 0 ; i < 32 ; i = i+1)

index[i] <= 0;
end
endmodule 
