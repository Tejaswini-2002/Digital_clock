module Digital_clock(
			input clk,
			input rst,
			output reg [4:0]hr,
			output reg [5:0]min,
			output reg [5:0]sec
			);
			
			
			
			// one second clock
			reg one_sec = 0;
			reg[25:0] count =0;
			
			always @(posedge clk or posedge rst)	begin
				if (rst)	begin
								count = 0;
							end
				else begin
						if (count==50_000_000)	begin
											count = 0;
											one_sec=~one_sec;
											end
						else	begin
							count=count+1;
							end
						end
				end
			
			
			always @(posedge one_sec , posedge rst) 
			begin
				if (rst) begin 
					{hr,min,sec} = 0;
				end
				else	begin
						if(sec==59) begin
							sec=0;
							if(min==59) begin
								min = 0;
								if(hr==23) begin
									hr = 0;
								end
								else begin
									hr=hr+1;
								end
							end
							else begin
								min = min+1;
							end
						end
						else begin
							sec=sec+1;
						end
					end
			end
	
			

			endmodule 