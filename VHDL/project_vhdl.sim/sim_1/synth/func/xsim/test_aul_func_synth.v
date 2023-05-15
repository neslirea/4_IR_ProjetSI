// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon May 15 09:30:42 2023
// Host        : insa-11287 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/aubery/Documents/Projet_SI/4_IR_ProjetSI/VHDL/project_vhdl.sim/sim_1/synth/func/xsim/test_aul_func_synth.v
// Design      : AUL
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module AUL
   (A,
    B,
    Ctrl_Alu,
    S);
  input [7:0]A;
  input [7:0]B;
  input [2:0]Ctrl_Alu;
  output [7:0]S;

  wire [7:0]A;
  wire [7:0]A_IBUF;
  wire \Auxiliaire_reg[3]_i_10_n_0 ;
  wire \Auxiliaire_reg[3]_i_10_n_1 ;
  wire \Auxiliaire_reg[3]_i_10_n_2 ;
  wire \Auxiliaire_reg[3]_i_10_n_3 ;
  wire \Auxiliaire_reg[3]_i_11_n_0 ;
  wire \Auxiliaire_reg[3]_i_12_n_0 ;
  wire \Auxiliaire_reg[3]_i_13_n_0 ;
  wire \Auxiliaire_reg[3]_i_14_n_0 ;
  wire \Auxiliaire_reg[3]_i_1_n_0 ;
  wire \Auxiliaire_reg[3]_i_1_n_1 ;
  wire \Auxiliaire_reg[3]_i_1_n_2 ;
  wire \Auxiliaire_reg[3]_i_1_n_3 ;
  wire \Auxiliaire_reg[3]_i_1_n_4 ;
  wire \Auxiliaire_reg[3]_i_1_n_5 ;
  wire \Auxiliaire_reg[3]_i_1_n_6 ;
  wire \Auxiliaire_reg[3]_i_1_n_7 ;
  wire \Auxiliaire_reg[3]_i_2_n_0 ;
  wire \Auxiliaire_reg[3]_i_3_n_0 ;
  wire \Auxiliaire_reg[3]_i_4_n_0 ;
  wire \Auxiliaire_reg[3]_i_5_n_0 ;
  wire \Auxiliaire_reg[3]_i_6_n_0 ;
  wire \Auxiliaire_reg[3]_i_7_n_0 ;
  wire \Auxiliaire_reg[3]_i_8_n_0 ;
  wire \Auxiliaire_reg[3]_i_9_n_0 ;
  wire \Auxiliaire_reg[7]_i_10_n_1 ;
  wire \Auxiliaire_reg[7]_i_10_n_2 ;
  wire \Auxiliaire_reg[7]_i_10_n_3 ;
  wire \Auxiliaire_reg[7]_i_11_n_0 ;
  wire \Auxiliaire_reg[7]_i_12_n_0 ;
  wire \Auxiliaire_reg[7]_i_13_n_0 ;
  wire \Auxiliaire_reg[7]_i_14_n_0 ;
  wire \Auxiliaire_reg[7]_i_1_n_1 ;
  wire \Auxiliaire_reg[7]_i_1_n_2 ;
  wire \Auxiliaire_reg[7]_i_1_n_3 ;
  wire \Auxiliaire_reg[7]_i_1_n_4 ;
  wire \Auxiliaire_reg[7]_i_1_n_5 ;
  wire \Auxiliaire_reg[7]_i_1_n_6 ;
  wire \Auxiliaire_reg[7]_i_1_n_7 ;
  wire \Auxiliaire_reg[7]_i_2_n_0 ;
  wire \Auxiliaire_reg[7]_i_3_n_0 ;
  wire \Auxiliaire_reg[7]_i_4_n_0 ;
  wire \Auxiliaire_reg[7]_i_5_n_0 ;
  wire \Auxiliaire_reg[7]_i_6_n_0 ;
  wire \Auxiliaire_reg[7]_i_7_n_0 ;
  wire \Auxiliaire_reg[7]_i_8_n_0 ;
  wire \Auxiliaire_reg[7]_i_9_n_0 ;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire [2:0]Ctrl_Alu;
  wire [2:0]Ctrl_Alu_IBUF;
  wire [7:0]S;
  wire [7:0]S_OBUF;
  wire [7:0]minusOp;
  wire [3:3]\NLW_Auxiliaire_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Auxiliaire_reg[7]_i_10_CO_UNCONNECTED ;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[0] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[3]_i_1_n_7 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[1] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[3]_i_1_n_6 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[2] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[3]_i_1_n_5 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[3] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[3]_i_1_n_4 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[3]));
  CARRY4 \Auxiliaire_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Auxiliaire_reg[3]_i_1_n_0 ,\Auxiliaire_reg[3]_i_1_n_1 ,\Auxiliaire_reg[3]_i_1_n_2 ,\Auxiliaire_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Auxiliaire_reg[3]_i_2_n_0 ,\Auxiliaire_reg[3]_i_3_n_0 ,\Auxiliaire_reg[3]_i_4_n_0 ,\Auxiliaire_reg[3]_i_5_n_0 }),
        .O({\Auxiliaire_reg[3]_i_1_n_4 ,\Auxiliaire_reg[3]_i_1_n_5 ,\Auxiliaire_reg[3]_i_1_n_6 ,\Auxiliaire_reg[3]_i_1_n_7 }),
        .S({\Auxiliaire_reg[3]_i_6_n_0 ,\Auxiliaire_reg[3]_i_7_n_0 ,\Auxiliaire_reg[3]_i_8_n_0 ,\Auxiliaire_reg[3]_i_9_n_0 }));
  CARRY4 \Auxiliaire_reg[3]_i_10 
       (.CI(1'b0),
        .CO({\Auxiliaire_reg[3]_i_10_n_0 ,\Auxiliaire_reg[3]_i_10_n_1 ,\Auxiliaire_reg[3]_i_10_n_2 ,\Auxiliaire_reg[3]_i_10_n_3 }),
        .CYINIT(1'b1),
        .DI(A_IBUF[3:0]),
        .O(minusOp[3:0]),
        .S({\Auxiliaire_reg[3]_i_11_n_0 ,\Auxiliaire_reg[3]_i_12_n_0 ,\Auxiliaire_reg[3]_i_13_n_0 ,\Auxiliaire_reg[3]_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[3]_i_11 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\Auxiliaire_reg[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[3]_i_12 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\Auxiliaire_reg[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[3]_i_13 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\Auxiliaire_reg[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[3]_i_14 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(\Auxiliaire_reg[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \Auxiliaire_reg[3]_i_2 
       (.I0(B_IBUF[3]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[0]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \Auxiliaire_reg[3]_i_3 
       (.I0(B_IBUF[2]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[0]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \Auxiliaire_reg[3]_i_4 
       (.I0(B_IBUF[1]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[0]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \Auxiliaire_reg[3]_i_5 
       (.I0(B_IBUF[0]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[0]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0500000C0A)) 
    \Auxiliaire_reg[3]_i_6 
       (.I0(B_IBUF[3]),
        .I1(minusOp[3]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[3]),
        .O(\Auxiliaire_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0500000C0A)) 
    \Auxiliaire_reg[3]_i_7 
       (.I0(B_IBUF[2]),
        .I1(minusOp[2]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[2]),
        .O(\Auxiliaire_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0500000C0A)) 
    \Auxiliaire_reg[3]_i_8 
       (.I0(B_IBUF[1]),
        .I1(minusOp[1]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[1]),
        .O(\Auxiliaire_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCF5FFFFFCFA)) 
    \Auxiliaire_reg[3]_i_9 
       (.I0(B_IBUF[0]),
        .I1(minusOp[0]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[0]),
        .O(\Auxiliaire_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[4] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[7]_i_1_n_7 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[5] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[7]_i_1_n_6 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[6] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[7]_i_1_n_5 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Auxiliaire_reg[7] 
       (.CLR(1'b0),
        .D(\Auxiliaire_reg[7]_i_1_n_4 ),
        .G(\Auxiliaire_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[7]));
  CARRY4 \Auxiliaire_reg[7]_i_1 
       (.CI(\Auxiliaire_reg[3]_i_1_n_0 ),
        .CO({\NLW_Auxiliaire_reg[7]_i_1_CO_UNCONNECTED [3],\Auxiliaire_reg[7]_i_1_n_1 ,\Auxiliaire_reg[7]_i_1_n_2 ,\Auxiliaire_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Auxiliaire_reg[7]_i_3_n_0 ,\Auxiliaire_reg[7]_i_4_n_0 ,\Auxiliaire_reg[7]_i_5_n_0 }),
        .O({\Auxiliaire_reg[7]_i_1_n_4 ,\Auxiliaire_reg[7]_i_1_n_5 ,\Auxiliaire_reg[7]_i_1_n_6 ,\Auxiliaire_reg[7]_i_1_n_7 }),
        .S({\Auxiliaire_reg[7]_i_6_n_0 ,\Auxiliaire_reg[7]_i_7_n_0 ,\Auxiliaire_reg[7]_i_8_n_0 ,\Auxiliaire_reg[7]_i_9_n_0 }));
  CARRY4 \Auxiliaire_reg[7]_i_10 
       (.CI(\Auxiliaire_reg[3]_i_10_n_0 ),
        .CO({\NLW_Auxiliaire_reg[7]_i_10_CO_UNCONNECTED [3],\Auxiliaire_reg[7]_i_10_n_1 ,\Auxiliaire_reg[7]_i_10_n_2 ,\Auxiliaire_reg[7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A_IBUF[6:4]}),
        .O(minusOp[7:4]),
        .S({\Auxiliaire_reg[7]_i_11_n_0 ,\Auxiliaire_reg[7]_i_12_n_0 ,\Auxiliaire_reg[7]_i_13_n_0 ,\Auxiliaire_reg[7]_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_11 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(\Auxiliaire_reg[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_12 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\Auxiliaire_reg[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_13 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\Auxiliaire_reg[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_14 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(\Auxiliaire_reg[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \Auxiliaire_reg[7]_i_2 
       (.I0(Ctrl_Alu_IBUF[0]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \Auxiliaire_reg[7]_i_3 
       (.I0(B_IBUF[6]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[0]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \Auxiliaire_reg[7]_i_4 
       (.I0(B_IBUF[5]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[0]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \Auxiliaire_reg[7]_i_5 
       (.I0(B_IBUF[4]),
        .I1(Ctrl_Alu_IBUF[1]),
        .I2(Ctrl_Alu_IBUF[0]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(\Auxiliaire_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0500000C0A)) 
    \Auxiliaire_reg[7]_i_6 
       (.I0(B_IBUF[7]),
        .I1(minusOp[7]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[7]),
        .O(\Auxiliaire_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0500000C0A)) 
    \Auxiliaire_reg[7]_i_7 
       (.I0(B_IBUF[6]),
        .I1(minusOp[6]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[6]),
        .O(\Auxiliaire_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0500000C0A)) 
    \Auxiliaire_reg[7]_i_8 
       (.I0(B_IBUF[5]),
        .I1(minusOp[5]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[5]),
        .O(\Auxiliaire_reg[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0500000C0A)) 
    \Auxiliaire_reg[7]_i_9 
       (.I0(B_IBUF[4]),
        .I1(minusOp[4]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .I5(A_IBUF[4]),
        .O(\Auxiliaire_reg[7]_i_9_n_0 ));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \Ctrl_Alu_IBUF[0]_inst 
       (.I(Ctrl_Alu[0]),
        .O(Ctrl_Alu_IBUF[0]));
  IBUF \Ctrl_Alu_IBUF[1]_inst 
       (.I(Ctrl_Alu[1]),
        .O(Ctrl_Alu_IBUF[1]));
  IBUF \Ctrl_Alu_IBUF[2]_inst 
       (.I(Ctrl_Alu[2]),
        .O(Ctrl_Alu_IBUF[2]));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
  OBUF \S_OBUF[4]_inst 
       (.I(S_OBUF[4]),
        .O(S[4]));
  OBUF \S_OBUF[5]_inst 
       (.I(S_OBUF[5]),
        .O(S[5]));
  OBUF \S_OBUF[6]_inst 
       (.I(S_OBUF[6]),
        .O(S[6]));
  OBUF \S_OBUF[7]_inst 
       (.I(S_OBUF[7]),
        .O(S[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
