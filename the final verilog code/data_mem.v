
module dataMem(R1,D1,We,Re,clk,O1); // 5 i/p , 1 o/p

input [31:0] R1; //address '32 bits 
input[31:0] D1; // data to be saved '32 bits
input We,Re;
input clk;

output reg [31:0] O1; //output data from R1 '32 bits

reg [7:0] index[0:255]; // first is number of mem size , second is number of memvalues


always @*
begin

if(Re)
begin
O1 <= { index[R1] , index[R1+1], index[R1+2] ,index[R1+3] };
end


else if(We)
begin
index[R1]   <= D1[31:24];
index[R1+1] <= D1[23:16];
index[R1+2] <= D1[15:8];
index[R1+3] <= D1[7:0];
end

end

integer i;
initial
begin
for (i = 0 ; i < 256 ; i = i+1)
#5
index[i] = 0;
end


endmodule 
