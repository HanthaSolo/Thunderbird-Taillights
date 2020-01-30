
module TBlights_tb(); 

reg clk,clear,L,R,H; 

wire LA,LB,LC,RA,RB,RC; 

TBlights Lightitup(.clk(clk),.clear(clear),.L(L),.R(R),.H(H),.LA(LA),.LB(LB),.LC(LC),.RA(RA),.RB(RB),.RC(RC)); 

	initial begin

		// start with clear low to reset flip flops
		clear = 0;
		
		//  
		clk = 0; L = 0; R = 0; H = 0; #10; 
		clk = 1; L = 0; R = 0; H = 0; #10;
		clk = 0; L = 0; R = 0; H = 0; #10; 
		clk = 1; L = 0; R = 0; H = 0; #10; clear=1; 

		clk = 0; L = 0; R = 0; H = 1; #10; 
		clk = 1; L = 0; R = 0; H = 1; #10;
		clk = 0; L = 0; R = 0; H = 1; #10; 
		clk = 1; L = 0; R = 0; H = 1; #10;
		clk = 0; L = 0; R = 0; H = 1; #10; 
		clk = 1; L = 0; R = 0; H = 1; #10;
		clk = 0; L = 0; R = 0; H = 1; #10; 
		clk = 1; L = 0; R = 0; H = 1; #10;
		clk = 0; L = 0; R = 0; H = 1; #10; 
		clk = 1; L = 0; R = 0; H = 1; #10;

		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		clk = 0; L = 1; R = 0; H = 0; #10; 
		clk = 1; L = 1; R = 0; H = 0; #10;
		
	
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; 
		clk = 1; L = 0; R = 1; H = 0; #10;
		clk = 0; L = 0; R = 1; H = 0; #10; clear=0;

		clk = 0; L = 0; R = 0; H = 0; #10; clear=1;	
		 
	end
	

endmodule 