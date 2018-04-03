
module InstMem(read_address,write_address,write_data,We,clk,read_data); // 5 i/p , 1 o/p
input [31:0] read_address , write_address ;//address '32 bits 

input [7:0] write_data;

input clk,We;
output reg [31:0] read_data; //output data from R1'32 bits
reg [7:0] index[0:255]; // first is number of mem size , second is number of memvalues

initial 
begin
$readmemb("C:\\Users\\younan nagy\\Desktop\\FML\\output.txt" , index);
end


always @(posedge clk)
begin

//#1 ///4eeeel el delay daaaaaaaaaaaaaaaaaaa
read_data <= { index[read_address[7:0]],index[read_address[7:0]+1],index[read_address[7:0]+2],index[read_address[7:0]+3]};
$display("blaaaaaaaaaaaaaaa");

end
endmodule
////////////////////////////////////////////////////////////////////////intsruction mem end