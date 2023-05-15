// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Tue May  9 18:31:51 2023
// Host        : insa-10221 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/aubery/Documents/Projet_SI/4_IR_ProjetSI/project_vhdl.sim/sim_1/synth/timing/xsim/test_aul_time_synth.v
// Design      : AUL
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module AUL
   (A,
    B,
    Ctrl_Alu,
    N,
    O,
    Z,
    C,
    S);
  input [7:0]A;
  input [7:0]B;
  input [2:0]Ctrl_Alu;
  output N;
  output O;
  output Z;
  output C;
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
  wire \Auxiliaire_reg[7]_i_11_n_1 ;
  wire \Auxiliaire_reg[7]_i_11_n_2 ;
  wire \Auxiliaire_reg[7]_i_11_n_3 ;
  wire \Auxiliaire_reg[7]_i_12_n_0 ;
  wire \Auxiliaire_reg[7]_i_13_n_0 ;
  wire \Auxiliaire_reg[7]_i_14_n_0 ;
  wire \Auxiliaire_reg[7]_i_15_n_0 ;
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
  wire C;
  wire C0;
  wire C_OBUF;
  wire C_reg_i_2_n_0;
  wire [2:0]Ctrl_Alu;
  wire [2:0]Ctrl_Alu_IBUF;
  wire N;
  wire O;
  wire O_OBUF;
  wire O_reg_i_2_n_0;
  wire O_reg_i_3_n_0;
  wire [7:0]S;
  wire [7:0]S_OBUF;
  wire Z;
  wire eqOp;
  wire [7:0]minusOp;
  wire neqOp;
  wire [15:0]var;
  wire \var_reg[10]_i_10_n_0 ;
  wire \var_reg[10]_i_11_n_0 ;
  wire \var_reg[10]_i_12_n_0 ;
  wire \var_reg[10]_i_13_n_0 ;
  wire \var_reg[10]_i_13_n_1 ;
  wire \var_reg[10]_i_13_n_2 ;
  wire \var_reg[10]_i_13_n_3 ;
  wire \var_reg[10]_i_13_n_4 ;
  wire \var_reg[10]_i_13_n_5 ;
  wire \var_reg[10]_i_13_n_6 ;
  wire \var_reg[10]_i_13_n_7 ;
  wire \var_reg[10]_i_14_n_0 ;
  wire \var_reg[10]_i_15_n_0 ;
  wire \var_reg[10]_i_16_n_0 ;
  wire \var_reg[10]_i_17_n_0 ;
  wire \var_reg[10]_i_18_n_0 ;
  wire \var_reg[10]_i_19_n_0 ;
  wire \var_reg[10]_i_1_n_0 ;
  wire \var_reg[10]_i_1_n_1 ;
  wire \var_reg[10]_i_1_n_2 ;
  wire \var_reg[10]_i_1_n_3 ;
  wire \var_reg[10]_i_1_n_4 ;
  wire \var_reg[10]_i_1_n_5 ;
  wire \var_reg[10]_i_1_n_6 ;
  wire \var_reg[10]_i_1_n_7 ;
  wire \var_reg[10]_i_20_n_0 ;
  wire \var_reg[10]_i_21_n_0 ;
  wire \var_reg[10]_i_22_n_0 ;
  wire \var_reg[10]_i_23_n_0 ;
  wire \var_reg[10]_i_24_n_0 ;
  wire \var_reg[10]_i_25_n_0 ;
  wire \var_reg[10]_i_26_n_0 ;
  wire \var_reg[10]_i_27_n_0 ;
  wire \var_reg[10]_i_28_n_0 ;
  wire \var_reg[10]_i_29_n_0 ;
  wire \var_reg[10]_i_2_n_0 ;
  wire \var_reg[10]_i_30_n_0 ;
  wire \var_reg[10]_i_3_n_0 ;
  wire \var_reg[10]_i_4_n_0 ;
  wire \var_reg[10]_i_5_n_0 ;
  wire \var_reg[10]_i_6_n_0 ;
  wire \var_reg[10]_i_7_n_0 ;
  wire \var_reg[10]_i_8_n_0 ;
  wire \var_reg[10]_i_9_n_0 ;
  wire \var_reg[14]_i_10_n_0 ;
  wire \var_reg[14]_i_11_n_0 ;
  wire \var_reg[14]_i_12_n_0 ;
  wire \var_reg[14]_i_13_n_0 ;
  wire \var_reg[14]_i_14_n_0 ;
  wire \var_reg[14]_i_15_n_0 ;
  wire \var_reg[14]_i_16_n_0 ;
  wire \var_reg[14]_i_17_n_0 ;
  wire \var_reg[14]_i_18_n_0 ;
  wire \var_reg[14]_i_19_n_0 ;
  wire \var_reg[14]_i_1_n_0 ;
  wire \var_reg[14]_i_1_n_1 ;
  wire \var_reg[14]_i_1_n_2 ;
  wire \var_reg[14]_i_1_n_3 ;
  wire \var_reg[14]_i_1_n_4 ;
  wire \var_reg[14]_i_1_n_5 ;
  wire \var_reg[14]_i_1_n_6 ;
  wire \var_reg[14]_i_1_n_7 ;
  wire \var_reg[14]_i_20_n_0 ;
  wire \var_reg[14]_i_21_n_1 ;
  wire \var_reg[14]_i_21_n_3 ;
  wire \var_reg[14]_i_21_n_6 ;
  wire \var_reg[14]_i_21_n_7 ;
  wire \var_reg[14]_i_22_n_0 ;
  wire \var_reg[14]_i_23_n_0 ;
  wire \var_reg[14]_i_24_n_0 ;
  wire \var_reg[14]_i_25_n_0 ;
  wire \var_reg[14]_i_2_n_0 ;
  wire \var_reg[14]_i_3_n_0 ;
  wire \var_reg[14]_i_4_n_0 ;
  wire \var_reg[14]_i_5_n_0 ;
  wire \var_reg[14]_i_6_n_0 ;
  wire \var_reg[14]_i_7_n_0 ;
  wire \var_reg[14]_i_8_n_0 ;
  wire \var_reg[14]_i_9_n_0 ;
  wire \var_reg[15]_i_1_n_7 ;
  wire \var_reg[15]_i_2_n_0 ;
  wire \var_reg[15]_i_3_n_0 ;
  wire \var_reg[15]_i_4_n_1 ;
  wire \var_reg[15]_i_4_n_3 ;
  wire \var_reg[15]_i_4_n_6 ;
  wire \var_reg[15]_i_4_n_7 ;
  wire \var_reg[15]_i_5_n_0 ;
  wire \var_reg[15]_i_6_n_0 ;
  wire \var_reg[15]_i_7_n_0 ;
  wire \var_reg[15]_i_8_n_0 ;
  wire \var_reg[2]_i_1_n_0 ;
  wire \var_reg[2]_i_1_n_1 ;
  wire \var_reg[2]_i_1_n_2 ;
  wire \var_reg[2]_i_1_n_3 ;
  wire \var_reg[2]_i_1_n_4 ;
  wire \var_reg[2]_i_1_n_5 ;
  wire \var_reg[2]_i_1_n_6 ;
  wire \var_reg[2]_i_1_n_7 ;
  wire \var_reg[2]_i_2_n_0 ;
  wire \var_reg[2]_i_3_n_0 ;
  wire \var_reg[2]_i_4_n_0 ;
  wire \var_reg[2]_i_5_n_0 ;
  wire \var_reg[2]_i_6_n_0 ;
  wire \var_reg[2]_i_7_n_0 ;
  wire \var_reg[2]_i_8_n_0 ;
  wire \var_reg[2]_i_9_n_0 ;
  wire \var_reg[3]_i_10_n_0 ;
  wire \var_reg[3]_i_1_n_0 ;
  wire \var_reg[3]_i_2_n_0 ;
  wire \var_reg[3]_i_2_n_1 ;
  wire \var_reg[3]_i_2_n_2 ;
  wire \var_reg[3]_i_2_n_3 ;
  wire \var_reg[3]_i_2_n_4 ;
  wire \var_reg[3]_i_2_n_5 ;
  wire \var_reg[3]_i_2_n_6 ;
  wire \var_reg[3]_i_2_n_7 ;
  wire \var_reg[3]_i_3_n_0 ;
  wire \var_reg[3]_i_4_n_0 ;
  wire \var_reg[3]_i_5_n_0 ;
  wire \var_reg[3]_i_6_n_0 ;
  wire \var_reg[3]_i_7_n_0 ;
  wire \var_reg[3]_i_8_n_0 ;
  wire \var_reg[3]_i_9_n_0 ;
  wire \var_reg[6]_i_10_n_0 ;
  wire \var_reg[6]_i_11_n_0 ;
  wire \var_reg[6]_i_12_n_0 ;
  wire \var_reg[6]_i_13_n_0 ;
  wire \var_reg[6]_i_14_n_0 ;
  wire \var_reg[6]_i_15_n_0 ;
  wire \var_reg[6]_i_16_n_0 ;
  wire \var_reg[6]_i_17_n_0 ;
  wire \var_reg[6]_i_18_n_0 ;
  wire \var_reg[6]_i_19_n_0 ;
  wire \var_reg[6]_i_1_n_0 ;
  wire \var_reg[6]_i_1_n_1 ;
  wire \var_reg[6]_i_1_n_2 ;
  wire \var_reg[6]_i_1_n_3 ;
  wire \var_reg[6]_i_1_n_4 ;
  wire \var_reg[6]_i_1_n_5 ;
  wire \var_reg[6]_i_1_n_6 ;
  wire \var_reg[6]_i_2_n_0 ;
  wire \var_reg[6]_i_3_n_0 ;
  wire \var_reg[6]_i_3_n_1 ;
  wire \var_reg[6]_i_3_n_2 ;
  wire \var_reg[6]_i_3_n_3 ;
  wire \var_reg[6]_i_3_n_4 ;
  wire \var_reg[6]_i_3_n_5 ;
  wire \var_reg[6]_i_3_n_6 ;
  wire \var_reg[6]_i_3_n_7 ;
  wire \var_reg[6]_i_4_n_0 ;
  wire \var_reg[6]_i_5_n_0 ;
  wire \var_reg[6]_i_6_n_0 ;
  wire \var_reg[6]_i_7_n_0 ;
  wire \var_reg[6]_i_8_n_0 ;
  wire \var_reg[6]_i_9_n_0 ;
  wire [3:3]\NLW_Auxiliaire_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Auxiliaire_reg[7]_i_11_CO_UNCONNECTED ;
  wire [3:1]\NLW_var_reg[14]_i_21_CO_UNCONNECTED ;
  wire [3:2]\NLW_var_reg[14]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_var_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_var_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_var_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_var_reg[15]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_var_reg[6]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("test_aul_time_synth.sdf",,,,"tool_control");
end
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
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[3]_i_6 
       (.I0(B_IBUF[3]),
        .I1(eqOp),
        .I2(var[3]),
        .I3(minusOp[3]),
        .I4(C_reg_i_2_n_0),
        .I5(A_IBUF[3]),
        .O(\Auxiliaire_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[3]_i_7 
       (.I0(B_IBUF[2]),
        .I1(eqOp),
        .I2(var[2]),
        .I3(minusOp[2]),
        .I4(C_reg_i_2_n_0),
        .I5(A_IBUF[2]),
        .O(\Auxiliaire_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[3]_i_8 
       (.I0(B_IBUF[1]),
        .I1(eqOp),
        .I2(var[1]),
        .I3(minusOp[1]),
        .I4(C_reg_i_2_n_0),
        .I5(A_IBUF[1]),
        .O(\Auxiliaire_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[3]_i_9 
       (.I0(B_IBUF[0]),
        .I1(eqOp),
        .I2(var[0]),
        .I3(minusOp[0]),
        .I4(C_reg_i_2_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Auxiliaire_reg[7]_i_10 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(Ctrl_Alu_IBUF[0]),
        .I2(Ctrl_Alu_IBUF[1]),
        .O(eqOp));
  CARRY4 \Auxiliaire_reg[7]_i_11 
       (.CI(\Auxiliaire_reg[3]_i_10_n_0 ),
        .CO({\NLW_Auxiliaire_reg[7]_i_11_CO_UNCONNECTED [3],\Auxiliaire_reg[7]_i_11_n_1 ,\Auxiliaire_reg[7]_i_11_n_2 ,\Auxiliaire_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A_IBUF[6:4]}),
        .O(minusOp[7:4]),
        .S({\Auxiliaire_reg[7]_i_12_n_0 ,\Auxiliaire_reg[7]_i_13_n_0 ,\Auxiliaire_reg[7]_i_14_n_0 ,\Auxiliaire_reg[7]_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_12 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(\Auxiliaire_reg[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_13 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\Auxiliaire_reg[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_14 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\Auxiliaire_reg[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Auxiliaire_reg[7]_i_15 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(\Auxiliaire_reg[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[7]_i_6 
       (.I0(B_IBUF[7]),
        .I1(eqOp),
        .I2(var[7]),
        .I3(minusOp[7]),
        .I4(C_reg_i_2_n_0),
        .I5(A_IBUF[7]),
        .O(\Auxiliaire_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[7]_i_7 
       (.I0(B_IBUF[6]),
        .I1(eqOp),
        .I2(var[6]),
        .I3(minusOp[6]),
        .I4(C_reg_i_2_n_0),
        .I5(A_IBUF[6]),
        .O(\Auxiliaire_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[7]_i_8 
       (.I0(B_IBUF[5]),
        .I1(eqOp),
        .I2(var[5]),
        .I3(minusOp[5]),
        .I4(C_reg_i_2_n_0),
        .I5(A_IBUF[5]),
        .O(\Auxiliaire_reg[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \Auxiliaire_reg[7]_i_9 
       (.I0(B_IBUF[4]),
        .I1(eqOp),
        .I2(var[4]),
        .I3(minusOp[4]),
        .I4(C_reg_i_2_n_0),
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
  OBUF C_OBUF_inst
       (.I(C_OBUF),
        .O(C));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    C_reg
       (.CLR(1'b0),
        .D(C0),
        .G(C_reg_i_2_n_0),
        .GE(1'b1),
        .Q(C_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    C_reg_i_1
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(C0));
  LUT3 #(
    .INIT(8'h01)) 
    C_reg_i_2
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(Ctrl_Alu_IBUF[0]),
        .I2(Ctrl_Alu_IBUF[1]),
        .O(C_reg_i_2_n_0));
  IBUF \Ctrl_Alu_IBUF[0]_inst 
       (.I(Ctrl_Alu[0]),
        .O(Ctrl_Alu_IBUF[0]));
  IBUF \Ctrl_Alu_IBUF[1]_inst 
       (.I(Ctrl_Alu[1]),
        .O(Ctrl_Alu_IBUF[1]));
  IBUF \Ctrl_Alu_IBUF[2]_inst 
       (.I(Ctrl_Alu[2]),
        .O(Ctrl_Alu_IBUF[2]));
  OBUFT N_OBUF_inst
       (.I(1'b0),
        .O(N),
        .T(1'b1));
  OBUF O_OBUF_inst
       (.I(O_OBUF),
        .O(O));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    O_reg
       (.CLR(1'b0),
        .D(neqOp),
        .G(O_reg_i_2_n_0),
        .GE(1'b1),
        .Q(O_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    O_reg_i_1
       (.I0(var[13]),
        .I1(var[12]),
        .I2(var[14]),
        .I3(var[15]),
        .I4(O_reg_i_3_n_0),
        .O(neqOp));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    O_reg_i_2
       (.I0(neqOp),
        .I1(Ctrl_Alu_IBUF[0]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(Ctrl_Alu_IBUF[2]),
        .O(O_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    O_reg_i_3
       (.I0(var[10]),
        .I1(var[11]),
        .I2(var[8]),
        .I3(var[9]),
        .O(O_reg_i_3_n_0));
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
  OBUF Z_OBUF_inst
       (.I(1'b1),
        .O(Z));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[0] 
       (.CLR(1'b0),
        .D(\var_reg[2]_i_1_n_7 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[10] 
       (.CLR(1'b0),
        .D(\var_reg[10]_i_1_n_4 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[10]));
  CARRY4 \var_reg[10]_i_1 
       (.CI(\var_reg[6]_i_1_n_0 ),
        .CO({\var_reg[10]_i_1_n_0 ,\var_reg[10]_i_1_n_1 ,\var_reg[10]_i_1_n_2 ,\var_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\var_reg[10]_i_2_n_0 ,\var_reg[10]_i_3_n_0 ,\var_reg[10]_i_4_n_0 ,\var_reg[10]_i_5_n_0 }),
        .O({\var_reg[10]_i_1_n_4 ,\var_reg[10]_i_1_n_5 ,\var_reg[10]_i_1_n_6 ,\var_reg[10]_i_1_n_7 }),
        .S({\var_reg[10]_i_6_n_0 ,\var_reg[10]_i_7_n_0 ,\var_reg[10]_i_8_n_0 ,\var_reg[10]_i_9_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \var_reg[10]_i_10 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[2]),
        .I2(\var_reg[10]_i_13_n_5 ),
        .I3(\var_reg[14]_i_21_n_6 ),
        .O(\var_reg[10]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \var_reg[10]_i_11 
       (.I0(\var_reg[10]_i_13_n_6 ),
        .I1(\var_reg[14]_i_21_n_7 ),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[1]),
        .O(\var_reg[10]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \var_reg[10]_i_12 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[1]),
        .I2(\var_reg[10]_i_13_n_6 ),
        .I3(\var_reg[14]_i_21_n_7 ),
        .O(\var_reg[10]_i_12_n_0 ));
  CARRY4 \var_reg[10]_i_13 
       (.CI(\var_reg[3]_i_2_n_0 ),
        .CO({\var_reg[10]_i_13_n_0 ,\var_reg[10]_i_13_n_1 ,\var_reg[10]_i_13_n_2 ,\var_reg[10]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\var_reg[10]_i_19_n_0 ,\var_reg[10]_i_20_n_0 ,\var_reg[10]_i_21_n_0 ,\var_reg[10]_i_22_n_0 }),
        .O({\var_reg[10]_i_13_n_4 ,\var_reg[10]_i_13_n_5 ,\var_reg[10]_i_13_n_6 ,\var_reg[10]_i_13_n_7 }),
        .S({\var_reg[10]_i_23_n_0 ,\var_reg[10]_i_24_n_0 ,\var_reg[10]_i_25_n_0 ,\var_reg[10]_i_26_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[10]_i_14 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[6]),
        .O(\var_reg[10]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \var_reg[10]_i_15 
       (.I0(\var_reg[6]_i_3_n_5 ),
        .I1(\var_reg[3]_i_2_n_4 ),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[1]),
        .O(\var_reg[10]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[10]_i_16 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[6]),
        .O(\var_reg[10]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[10]_i_17 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[7]),
        .O(\var_reg[10]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \var_reg[10]_i_18 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[0]),
        .I2(\var_reg[10]_i_13_n_7 ),
        .I3(\var_reg[6]_i_3_n_4 ),
        .O(\var_reg[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[10]_i_19 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[6]),
        .O(\var_reg[10]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \var_reg[10]_i_2 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[3]),
        .I2(\var_reg[10]_i_10_n_0 ),
        .I3(\var_reg[10]_i_11_n_0 ),
        .O(\var_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[10]_i_20 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[4]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[5]),
        .O(\var_reg[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[10]_i_21 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[4]),
        .O(\var_reg[10]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[10]_i_22 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[3]),
        .O(\var_reg[10]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[10]_i_23 
       (.I0(\var_reg[10]_i_19_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[6]),
        .I3(\var_reg[10]_i_27_n_0 ),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[3]),
        .O(\var_reg[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[10]_i_24 
       (.I0(\var_reg[10]_i_20_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[5]),
        .I3(\var_reg[10]_i_28_n_0 ),
        .I4(A_IBUF[6]),
        .I5(B_IBUF[3]),
        .O(\var_reg[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[10]_i_25 
       (.I0(\var_reg[10]_i_21_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[4]),
        .I3(\var_reg[10]_i_29_n_0 ),
        .I4(A_IBUF[5]),
        .I5(B_IBUF[3]),
        .O(\var_reg[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[10]_i_26 
       (.I0(\var_reg[10]_i_22_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[3]),
        .I3(\var_reg[10]_i_30_n_0 ),
        .I4(A_IBUF[4]),
        .I5(B_IBUF[3]),
        .O(\var_reg[10]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[10]_i_27 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\var_reg[10]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[10]_i_28 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[5]),
        .O(\var_reg[10]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[10]_i_29 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[5]),
        .O(\var_reg[10]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    \var_reg[10]_i_3 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[2]),
        .I2(\var_reg[10]_i_12_n_0 ),
        .I3(A_IBUF[1]),
        .I4(\var_reg[3]_i_2_n_4 ),
        .I5(\var_reg[6]_i_3_n_5 ),
        .O(\var_reg[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[10]_i_30 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[5]),
        .O(\var_reg[10]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    \var_reg[10]_i_4 
       (.I0(\var_reg[10]_i_12_n_0 ),
        .I1(B_IBUF[6]),
        .I2(A_IBUF[2]),
        .I3(\var_reg[6]_i_3_n_5 ),
        .I4(\var_reg[3]_i_2_n_4 ),
        .I5(A_IBUF[1]),
        .O(\var_reg[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \var_reg[10]_i_5 
       (.I0(\var_reg[6]_i_3_n_4 ),
        .I1(\var_reg[10]_i_13_n_7 ),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[7]),
        .O(\var_reg[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \var_reg[10]_i_6 
       (.I0(\var_reg[10]_i_11_n_0 ),
        .I1(\var_reg[10]_i_10_n_0 ),
        .I2(\var_reg[10]_i_14_n_0 ),
        .I3(\var_reg[14]_i_13_n_0 ),
        .I4(\var_reg[14]_i_19_n_0 ),
        .I5(\var_reg[14]_i_14_n_0 ),
        .O(\var_reg[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \var_reg[10]_i_7 
       (.I0(\var_reg[10]_i_15_n_0 ),
        .I1(\var_reg[10]_i_12_n_0 ),
        .I2(\var_reg[10]_i_16_n_0 ),
        .I3(\var_reg[10]_i_10_n_0 ),
        .I4(\var_reg[10]_i_14_n_0 ),
        .I5(\var_reg[10]_i_11_n_0 ),
        .O(\var_reg[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \var_reg[10]_i_8 
       (.I0(\var_reg[10]_i_12_n_0 ),
        .I1(\var_reg[10]_i_16_n_0 ),
        .I2(\var_reg[10]_i_15_n_0 ),
        .I3(\var_reg[10]_i_17_n_0 ),
        .I4(\var_reg[6]_i_3_n_4 ),
        .I5(\var_reg[10]_i_13_n_7 ),
        .O(\var_reg[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \var_reg[10]_i_9 
       (.I0(\var_reg[10]_i_18_n_0 ),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[6]),
        .I3(\var_reg[3]_i_2_n_4 ),
        .I4(\var_reg[6]_i_3_n_5 ),
        .O(\var_reg[10]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[11] 
       (.CLR(1'b0),
        .D(\var_reg[14]_i_1_n_7 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[12] 
       (.CLR(1'b0),
        .D(\var_reg[14]_i_1_n_6 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[13] 
       (.CLR(1'b0),
        .D(\var_reg[14]_i_1_n_5 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[14] 
       (.CLR(1'b0),
        .D(\var_reg[14]_i_1_n_4 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[14]));
  CARRY4 \var_reg[14]_i_1 
       (.CI(\var_reg[10]_i_1_n_0 ),
        .CO({\var_reg[14]_i_1_n_0 ,\var_reg[14]_i_1_n_1 ,\var_reg[14]_i_1_n_2 ,\var_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\var_reg[14]_i_2_n_0 ,\var_reg[14]_i_3_n_0 ,\var_reg[14]_i_4_n_0 ,\var_reg[14]_i_5_n_0 }),
        .O({\var_reg[14]_i_1_n_4 ,\var_reg[14]_i_1_n_5 ,\var_reg[14]_i_1_n_6 ,\var_reg[14]_i_1_n_7 }),
        .S({\var_reg[14]_i_6_n_0 ,\var_reg[14]_i_7_n_0 ,\var_reg[14]_i_8_n_0 ,\var_reg[14]_i_9_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[14]_i_10 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[6]),
        .O(\var_reg[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[14]_i_11 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\var_reg[14]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \var_reg[14]_i_12 
       (.I0(\var_reg[10]_i_13_n_4 ),
        .I1(\var_reg[14]_i_21_n_1 ),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[3]),
        .O(\var_reg[14]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \var_reg[14]_i_13 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[3]),
        .I2(\var_reg[10]_i_13_n_4 ),
        .I3(\var_reg[14]_i_21_n_1 ),
        .O(\var_reg[14]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \var_reg[14]_i_14 
       (.I0(\var_reg[10]_i_13_n_5 ),
        .I1(\var_reg[14]_i_21_n_6 ),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[2]),
        .O(\var_reg[14]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \var_reg[14]_i_15 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[5]),
        .I2(\var_reg[15]_i_4_n_6 ),
        .O(\var_reg[14]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \var_reg[14]_i_16 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[6]),
        .I2(\var_reg[15]_i_4_n_1 ),
        .O(\var_reg[14]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[14]_i_17 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[6]),
        .O(\var_reg[14]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    \var_reg[14]_i_18 
       (.I0(\var_reg[15]_i_4_n_6 ),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[7]),
        .I3(B_IBUF[6]),
        .I4(A_IBUF[6]),
        .O(\var_reg[14]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[14]_i_19 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[6]),
        .O(\var_reg[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \var_reg[14]_i_2 
       (.I0(\var_reg[14]_i_10_n_0 ),
        .I1(\var_reg[15]_i_4_n_1 ),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[7]),
        .I4(\var_reg[15]_i_4_n_6 ),
        .I5(A_IBUF[5]),
        .O(\var_reg[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \var_reg[14]_i_20 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[4]),
        .I2(\var_reg[15]_i_4_n_7 ),
        .O(\var_reg[14]_i_20_n_0 ));
  CARRY4 \var_reg[14]_i_21 
       (.CI(\var_reg[6]_i_3_n_0 ),
        .CO({\NLW_var_reg[14]_i_21_CO_UNCONNECTED [3],\var_reg[14]_i_21_n_1 ,\NLW_var_reg[14]_i_21_CO_UNCONNECTED [1],\var_reg[14]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\var_reg[14]_i_22_n_0 ,\var_reg[14]_i_23_n_0 }),
        .O({\NLW_var_reg[14]_i_21_O_UNCONNECTED [3:2],\var_reg[14]_i_21_n_6 ,\var_reg[14]_i_21_n_7 }),
        .S({1'b0,1'b1,\var_reg[14]_i_24_n_0 ,\var_reg[14]_i_25_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \var_reg[14]_i_22 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[7]),
        .O(\var_reg[14]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[14]_i_23 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[6]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[7]),
        .O(\var_reg[14]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \var_reg[14]_i_24 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[7]),
        .O(\var_reg[14]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \var_reg[14]_i_25 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[5]),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[2]),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[1]),
        .O(\var_reg[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \var_reg[14]_i_3 
       (.I0(\var_reg[14]_i_11_n_0 ),
        .I1(\var_reg[15]_i_4_n_6 ),
        .I2(A_IBUF[5]),
        .I3(B_IBUF[7]),
        .I4(\var_reg[15]_i_4_n_7 ),
        .I5(A_IBUF[4]),
        .O(\var_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    \var_reg[14]_i_4 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[5]),
        .I2(\var_reg[15]_i_4_n_7 ),
        .I3(A_IBUF[4]),
        .I4(B_IBUF[7]),
        .I5(\var_reg[14]_i_12_n_0 ),
        .O(\var_reg[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \var_reg[14]_i_5 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[4]),
        .I2(\var_reg[14]_i_13_n_0 ),
        .I3(\var_reg[14]_i_14_n_0 ),
        .O(\var_reg[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    \var_reg[14]_i_6 
       (.I0(\var_reg[14]_i_15_n_0 ),
        .I1(B_IBUF[6]),
        .I2(A_IBUF[7]),
        .I3(B_IBUF[7]),
        .I4(A_IBUF[6]),
        .I5(\var_reg[15]_i_4_n_1 ),
        .O(\var_reg[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \var_reg[14]_i_7 
       (.I0(\var_reg[14]_i_3_n_0 ),
        .I1(\var_reg[14]_i_16_n_0 ),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[7]),
        .I4(\var_reg[14]_i_15_n_0 ),
        .O(\var_reg[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    \var_reg[14]_i_8 
       (.I0(\var_reg[14]_i_12_n_0 ),
        .I1(\var_reg[14]_i_17_n_0 ),
        .I2(\var_reg[14]_i_18_n_0 ),
        .I3(B_IBUF[7]),
        .I4(A_IBUF[4]),
        .I5(\var_reg[15]_i_4_n_7 ),
        .O(\var_reg[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \var_reg[14]_i_9 
       (.I0(\var_reg[14]_i_14_n_0 ),
        .I1(\var_reg[14]_i_13_n_0 ),
        .I2(\var_reg[14]_i_19_n_0 ),
        .I3(\var_reg[14]_i_20_n_0 ),
        .I4(\var_reg[14]_i_17_n_0 ),
        .I5(\var_reg[14]_i_12_n_0 ),
        .O(\var_reg[14]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[15] 
       (.CLR(1'b0),
        .D(\var_reg[15]_i_1_n_7 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[15]));
  CARRY4 \var_reg[15]_i_1 
       (.CI(\var_reg[14]_i_1_n_0 ),
        .CO(\NLW_var_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_var_reg[15]_i_1_O_UNCONNECTED [3:1],\var_reg[15]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\var_reg[15]_i_3_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \var_reg[15]_i_2 
       (.I0(Ctrl_Alu_IBUF[1]),
        .I1(Ctrl_Alu_IBUF[0]),
        .I2(Ctrl_Alu_IBUF[2]),
        .O(\var_reg[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \var_reg[15]_i_3 
       (.I0(A_IBUF[7]),
        .I1(\var_reg[15]_i_4_n_1 ),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[7]),
        .O(\var_reg[15]_i_3_n_0 ));
  CARRY4 \var_reg[15]_i_4 
       (.CI(\var_reg[10]_i_13_n_0 ),
        .CO({\NLW_var_reg[15]_i_4_CO_UNCONNECTED [3],\var_reg[15]_i_4_n_1 ,\NLW_var_reg[15]_i_4_CO_UNCONNECTED [1],\var_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\var_reg[15]_i_5_n_0 ,\var_reg[15]_i_6_n_0 }),
        .O({\NLW_var_reg[15]_i_4_O_UNCONNECTED [3:2],\var_reg[15]_i_4_n_6 ,\var_reg[15]_i_4_n_7 }),
        .S({1'b0,1'b1,\var_reg[15]_i_7_n_0 ,\var_reg[15]_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \var_reg[15]_i_5 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[7]),
        .O(\var_reg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[15]_i_6 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[6]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[7]),
        .O(\var_reg[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \var_reg[15]_i_7 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[7]),
        .O(\var_reg[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \var_reg[15]_i_8 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[5]),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[5]),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[4]),
        .O(\var_reg[15]_i_8_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[1] 
       (.CLR(1'b0),
        .D(\var_reg[2]_i_1_n_6 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[2] 
       (.CLR(1'b0),
        .D(\var_reg[2]_i_1_n_5 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[2]));
  CARRY4 \var_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\var_reg[2]_i_1_n_0 ,\var_reg[2]_i_1_n_1 ,\var_reg[2]_i_1_n_2 ,\var_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\var_reg[2]_i_2_n_0 ,\var_reg[2]_i_3_n_0 ,\var_reg[2]_i_4_n_0 ,1'b0}),
        .O({\var_reg[2]_i_1_n_4 ,\var_reg[2]_i_1_n_5 ,\var_reg[2]_i_1_n_6 ,\var_reg[2]_i_1_n_7 }),
        .S({\var_reg[2]_i_5_n_0 ,\var_reg[2]_i_6_n_0 ,\var_reg[2]_i_7_n_0 ,\var_reg[2]_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \var_reg[2]_i_2 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[1]),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[0]),
        .O(\var_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \var_reg[2]_i_3 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[0]),
        .O(\var_reg[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \var_reg[2]_i_4 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[1]),
        .O(\var_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \var_reg[2]_i_5 
       (.I0(A_IBUF[2]),
        .I1(\var_reg[2]_i_9_n_0 ),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[2]),
        .O(\var_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \var_reg[2]_i_6 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[2]),
        .O(\var_reg[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \var_reg[2]_i_7 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[0]),
        .O(\var_reg[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \var_reg[2]_i_8 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(\var_reg[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[2]_i_9 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[0]),
        .O(\var_reg[2]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[3] 
       (.CLR(1'b0),
        .D(\var_reg[3]_i_1_n_0 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \var_reg[3]_i_1 
       (.I0(\var_reg[2]_i_1_n_4 ),
        .I1(\var_reg[3]_i_2_n_7 ),
        .O(\var_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[3]_i_10 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\var_reg[3]_i_10_n_0 ));
  CARRY4 \var_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\var_reg[3]_i_2_n_0 ,\var_reg[3]_i_2_n_1 ,\var_reg[3]_i_2_n_2 ,\var_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\var_reg[3]_i_3_n_0 ,\var_reg[3]_i_4_n_0 ,\var_reg[3]_i_5_n_0 ,1'b0}),
        .O({\var_reg[3]_i_2_n_4 ,\var_reg[3]_i_2_n_5 ,\var_reg[3]_i_2_n_6 ,\var_reg[3]_i_2_n_7 }),
        .S({\var_reg[3]_i_6_n_0 ,\var_reg[3]_i_7_n_0 ,\var_reg[3]_i_8_n_0 ,\var_reg[3]_i_9_n_0 }));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \var_reg[3]_i_3 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[1]),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[3]),
        .O(\var_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \var_reg[3]_i_4 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[0]),
        .O(\var_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \var_reg[3]_i_5 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[1]),
        .O(\var_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \var_reg[3]_i_6 
       (.I0(A_IBUF[2]),
        .I1(\var_reg[3]_i_10_n_0 ),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[5]),
        .O(\var_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \var_reg[3]_i_7 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[5]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[4]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[2]),
        .O(\var_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \var_reg[3]_i_8 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[0]),
        .O(\var_reg[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \var_reg[3]_i_9 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[3]),
        .O(\var_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[4] 
       (.CLR(1'b0),
        .D(\var_reg[6]_i_1_n_6 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[5] 
       (.CLR(1'b0),
        .D(\var_reg[6]_i_1_n_5 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[6] 
       (.CLR(1'b0),
        .D(\var_reg[6]_i_1_n_4 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[6]));
  CARRY4 \var_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\var_reg[6]_i_1_n_0 ,\var_reg[6]_i_1_n_1 ,\var_reg[6]_i_1_n_2 ,\var_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\var_reg[6]_i_2_n_0 ,\var_reg[6]_i_3_n_6 ,\var_reg[6]_i_3_n_7 ,\var_reg[2]_i_1_n_4 }),
        .O({\var_reg[6]_i_1_n_4 ,\var_reg[6]_i_1_n_5 ,\var_reg[6]_i_1_n_6 ,\NLW_var_reg[6]_i_1_O_UNCONNECTED [0]}),
        .S({\var_reg[6]_i_4_n_0 ,\var_reg[6]_i_5_n_0 ,\var_reg[6]_i_6_n_0 ,\var_reg[6]_i_7_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[6]_i_10 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[4]),
        .O(\var_reg[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[6]_i_11 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[3]),
        .O(\var_reg[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[6]_i_12 
       (.I0(\var_reg[6]_i_8_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[6]),
        .I3(\var_reg[6]_i_16_n_0 ),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[0]),
        .O(\var_reg[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[6]_i_13 
       (.I0(\var_reg[6]_i_9_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[5]),
        .I3(\var_reg[6]_i_17_n_0 ),
        .I4(A_IBUF[6]),
        .I5(B_IBUF[0]),
        .O(\var_reg[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[6]_i_14 
       (.I0(\var_reg[6]_i_10_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[4]),
        .I3(\var_reg[6]_i_18_n_0 ),
        .I4(A_IBUF[5]),
        .I5(B_IBUF[0]),
        .O(\var_reg[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \var_reg[6]_i_15 
       (.I0(\var_reg[6]_i_11_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[3]),
        .I3(\var_reg[6]_i_19_n_0 ),
        .I4(A_IBUF[4]),
        .I5(B_IBUF[0]),
        .O(\var_reg[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[6]_i_16 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[2]),
        .O(\var_reg[6]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[6]_i_17 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[2]),
        .O(\var_reg[6]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[6]_i_18 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[2]),
        .O(\var_reg[6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \var_reg[6]_i_19 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\var_reg[6]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \var_reg[6]_i_2 
       (.I0(\var_reg[6]_i_3_n_5 ),
        .I1(\var_reg[3]_i_2_n_4 ),
        .O(\var_reg[6]_i_2_n_0 ));
  CARRY4 \var_reg[6]_i_3 
       (.CI(\var_reg[2]_i_1_n_0 ),
        .CO({\var_reg[6]_i_3_n_0 ,\var_reg[6]_i_3_n_1 ,\var_reg[6]_i_3_n_2 ,\var_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\var_reg[6]_i_8_n_0 ,\var_reg[6]_i_9_n_0 ,\var_reg[6]_i_10_n_0 ,\var_reg[6]_i_11_n_0 }),
        .O({\var_reg[6]_i_3_n_4 ,\var_reg[6]_i_3_n_5 ,\var_reg[6]_i_3_n_6 ,\var_reg[6]_i_3_n_7 }),
        .S({\var_reg[6]_i_12_n_0 ,\var_reg[6]_i_13_n_0 ,\var_reg[6]_i_14_n_0 ,\var_reg[6]_i_15_n_0 }));
  LUT4 #(
    .INIT(16'h9666)) 
    \var_reg[6]_i_4 
       (.I0(\var_reg[3]_i_2_n_4 ),
        .I1(\var_reg[6]_i_3_n_5 ),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[0]),
        .O(\var_reg[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \var_reg[6]_i_5 
       (.I0(\var_reg[6]_i_3_n_6 ),
        .I1(\var_reg[3]_i_2_n_5 ),
        .O(\var_reg[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \var_reg[6]_i_6 
       (.I0(\var_reg[6]_i_3_n_7 ),
        .I1(\var_reg[3]_i_2_n_6 ),
        .O(\var_reg[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \var_reg[6]_i_7 
       (.I0(\var_reg[2]_i_1_n_4 ),
        .I1(\var_reg[3]_i_2_n_7 ),
        .O(\var_reg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[6]_i_8 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[6]),
        .O(\var_reg[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \var_reg[6]_i_9 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[4]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[5]),
        .O(\var_reg[6]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[7] 
       (.CLR(1'b0),
        .D(\var_reg[10]_i_1_n_7 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[8] 
       (.CLR(1'b0),
        .D(\var_reg[10]_i_1_n_6 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[9] 
       (.CLR(1'b0),
        .D(\var_reg[10]_i_1_n_5 ),
        .G(\var_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(var[9]));
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
