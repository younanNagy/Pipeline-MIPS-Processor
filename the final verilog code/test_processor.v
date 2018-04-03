
module testbench;

wire [31:0]pc_output,ALU_Result,Mem_out,Instr_32;

wire [31:0] reg_file_data;
reg [4:0] reg_file_address;

reg [31:0] read_address , write_address ;//address '32 bits 
reg [7:0] write_data;
reg We , clk;
wire [31:0] read_data;

reg [7:0] index[0:256];

always
#100 clk = ~ clk;


integer i,j,line;
integer file;
reg pc_enable=0;



initial
begin


clk=0;
We=1;
#5
We=0;
#900000
file=$fopen("C:\\Users\\younan nagy\\Desktop\\FML\\show.txt");

for(line=16;line<24;line=line+1)

begin
#1
reg_file_address=line;
#5
$fdisplay(file,"%d",reg_file_data);

end



end
 processor MIPS(write_data,write_address,We,pc_output,ALU_Result,Mem_out,pc_enable,clk,reg_file_address,reg_file_data);//module processor(write_data,write_address,We,pc_output,ALU_Result,Mem_out,clk);
endmodule
