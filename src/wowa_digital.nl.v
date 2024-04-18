// This is the unpowered netlist.
module wowa_digital (analog_comparator_out,
    calib_enable,
    clk,
    comparator_nen,
    do_calibrate,
    result_ready,
    rst,
    thresh_sel,
    use_ext_thresh,
    user_enable,
    dac_set,
    result);
 input analog_comparator_out;
 input calib_enable;
 input clk;
 output comparator_nen;
 output do_calibrate;
 output result_ready;
 input rst;
 output thresh_sel;
 input use_ext_thresh;
 input user_enable;
 output [7:0] dac_set;
 output [7:0] result;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire \adc.comparator.compres.ffsync.stage0 ;
 wire \adc.comparator.compres.ffsync.stage1 ;
 wire \adc.internalCounter[0] ;
 wire \adc.internalCounter[1] ;
 wire \adc.internalCounter[2] ;
 wire \adc.internalCounter[3] ;
 wire \adc.internalCounter[4] ;
 wire \adc.internalCounter[5] ;
 wire \adc.state[0] ;
 wire \adc.state[1] ;
 wire \adc.state[2] ;
 wire \adc.state[3] ;
 wire \adc.syncroCount[0] ;
 wire \adc.syncroCount[1] ;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(use_ext_thresh));
 sky130_fd_sc_hd__fill_2 FILLER_0_0_107 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_121 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_126 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_122 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_134 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_141 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_63 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_111 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_119 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_131 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_16 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_28 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_72 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_119 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_9 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_117 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_70 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_105 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_118 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_138 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_104 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_120 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_35 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_89 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_118 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_142 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_97 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_114 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_124 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_98 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_120 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_142 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_21 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_60 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_88 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_122 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_134 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_100 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_142 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_18 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_88 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_92 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_119 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_103 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_127 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_43 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_60 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_99 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_107 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_119 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_141 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_20 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_35 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_47 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_72 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_95 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_128 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_13 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_134 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_142 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_21 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_28 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_118 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_48 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_124 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_70 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_78 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_84 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_88 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_94 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_140 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_38 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_92 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_104 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_108 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_104 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_133 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_96 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_74 ();
 sky130_fd_sc_hd__buf_2 _189_ (.A(\adc.state[0] ),
    .X(_156_));
 sky130_fd_sc_hd__or4bb_4 _190_ (.A(\adc.state[3] ),
    .B(\adc.state[2] ),
    .C_N(\adc.state[1] ),
    .D_N(_156_),
    .X(_157_));
 sky130_fd_sc_hd__clkbuf_4 _191_ (.A(_157_),
    .X(_158_));
 sky130_fd_sc_hd__clkbuf_4 _192_ (.A(\adc.internalCounter[0] ),
    .X(_159_));
 sky130_fd_sc_hd__buf_2 _193_ (.A(\adc.internalCounter[1] ),
    .X(_160_));
 sky130_fd_sc_hd__or4b_1 _194_ (.A(\adc.internalCounter[5] ),
    .B(\adc.internalCounter[4] ),
    .C(\adc.internalCounter[3] ),
    .D_N(\adc.internalCounter[2] ),
    .X(_161_));
 sky130_fd_sc_hd__clkbuf_2 _195_ (.A(_161_),
    .X(_162_));
 sky130_fd_sc_hd__nand4b_4 _196_ (.A_N(\adc.state[3] ),
    .B(\adc.state[2] ),
    .C(\adc.state[1] ),
    .D(\adc.state[0] ),
    .Y(_163_));
 sky130_fd_sc_hd__or4_4 _197_ (.A(_160_),
    .B(\adc.comparator.compres.ffsync.stage1 ),
    .C(_162_),
    .D(_163_),
    .X(_164_));
 sky130_fd_sc_hd__buf_2 _198_ (.A(\adc.internalCounter[2] ),
    .X(_165_));
 sky130_fd_sc_hd__or3_1 _199_ (.A(\adc.internalCounter[5] ),
    .B(\adc.internalCounter[4] ),
    .C(\adc.internalCounter[3] ),
    .X(_166_));
 sky130_fd_sc_hd__buf_2 _200_ (.A(_166_),
    .X(_167_));
 sky130_fd_sc_hd__nand2_1 _201_ (.A(_160_),
    .B(_159_),
    .Y(_168_));
 sky130_fd_sc_hd__or2_1 _202_ (.A(\adc.comparator.compres.ffsync.stage1 ),
    .B(_163_),
    .X(_169_));
 sky130_fd_sc_hd__or4_2 _203_ (.A(_165_),
    .B(_167_),
    .C(_168_),
    .D(_169_),
    .X(_170_));
 sky130_fd_sc_hd__nand2b_4 _204_ (.A_N(_160_),
    .B(\adc.internalCounter[0] ),
    .Y(_171_));
 sky130_fd_sc_hd__nand2b_2 _205_ (.A_N(\adc.internalCounter[0] ),
    .B(_160_),
    .Y(_172_));
 sky130_fd_sc_hd__a2111o_1 _206_ (.A1(_171_),
    .A2(_172_),
    .B1(_169_),
    .C1(_167_),
    .D1(_165_),
    .X(_173_));
 sky130_fd_sc_hd__a2111o_1 _207_ (.A1(_171_),
    .A2(_172_),
    .B1(_157_),
    .C1(\adc.internalCounter[2] ),
    .D1(_166_),
    .X(_174_));
 sky130_fd_sc_hd__or2_1 _208_ (.A(\adc.internalCounter[1] ),
    .B(\adc.internalCounter[0] ),
    .X(_175_));
 sky130_fd_sc_hd__or4_1 _209_ (.A(\adc.internalCounter[2] ),
    .B(_166_),
    .C(_157_),
    .D(_175_),
    .X(_176_));
 sky130_fd_sc_hd__or4_1 _210_ (.A(\adc.internalCounter[2] ),
    .B(_166_),
    .C(_157_),
    .D(_168_),
    .X(_177_));
 sky130_fd_sc_hd__and3_1 _211_ (.A(_174_),
    .B(_176_),
    .C(_177_),
    .X(_178_));
 sky130_fd_sc_hd__o2111a_1 _212_ (.A1(_159_),
    .A2(_164_),
    .B1(_170_),
    .C1(_173_),
    .D1(_178_),
    .X(_179_));
 sky130_fd_sc_hd__nor2_1 _213_ (.A(\adc.comparator.compres.ffsync.stage1 ),
    .B(_163_),
    .Y(_180_));
 sky130_fd_sc_hd__or3_2 _214_ (.A(\adc.internalCounter[2] ),
    .B(_160_),
    .C(_159_),
    .X(_181_));
 sky130_fd_sc_hd__or2b_1 _215_ (.A(_167_),
    .B_N(_181_),
    .X(_182_));
 sky130_fd_sc_hd__inv_2 _216_ (.A(net4),
    .Y(_183_));
 sky130_fd_sc_hd__or4b_4 _217_ (.A(\adc.state[3] ),
    .B(\adc.state[2] ),
    .C(\adc.state[1] ),
    .D_N(_156_),
    .X(_184_));
 sky130_fd_sc_hd__nor2_4 _218_ (.A(_183_),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__a21o_1 _219_ (.A1(_180_),
    .A2(_182_),
    .B1(_185_),
    .X(_186_));
 sky130_fd_sc_hd__inv_2 _220_ (.A(\adc.state[2] ),
    .Y(_187_));
 sky130_fd_sc_hd__nand3b_2 _221_ (.A_N(\adc.state[3] ),
    .B(\adc.state[1] ),
    .C(_156_),
    .Y(_188_));
 sky130_fd_sc_hd__nor2_2 _222_ (.A(_187_),
    .B(_188_),
    .Y(_031_));
 sky130_fd_sc_hd__o21bai_1 _223_ (.A1(_162_),
    .A2(_172_),
    .B1_N(\adc.comparator.compres.ffsync.stage1 ),
    .Y(_032_));
 sky130_fd_sc_hd__and2_1 _224_ (.A(\adc.state[1] ),
    .B(_156_),
    .X(_033_));
 sky130_fd_sc_hd__nor2_1 _225_ (.A(\adc.state[3] ),
    .B(\adc.state[2] ),
    .Y(_034_));
 sky130_fd_sc_hd__a32o_1 _226_ (.A1(_167_),
    .A2(_033_),
    .A3(_034_),
    .B1(_184_),
    .B2(_188_),
    .X(_035_));
 sky130_fd_sc_hd__a21o_1 _227_ (.A1(_031_),
    .A2(_032_),
    .B1(_035_),
    .X(_036_));
 sky130_fd_sc_hd__nor2_4 _228_ (.A(_186_),
    .B(_036_),
    .Y(_037_));
 sky130_fd_sc_hd__a2111o_1 _229_ (.A1(\adc.state[2] ),
    .A2(\adc.comparator.compres.ffsync.stage1 ),
    .B1(_188_),
    .C1(_162_),
    .D1(_168_),
    .X(_038_));
 sky130_fd_sc_hd__o31a_1 _230_ (.A1(_159_),
    .A2(_158_),
    .A3(_162_),
    .B1(_038_),
    .X(_039_));
 sky130_fd_sc_hd__a41o_1 _231_ (.A1(_158_),
    .A2(_179_),
    .A3(_037_),
    .A4(_039_),
    .B1(net3),
    .X(_040_));
 sky130_fd_sc_hd__a31o_1 _232_ (.A1(_179_),
    .A2(_037_),
    .A3(_039_),
    .B1(net20),
    .X(_041_));
 sky130_fd_sc_hd__and2b_1 _233_ (.A_N(_040_),
    .B(_041_),
    .X(_042_));
 sky130_fd_sc_hd__clkbuf_1 _234_ (.A(_042_),
    .X(_000_));
 sky130_fd_sc_hd__a211o_1 _235_ (.A1(_180_),
    .A2(_182_),
    .B1(_035_),
    .C1(_185_),
    .X(_043_));
 sky130_fd_sc_hd__nor2_1 _236_ (.A(_171_),
    .B(_162_),
    .Y(_044_));
 sky130_fd_sc_hd__o21ai_1 _237_ (.A1(\adc.comparator.compres.ffsync.stage1 ),
    .A2(_044_),
    .B1(_031_),
    .Y(_045_));
 sky130_fd_sc_hd__or3_1 _238_ (.A(_160_),
    .B(_157_),
    .C(_162_),
    .X(_046_));
 sky130_fd_sc_hd__and4b_1 _239_ (.A_N(_043_),
    .B(_038_),
    .C(_045_),
    .D(_046_),
    .X(_047_));
 sky130_fd_sc_hd__a21oi_1 _240_ (.A1(_179_),
    .A2(_047_),
    .B1(net21),
    .Y(_048_));
 sky130_fd_sc_hd__clkbuf_4 _241_ (.A(net3),
    .X(_049_));
 sky130_fd_sc_hd__a311oi_1 _242_ (.A1(_158_),
    .A2(_179_),
    .A3(_047_),
    .B1(_048_),
    .C1(_049_),
    .Y(_001_));
 sky130_fd_sc_hd__or4_1 _243_ (.A(_165_),
    .B(_167_),
    .C(_172_),
    .D(_169_),
    .X(_050_));
 sky130_fd_sc_hd__and4b_1 _244_ (.A_N(_036_),
    .B(_164_),
    .C(_170_),
    .D(_050_),
    .X(_051_));
 sky130_fd_sc_hd__or3_1 _245_ (.A(_157_),
    .B(_162_),
    .C(_175_),
    .X(_052_));
 sky130_fd_sc_hd__a211o_1 _246_ (.A1(_171_),
    .A2(_172_),
    .B1(_162_),
    .C1(_157_),
    .X(_053_));
 sky130_fd_sc_hd__and4_1 _247_ (.A(_177_),
    .B(_038_),
    .C(_052_),
    .D(_053_),
    .X(_054_));
 sky130_fd_sc_hd__or4b_1 _248_ (.A(\adc.state[3] ),
    .B(\adc.state[2] ),
    .C(_156_),
    .D_N(\adc.state[1] ),
    .X(_055_));
 sky130_fd_sc_hd__buf_2 _249_ (.A(_055_),
    .X(_056_));
 sky130_fd_sc_hd__nand2_2 _250_ (.A(_163_),
    .B(_056_),
    .Y(_057_));
 sky130_fd_sc_hd__or3_2 _251_ (.A(_167_),
    .B(_181_),
    .C(_163_),
    .X(_058_));
 sky130_fd_sc_hd__o21ai_4 _252_ (.A1(_185_),
    .A2(_057_),
    .B1(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__and3_1 _253_ (.A(_174_),
    .B(_054_),
    .C(_059_),
    .X(_060_));
 sky130_fd_sc_hd__a21oi_1 _254_ (.A1(_051_),
    .A2(_060_),
    .B1(net15),
    .Y(_061_));
 sky130_fd_sc_hd__a311oi_1 _255_ (.A1(_158_),
    .A2(_051_),
    .A3(_060_),
    .B1(_061_),
    .C1(_049_),
    .Y(_002_));
 sky130_fd_sc_hd__and3_1 _256_ (.A(_176_),
    .B(_177_),
    .C(_052_),
    .X(_062_));
 sky130_fd_sc_hd__or4_1 _257_ (.A(\adc.internalCounter[2] ),
    .B(_167_),
    .C(_157_),
    .D(_172_),
    .X(_063_));
 sky130_fd_sc_hd__and3_1 _258_ (.A(_063_),
    .B(_038_),
    .C(_053_),
    .X(_064_));
 sky130_fd_sc_hd__and3b_1 _259_ (.A_N(_186_),
    .B(_062_),
    .C(_064_),
    .X(_065_));
 sky130_fd_sc_hd__a21oi_1 _260_ (.A1(_051_),
    .A2(_065_),
    .B1(net16),
    .Y(_066_));
 sky130_fd_sc_hd__a311oi_1 _261_ (.A1(_158_),
    .A2(_051_),
    .A3(_065_),
    .B1(_066_),
    .C1(_049_),
    .Y(_003_));
 sky130_fd_sc_hd__a2111o_1 _262_ (.A1(_171_),
    .A2(_175_),
    .B1(_157_),
    .C1(_165_),
    .D1(_167_),
    .X(_067_));
 sky130_fd_sc_hd__o41a_1 _263_ (.A1(_165_),
    .A2(_167_),
    .A3(_171_),
    .A4(_169_),
    .B1(_067_),
    .X(_068_));
 sky130_fd_sc_hd__and4_1 _264_ (.A(_170_),
    .B(_164_),
    .C(_054_),
    .D(_068_),
    .X(_069_));
 sky130_fd_sc_hd__a21oi_1 _265_ (.A1(_037_),
    .A2(_069_),
    .B1(net17),
    .Y(_070_));
 sky130_fd_sc_hd__a311oi_1 _266_ (.A1(_158_),
    .A2(_037_),
    .A3(_069_),
    .B1(_070_),
    .C1(_049_),
    .Y(_004_));
 sky130_fd_sc_hd__and3_1 _267_ (.A(_164_),
    .B(_052_),
    .C(_067_),
    .X(_071_));
 sky130_fd_sc_hd__and3_1 _268_ (.A(_173_),
    .B(_064_),
    .C(_071_),
    .X(_072_));
 sky130_fd_sc_hd__a21oi_1 _269_ (.A1(_037_),
    .A2(_072_),
    .B1(net18),
    .Y(_073_));
 sky130_fd_sc_hd__a311oi_1 _270_ (.A1(_158_),
    .A2(_037_),
    .A3(_072_),
    .B1(_073_),
    .C1(net3),
    .Y(_005_));
 sky130_fd_sc_hd__inv_2 _271_ (.A(_159_),
    .Y(_074_));
 sky130_fd_sc_hd__and2_1 _272_ (.A(_038_),
    .B(_053_),
    .X(_075_));
 sky130_fd_sc_hd__o2111a_1 _273_ (.A1(_074_),
    .A2(_164_),
    .B1(_075_),
    .C1(_173_),
    .D1(_170_),
    .X(_076_));
 sky130_fd_sc_hd__a41o_1 _274_ (.A1(_158_),
    .A2(_178_),
    .A3(_037_),
    .A4(_076_),
    .B1(net3),
    .X(_077_));
 sky130_fd_sc_hd__a31o_1 _275_ (.A1(_178_),
    .A2(_037_),
    .A3(_076_),
    .B1(net19),
    .X(_078_));
 sky130_fd_sc_hd__and2b_1 _276_ (.A_N(_077_),
    .B(_078_),
    .X(_079_));
 sky130_fd_sc_hd__clkbuf_1 _277_ (.A(_079_),
    .X(_006_));
 sky130_fd_sc_hd__o21a_1 _278_ (.A1(_185_),
    .A2(_057_),
    .B1(_058_),
    .X(_080_));
 sky130_fd_sc_hd__and4_1 _279_ (.A(\adc.internalCounter[5] ),
    .B(\adc.internalCounter[4] ),
    .C(\adc.internalCounter[3] ),
    .D(\adc.internalCounter[2] ),
    .X(_081_));
 sky130_fd_sc_hd__and2b_1 _280_ (.A_N(_056_),
    .B(_081_),
    .X(_082_));
 sky130_fd_sc_hd__o21ai_1 _281_ (.A1(_074_),
    .A2(_082_),
    .B1(_057_),
    .Y(_083_));
 sky130_fd_sc_hd__nand2_1 _282_ (.A(_080_),
    .B(_083_),
    .Y(_084_));
 sky130_fd_sc_hd__inv_2 _283_ (.A(net3),
    .Y(_085_));
 sky130_fd_sc_hd__clkbuf_4 _284_ (.A(_085_),
    .X(_086_));
 sky130_fd_sc_hd__o211a_1 _285_ (.A1(_159_),
    .A2(_080_),
    .B1(_084_),
    .C1(_086_),
    .X(_007_));
 sky130_fd_sc_hd__a21oi_1 _286_ (.A1(_171_),
    .A2(_172_),
    .B1(_056_),
    .Y(_087_));
 sky130_fd_sc_hd__a311o_1 _287_ (.A1(_171_),
    .A2(_172_),
    .A3(_031_),
    .B1(_059_),
    .C1(_087_),
    .X(_088_));
 sky130_fd_sc_hd__o221a_1 _288_ (.A1(_160_),
    .A2(_080_),
    .B1(_082_),
    .B2(_088_),
    .C1(_086_),
    .X(_008_));
 sky130_fd_sc_hd__nand2_1 _289_ (.A(_165_),
    .B(_175_),
    .Y(_089_));
 sky130_fd_sc_hd__a21oi_1 _290_ (.A1(_181_),
    .A2(_089_),
    .B1(_163_),
    .Y(_090_));
 sky130_fd_sc_hd__a21oi_1 _291_ (.A1(_160_),
    .A2(_159_),
    .B1(_165_),
    .Y(_091_));
 sky130_fd_sc_hd__and3_1 _292_ (.A(_165_),
    .B(_160_),
    .C(_159_),
    .X(_092_));
 sky130_fd_sc_hd__or2_1 _293_ (.A(net2),
    .B(_057_),
    .X(_093_));
 sky130_fd_sc_hd__o31a_1 _294_ (.A1(_056_),
    .A2(_091_),
    .A3(_092_),
    .B1(_093_),
    .X(_094_));
 sky130_fd_sc_hd__or4b_1 _295_ (.A(_059_),
    .B(_082_),
    .C(_090_),
    .D_N(_094_),
    .X(_095_));
 sky130_fd_sc_hd__o211a_1 _296_ (.A1(_165_),
    .A2(_080_),
    .B1(_095_),
    .C1(_086_),
    .X(_009_));
 sky130_fd_sc_hd__nand3_2 _297_ (.A(_165_),
    .B(_160_),
    .C(_159_),
    .Y(_096_));
 sky130_fd_sc_hd__nor2_2 _298_ (.A(_056_),
    .B(_081_),
    .Y(_097_));
 sky130_fd_sc_hd__a221o_1 _299_ (.A1(_181_),
    .A2(_031_),
    .B1(_096_),
    .B2(_097_),
    .C1(_059_),
    .X(_098_));
 sky130_fd_sc_hd__nor2_1 _300_ (.A(\adc.internalCounter[3] ),
    .B(_181_),
    .Y(_099_));
 sky130_fd_sc_hd__nand2_1 _301_ (.A(_031_),
    .B(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__o311a_1 _302_ (.A1(\adc.internalCounter[3] ),
    .A2(_056_),
    .A3(_096_),
    .B1(_093_),
    .C1(_100_),
    .X(_101_));
 sky130_fd_sc_hd__o2bb2a_1 _303_ (.A1_N(\adc.internalCounter[3] ),
    .A2_N(_098_),
    .B1(_059_),
    .B2(_101_),
    .X(_102_));
 sky130_fd_sc_hd__nor2_1 _304_ (.A(_049_),
    .B(_102_),
    .Y(_010_));
 sky130_fd_sc_hd__inv_2 _305_ (.A(\adc.internalCounter[4] ),
    .Y(_103_));
 sky130_fd_sc_hd__a31oi_1 _306_ (.A1(\adc.internalCounter[3] ),
    .A2(_092_),
    .A3(_097_),
    .B1(\adc.internalCounter[4] ),
    .Y(_104_));
 sky130_fd_sc_hd__nand2_1 _307_ (.A(\adc.internalCounter[4] ),
    .B(\adc.internalCounter[3] ),
    .Y(_105_));
 sky130_fd_sc_hd__o21ai_1 _308_ (.A1(_105_),
    .A2(_096_),
    .B1(_097_),
    .Y(_106_));
 sky130_fd_sc_hd__o211a_1 _309_ (.A1(_163_),
    .A2(_099_),
    .B1(_106_),
    .C1(_080_),
    .X(_107_));
 sky130_fd_sc_hd__o221a_1 _310_ (.A1(\adc.internalCounter[4] ),
    .A2(_100_),
    .B1(_104_),
    .B2(_107_),
    .C1(_093_),
    .X(_108_));
 sky130_fd_sc_hd__a211oi_1 _311_ (.A1(_103_),
    .A2(_059_),
    .B1(_108_),
    .C1(_049_),
    .Y(_011_));
 sky130_fd_sc_hd__or4_1 _312_ (.A(\adc.internalCounter[5] ),
    .B(_056_),
    .C(_105_),
    .D(_096_),
    .X(_109_));
 sky130_fd_sc_hd__a21o_1 _313_ (.A1(_093_),
    .A2(_109_),
    .B1(_059_),
    .X(_110_));
 sky130_fd_sc_hd__or2_1 _314_ (.A(_103_),
    .B(_163_),
    .X(_111_));
 sky130_fd_sc_hd__a21bo_1 _315_ (.A1(_107_),
    .A2(_111_),
    .B1_N(\adc.internalCounter[5] ),
    .X(_112_));
 sky130_fd_sc_hd__a21oi_1 _316_ (.A1(_110_),
    .A2(_112_),
    .B1(_049_),
    .Y(_012_));
 sky130_fd_sc_hd__or2_1 _317_ (.A(\adc.state[3] ),
    .B(_187_),
    .X(_113_));
 sky130_fd_sc_hd__or2_1 _318_ (.A(\adc.state[1] ),
    .B(_156_),
    .X(_114_));
 sky130_fd_sc_hd__nor2_4 _319_ (.A(_113_),
    .B(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__nor2_2 _320_ (.A(_185_),
    .B(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__a22o_1 _321_ (.A1(net15),
    .A2(_115_),
    .B1(_116_),
    .B2(net6),
    .X(_117_));
 sky130_fd_sc_hd__and2_1 _322_ (.A(_086_),
    .B(_117_),
    .X(_118_));
 sky130_fd_sc_hd__clkbuf_1 _323_ (.A(_118_),
    .X(_013_));
 sky130_fd_sc_hd__a22o_1 _324_ (.A1(net16),
    .A2(_115_),
    .B1(_116_),
    .B2(net7),
    .X(_119_));
 sky130_fd_sc_hd__and2_1 _325_ (.A(_086_),
    .B(_119_),
    .X(_120_));
 sky130_fd_sc_hd__clkbuf_1 _326_ (.A(_120_),
    .X(_014_));
 sky130_fd_sc_hd__a22o_1 _327_ (.A1(net17),
    .A2(_115_),
    .B1(_116_),
    .B2(net8),
    .X(_121_));
 sky130_fd_sc_hd__and2_1 _328_ (.A(_086_),
    .B(_121_),
    .X(_122_));
 sky130_fd_sc_hd__clkbuf_1 _329_ (.A(_122_),
    .X(_015_));
 sky130_fd_sc_hd__a22o_1 _330_ (.A1(net18),
    .A2(_115_),
    .B1(_116_),
    .B2(net9),
    .X(_123_));
 sky130_fd_sc_hd__and2_1 _331_ (.A(_085_),
    .B(_123_),
    .X(_124_));
 sky130_fd_sc_hd__clkbuf_1 _332_ (.A(_124_),
    .X(_016_));
 sky130_fd_sc_hd__a22o_1 _333_ (.A1(net19),
    .A2(_115_),
    .B1(_116_),
    .B2(net10),
    .X(_125_));
 sky130_fd_sc_hd__and2_1 _334_ (.A(_085_),
    .B(_125_),
    .X(_126_));
 sky130_fd_sc_hd__clkbuf_1 _335_ (.A(_126_),
    .X(_017_));
 sky130_fd_sc_hd__a22o_1 _336_ (.A1(net20),
    .A2(_115_),
    .B1(_116_),
    .B2(net11),
    .X(_127_));
 sky130_fd_sc_hd__and2_1 _337_ (.A(_085_),
    .B(_127_),
    .X(_128_));
 sky130_fd_sc_hd__clkbuf_1 _338_ (.A(_128_),
    .X(_018_));
 sky130_fd_sc_hd__a22o_1 _339_ (.A1(net21),
    .A2(_115_),
    .B1(_116_),
    .B2(net12),
    .X(_129_));
 sky130_fd_sc_hd__and2_1 _340_ (.A(_085_),
    .B(_129_),
    .X(_130_));
 sky130_fd_sc_hd__clkbuf_1 _341_ (.A(_130_),
    .X(_019_));
 sky130_fd_sc_hd__a22o_1 _342_ (.A1(net22),
    .A2(_115_),
    .B1(_116_),
    .B2(net13),
    .X(_131_));
 sky130_fd_sc_hd__and2_1 _343_ (.A(_085_),
    .B(_131_),
    .X(_132_));
 sky130_fd_sc_hd__clkbuf_1 _344_ (.A(_132_),
    .X(_020_));
 sky130_fd_sc_hd__or3b_1 _345_ (.A(_156_),
    .B(_113_),
    .C_N(\adc.state[1] ),
    .X(_133_));
 sky130_fd_sc_hd__nor2_1 _346_ (.A(net4),
    .B(_184_),
    .Y(_134_));
 sky130_fd_sc_hd__nor2_1 _347_ (.A(_097_),
    .B(_134_),
    .Y(_135_));
 sky130_fd_sc_hd__o21a_1 _348_ (.A1(\adc.syncroCount[1] ),
    .A2(_133_),
    .B1(_135_),
    .X(_136_));
 sky130_fd_sc_hd__o21ai_1 _349_ (.A1(_167_),
    .A2(_181_),
    .B1(_031_),
    .Y(_137_));
 sky130_fd_sc_hd__o221a_1 _350_ (.A1(\adc.state[3] ),
    .A2(_156_),
    .B1(_114_),
    .B2(\adc.state[2] ),
    .C1(_137_),
    .X(_138_));
 sky130_fd_sc_hd__o21ai_1 _351_ (.A1(_136_),
    .A2(_138_),
    .B1(_086_),
    .Y(_139_));
 sky130_fd_sc_hd__a21oi_1 _352_ (.A1(_136_),
    .A2(_138_),
    .B1(_139_),
    .Y(_021_));
 sky130_fd_sc_hd__nor2_1 _353_ (.A(\adc.state[1] ),
    .B(_156_),
    .Y(_140_));
 sky130_fd_sc_hd__or3_1 _354_ (.A(\adc.state[3] ),
    .B(_033_),
    .C(_140_),
    .X(_141_));
 sky130_fd_sc_hd__a211oi_1 _355_ (.A1(_137_),
    .A2(_141_),
    .B1(_049_),
    .C1(_134_),
    .Y(_022_));
 sky130_fd_sc_hd__or2_1 _356_ (.A(_033_),
    .B(_113_),
    .X(_142_));
 sky130_fd_sc_hd__a21oi_1 _357_ (.A1(_158_),
    .A2(_142_),
    .B1(_049_),
    .Y(_023_));
 sky130_fd_sc_hd__nor2_1 _358_ (.A(net3),
    .B(_058_),
    .Y(_024_));
 sky130_fd_sc_hd__and2b_1 _359_ (.A_N(\adc.state[1] ),
    .B(_034_),
    .X(_143_));
 sky130_fd_sc_hd__o221a_1 _360_ (.A1(net5),
    .A2(_143_),
    .B1(_184_),
    .B2(_183_),
    .C1(_086_),
    .X(_025_));
 sky130_fd_sc_hd__a21o_1 _361_ (.A1(net2),
    .A2(_185_),
    .B1(net14),
    .X(_144_));
 sky130_fd_sc_hd__or3b_1 _362_ (.A(_156_),
    .B(_097_),
    .C_N(_034_),
    .X(_145_));
 sky130_fd_sc_hd__and3_1 _363_ (.A(_085_),
    .B(_144_),
    .C(_145_),
    .X(_146_));
 sky130_fd_sc_hd__clkbuf_1 _364_ (.A(_146_),
    .X(_026_));
 sky130_fd_sc_hd__inv_2 _365_ (.A(\adc.syncroCount[0] ),
    .Y(_147_));
 sky130_fd_sc_hd__nor3_1 _366_ (.A(_147_),
    .B(_140_),
    .C(_142_),
    .Y(_148_));
 sky130_fd_sc_hd__a211oi_1 _367_ (.A1(_147_),
    .A2(_133_),
    .B1(_148_),
    .C1(_049_),
    .Y(_027_));
 sky130_fd_sc_hd__a21oi_1 _368_ (.A1(\adc.syncroCount[1] ),
    .A2(\adc.syncroCount[0] ),
    .B1(_133_),
    .Y(_149_));
 sky130_fd_sc_hd__or2_1 _369_ (.A(\adc.syncroCount[1] ),
    .B(_148_),
    .X(_150_));
 sky130_fd_sc_hd__o311a_1 _370_ (.A1(_140_),
    .A2(_142_),
    .A3(_149_),
    .B1(_150_),
    .C1(_086_),
    .X(_028_));
 sky130_fd_sc_hd__a31o_1 _371_ (.A1(net23),
    .A2(_086_),
    .A3(_056_),
    .B1(_024_),
    .X(_029_));
 sky130_fd_sc_hd__o211a_1 _372_ (.A1(_074_),
    .A2(_164_),
    .B1(_053_),
    .C1(_174_),
    .X(_151_));
 sky130_fd_sc_hd__o2111a_1 _373_ (.A1(_159_),
    .A2(_164_),
    .B1(_151_),
    .C1(_173_),
    .D1(_170_),
    .X(_152_));
 sky130_fd_sc_hd__a41o_1 _374_ (.A1(_158_),
    .A2(_037_),
    .A3(_062_),
    .A4(_152_),
    .B1(net3),
    .X(_153_));
 sky130_fd_sc_hd__a31o_1 _375_ (.A1(_037_),
    .A2(_062_),
    .A3(_152_),
    .B1(net22),
    .X(_154_));
 sky130_fd_sc_hd__and2b_1 _376_ (.A_N(_153_),
    .B(_154_),
    .X(_155_));
 sky130_fd_sc_hd__clkbuf_1 _377_ (.A(_155_),
    .X(_030_));
 sky130_fd_sc_hd__dfxtp_1 _378_ (.CLK(clknet_2_1__leaf_clk),
    .D(_000_),
    .Q(net20));
 sky130_fd_sc_hd__dfxtp_1 _379_ (.CLK(clknet_2_1__leaf_clk),
    .D(_001_),
    .Q(net21));
 sky130_fd_sc_hd__dfxtp_1 _380_ (.CLK(clknet_2_1__leaf_clk),
    .D(_002_),
    .Q(net15));
 sky130_fd_sc_hd__dfxtp_1 _381_ (.CLK(clknet_2_1__leaf_clk),
    .D(_003_),
    .Q(net16));
 sky130_fd_sc_hd__dfxtp_1 _382_ (.CLK(clknet_2_1__leaf_clk),
    .D(_004_),
    .Q(net17));
 sky130_fd_sc_hd__dfxtp_1 _383_ (.CLK(clknet_2_2__leaf_clk),
    .D(\adc.comparator.compres.ffsync.stage0 ),
    .Q(\adc.comparator.compres.ffsync.stage1 ));
 sky130_fd_sc_hd__dfxtp_1 _384_ (.CLK(clknet_2_1__leaf_clk),
    .D(_005_),
    .Q(net18));
 sky130_fd_sc_hd__dfxtp_1 _385_ (.CLK(clknet_2_1__leaf_clk),
    .D(_006_),
    .Q(net19));
 sky130_fd_sc_hd__dfxtp_1 _386_ (.CLK(clknet_2_2__leaf_clk),
    .D(net1),
    .Q(\adc.comparator.compres.ffsync.stage0 ));
 sky130_fd_sc_hd__dfxtp_1 _387_ (.CLK(clknet_2_3__leaf_clk),
    .D(_007_),
    .Q(\adc.internalCounter[0] ));
 sky130_fd_sc_hd__dfxtp_1 _388_ (.CLK(clknet_2_3__leaf_clk),
    .D(_008_),
    .Q(\adc.internalCounter[1] ));
 sky130_fd_sc_hd__dfxtp_1 _389_ (.CLK(clknet_2_3__leaf_clk),
    .D(_009_),
    .Q(\adc.internalCounter[2] ));
 sky130_fd_sc_hd__dfxtp_1 _390_ (.CLK(clknet_2_3__leaf_clk),
    .D(_010_),
    .Q(\adc.internalCounter[3] ));
 sky130_fd_sc_hd__dfxtp_2 _391_ (.CLK(clknet_2_3__leaf_clk),
    .D(_011_),
    .Q(\adc.internalCounter[4] ));
 sky130_fd_sc_hd__dfxtp_1 _392_ (.CLK(clknet_2_3__leaf_clk),
    .D(_012_),
    .Q(\adc.internalCounter[5] ));
 sky130_fd_sc_hd__dfxtp_1 _393_ (.CLK(clknet_2_0__leaf_clk),
    .D(_013_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _394_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .Q(net7));
 sky130_fd_sc_hd__dfxtp_1 _395_ (.CLK(clknet_2_0__leaf_clk),
    .D(_015_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_1 _396_ (.CLK(clknet_2_0__leaf_clk),
    .D(_016_),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_1 _397_ (.CLK(clknet_2_0__leaf_clk),
    .D(_017_),
    .Q(net10));
 sky130_fd_sc_hd__dfxtp_1 _398_ (.CLK(clknet_2_0__leaf_clk),
    .D(_018_),
    .Q(net11));
 sky130_fd_sc_hd__dfxtp_1 _399_ (.CLK(clknet_2_0__leaf_clk),
    .D(_019_),
    .Q(net12));
 sky130_fd_sc_hd__dfxtp_1 _400_ (.CLK(clknet_2_0__leaf_clk),
    .D(_020_),
    .Q(net13));
 sky130_fd_sc_hd__dfxtp_1 _401_ (.CLK(clknet_2_2__leaf_clk),
    .D(_021_),
    .Q(\adc.state[0] ));
 sky130_fd_sc_hd__dfxtp_2 _402_ (.CLK(clknet_2_2__leaf_clk),
    .D(_022_),
    .Q(\adc.state[1] ));
 sky130_fd_sc_hd__dfxtp_2 _403_ (.CLK(clknet_2_0__leaf_clk),
    .D(_023_),
    .Q(\adc.state[2] ));
 sky130_fd_sc_hd__dfxtp_2 _404_ (.CLK(clknet_2_3__leaf_clk),
    .D(_024_),
    .Q(\adc.state[3] ));
 sky130_fd_sc_hd__dfxtp_1 _405_ (.CLK(clknet_2_2__leaf_clk),
    .D(_025_),
    .Q(net5));
 sky130_fd_sc_hd__dfxtp_1 _406_ (.CLK(clknet_2_2__leaf_clk),
    .D(_026_),
    .Q(net14));
 sky130_fd_sc_hd__dfxtp_1 _407_ (.CLK(clknet_2_0__leaf_clk),
    .D(_027_),
    .Q(\adc.syncroCount[0] ));
 sky130_fd_sc_hd__dfxtp_1 _408_ (.CLK(clknet_2_2__leaf_clk),
    .D(_028_),
    .Q(\adc.syncroCount[1] ));
 sky130_fd_sc_hd__dfxtp_1 _409_ (.CLK(clknet_2_3__leaf_clk),
    .D(_029_),
    .Q(net23));
 sky130_fd_sc_hd__dfxtp_1 _410_ (.CLK(clknet_2_1__leaf_clk),
    .D(_030_),
    .Q(net22));
 sky130_fd_sc_hd__clkbuf_1 _411_ (.A(use_ext_thresh),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(analog_comparator_out),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(calib_enable),
    .X(net2));
 sky130_fd_sc_hd__buf_2 input3 (.A(rst),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(user_enable),
    .X(net4));
 sky130_fd_sc_hd__buf_1 output10 (.A(net10),
    .X(dac_set[4]));
 sky130_fd_sc_hd__clkbuf_1 output11 (.A(net11),
    .X(dac_set[5]));
 sky130_fd_sc_hd__buf_1 output12 (.A(net12),
    .X(dac_set[6]));
 sky130_fd_sc_hd__clkbuf_1 output13 (.A(net13),
    .X(dac_set[7]));
 sky130_fd_sc_hd__clkbuf_1 output14 (.A(net14),
    .X(do_calibrate));
 sky130_fd_sc_hd__clkbuf_1 output15 (.A(net15),
    .X(result[0]));
 sky130_fd_sc_hd__clkbuf_1 output16 (.A(net16),
    .X(result[1]));
 sky130_fd_sc_hd__clkbuf_1 output17 (.A(net17),
    .X(result[2]));
 sky130_fd_sc_hd__clkbuf_1 output18 (.A(net18),
    .X(result[3]));
 sky130_fd_sc_hd__clkbuf_1 output19 (.A(net19),
    .X(result[4]));
 sky130_fd_sc_hd__clkbuf_1 output20 (.A(net20),
    .X(result[5]));
 sky130_fd_sc_hd__clkbuf_1 output21 (.A(net21),
    .X(result[6]));
 sky130_fd_sc_hd__clkbuf_1 output22 (.A(net22),
    .X(result[7]));
 sky130_fd_sc_hd__clkbuf_1 output23 (.A(net23),
    .X(result_ready));
 sky130_fd_sc_hd__clkbuf_1 output24 (.A(net24),
    .X(thresh_sel));
 sky130_fd_sc_hd__clkbuf_1 output5 (.A(net5),
    .X(comparator_nen));
 sky130_fd_sc_hd__clkbuf_1 output6 (.A(net6),
    .X(dac_set[0]));
 sky130_fd_sc_hd__buf_1 output7 (.A(net7),
    .X(dac_set[1]));
 sky130_fd_sc_hd__clkbuf_1 output8 (.A(net8),
    .X(dac_set[2]));
 sky130_fd_sc_hd__buf_1 output9 (.A(net9),
    .X(dac_set[3]));
endmodule

