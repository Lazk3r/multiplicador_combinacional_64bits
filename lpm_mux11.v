// megafunction wizard: %LPM_MUX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: lpm_mux11.v
// Megafunction Name(s):
// 			LPM_MUX
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 21.1.1 Build 850 06/23/2022 SJ Lite Edition
// ************************************************************


//Copyright (C) 2022  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lpm_mux11 (
	data0x,
	data1x,
	sel,
	result);

	input	[10:0]  data0x;
	input	[10:0]  data1x;
	input	  sel;
	output	[10:0]  result;

	wire [10:0] sub_wire0;
	wire [10:0] sub_wire3 = data1x[10:0];
	wire [10:0] result = sub_wire0[10:0];
	wire [10:0] sub_wire1 = data0x[10:0];
	wire [21:0] sub_wire2 = {sub_wire3, sub_wire1};
	wire  sub_wire4 = sel;
	wire  sub_wire5 = sub_wire4;

	lpm_mux	LPM_MUX_component (
				.data (sub_wire2),
				.sel (sub_wire5),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.aclr (),
				.clken (),
				.clock ()
				// synopsys translate_on
				);
	defparam
		LPM_MUX_component.lpm_size = 2,
		LPM_MUX_component.lpm_type = "LPM_MUX",
		LPM_MUX_component.lpm_width = 11,
		LPM_MUX_component.lpm_widths = 1;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "2"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "11"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "1"
// Retrieval info: USED_PORT: data0x 0 0 11 0 INPUT NODEFVAL "data0x[10..0]"
// Retrieval info: USED_PORT: data1x 0 0 11 0 INPUT NODEFVAL "data1x[10..0]"
// Retrieval info: USED_PORT: result 0 0 11 0 OUTPUT NODEFVAL "result[10..0]"
// Retrieval info: USED_PORT: sel 0 0 0 0 INPUT NODEFVAL "sel"
// Retrieval info: CONNECT: @data 0 0 11 0 data0x 0 0 11 0
// Retrieval info: CONNECT: @data 0 0 11 11 data1x 0 0 11 0
// Retrieval info: CONNECT: @sel 0 0 1 0 sel 0 0 0 0
// Retrieval info: CONNECT: result 0 0 11 0 @result 0 0 11 0
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11_bb.v FALSE
// Retrieval info: LIB_FILE: lpm
