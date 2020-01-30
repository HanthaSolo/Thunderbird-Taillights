/* 
*	Module for Thunder-Bird Tail Lights simulation 
*	Author: Hantha Nyunt
*/


module TBlights(clk,clear,L,R,H,LA,LB,LC,RA,RB,RC);

// Declare inputs and outputs
input clk,clear,L,R,H;
output LA,LB,LC,RA,RB,RC;

// Declare internal wires 
wire An,Bn,Cn;
wire A_bar,B_bar,C_bar;

// declare three D flipflops to store values
dff dff_A(An,clk,clear,A,A_bar);
dff dff_B(Bn,clk,clear,B,B_bar);
dff dff_C(Cn,clk,clear,C,C_bar);

// Next state logic, starting with LSB 
not (H_bar,H);
not (L_bar,L);
not (R_bar,R);

assign Cn = (L&H_bar)&(A_bar&C_bar)|(R&H_bar)&(A&B_bar&C_bar)|(H&(A_bar&B_bar&C_bar)); // C is LSB
assign Bn = (L&H_bar)&(A_bar&(B^C))|(R&H_bar)&(A&B_bar&C)|(H&(A_bar&B_bar&C_bar)) ;
assign An = (R&H_bar)&(B_bar&(A|C_bar))|(H&(A_bar&B_bar&C_bar)); // A is MSB

//Output Logic for each of the tail lights
not (An_bar,An);
not (Bn_bar,Bn);
not (Cn_bar,Cn);

assign LA = ((An_bar&Cn)|(An_bar&Bn)|(Bn&Cn)); 
assign LB = ((An_bar&Bn)|(Bn&Cn));
assign LC = (Bn&Cn);
assign RA = (An);
assign RB = ((An&Cn)|(An&Bn));
assign RC = (An&Bn);

endmodule