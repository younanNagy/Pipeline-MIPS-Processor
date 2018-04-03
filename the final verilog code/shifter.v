
module sh_by2(in,out);
input signed [31:0]in;
output reg[31:0]out;

always @*
begin
if(in>0)
out <= (in<<2)+16;
else
 out <= (in<<2)-4;
end
endmodule

// >>//////////////////// sign extend ////////////////////////
module signext(ip, op);

input [15:0] ip;
output [31:0] op;
reg [31:0] ext;

always @(*) begin
 ext [15:0]  = ip;
 ext [31:16] = {16{ip[15]}};
end

assign op = ext;
endmodule
// >>//////////////////// sign extend ////////////////////////



// >>//////////////////// adder //////////////////////////////
module adder (ip1, ip2, out);

//input clk, rst;
input [31:0] ip1, ip2;
output [31:0] out;

reg [31:0] add;

always @(ip1 or ip2) begin
 add <= ip1 + ip2;
end
assign out = add;

endmodule

// >>//////////////////// adder //////////////////////////////end
