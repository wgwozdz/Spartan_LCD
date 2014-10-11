module top(
	input clk, 
	output lcd_rs,
	output lcd_rw,
	output lcd_e, 
	output [11:8] sf_d
	);

	wire [7:0] char_mem_bus;
	wire [4:0] char_mem_addr;
	
	char_mem char_mem (char_mem_addr, char_mem_bus);
	lcd lcd (clk, lcd_rs, lcd_rw, lcd_e, sf_d, char_mem_addr, char_mem_bus);

endmodule
