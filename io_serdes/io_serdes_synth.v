/* Generated by Yosys 0.33+34 (git sha1 54be4aca9, gcc 9.4.0-1ubuntu1~20.04.2 -fPIC -Os) */

(* dynports =  1  *)
(* hdlname = "\\fsic_io_serdes_rx" *)
(* src = "fsic_io_serdes_rx.v:24.1-213.10" *)
module \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx (axis_rst_n, rxclk, rxen, ioclk, coreclk, Serial_Data_in, rxdata_out, rxdata_out_valid);
  (* src = "fsic_io_serdes_rx.v:67.2-77.5" *)
  wire [4:0] _00_;
  (* src = "fsic_io_serdes_rx.v:48.2-61.5" *)
  wire [2:0] _01_;
  (* src = "fsic_io_serdes_rx.v:117.15-117.24" *)
  (* unused_bits = "3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _02_;
  (* src = "fsic_io_serdes_rx.v:146.27-146.47" *)
  (* unused_bits = "2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _03_;
  (* src = "fsic_io_serdes_rx.v:59.14-59.21" *)
  (* unused_bits = "3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _04_;
  (* src = "fsic_io_serdes_rx.v:0.0-0.0" *)
  wire [4:0] _05_;
  (* src = "fsic_io_serdes_rx.v:114.10-114.20" *)
  wire _06_;
  (* src = "fsic_io_serdes_rx.v:164.31-164.65" *)
  wire _07_;
  (* src = "fsic_io_serdes_rx.v:56.8-56.18" *)
  wire _08_;
  (* src = "fsic_io_serdes_rx.v:179.8-179.38" *)
  wire _09_;
  (* src = "fsic_io_serdes_rx.v:0.0-0.0" *)
  wire [31:0] _10_;
  (* src = "fsic_io_serdes_rx.v:0.0-0.0" *)
  wire [4:0] _11_;
  (* src = "fsic_io_serdes_rx.v:0.0-0.0" *)
  wire [4:0] _12_;
  wire [2:0] _13_;
  wire [2:0] _14_;
  (* src = "fsic_io_serdes_rx.v:0.0-0.0" *)
  wire [4:0] _15_;
  (* src = "fsic_io_serdes_rx.v:0.0-0.0" *)
  wire [4:0] _16_;
  (* src = "fsic_io_serdes_rx.v:0.0-0.0" *)
  wire _17_;
  (* src = "fsic_io_serdes_rx.v:64.26-64.32" *)
  reg [4:0] RxFifo;
  (* src = "fsic_io_serdes_rx.v:33.15-33.29" *)
  input Serial_Data_in;
  wire Serial_Data_in;
  (* src = "fsic_io_serdes_rx.v:28.15-28.25" *)
  input axis_rst_n;
  wire axis_rst_n;
  (* src = "fsic_io_serdes_rx.v:32.15-32.22" *)
  input coreclk;
  wire coreclk;
  (* src = "fsic_io_serdes_rx.v:31.15-31.20" *)
  input ioclk;
  wire ioclk;
  (* src = "fsic_io_serdes_rx.v:106.34-106.39" *)
  reg [2:0] r_ptr;
  (* src = "fsic_io_serdes_rx.v:138.31-138.49" *)
  reg [1:0] rx_shift_phase_cnt;
  (* src = "fsic_io_serdes_rx.v:124.23-124.35" *)
  reg [3:0] rx_shift_reg;
  (* src = "fsic_io_serdes_rx.v:42.7-42.25" *)
  wire rx_shift_reg_valid;
  (* src = "fsic_io_serdes_rx.v:92.6-92.14" *)
  reg rx_start;
  (* src = "fsic_io_serdes_rx.v:152.12-152.26" *)
  reg [2:0] rx_start_delay;
  (* src = "fsic_io_serdes_rx.v:168.23-168.35" *)
  reg [3:0] rx_sync_fifo;
  (* src = "fsic_io_serdes_rx.v:169.6-169.24" *)
  reg rx_sync_fifo_valid;
  (* src = "fsic_io_serdes_rx.v:29.15-29.20" *)
  input rxclk;
  wire rxclk;
  (* src = "fsic_io_serdes_rx.v:34.33-34.43" *)
  output [3:0] rxdata_out;
  wire [3:0] rxdata_out;
  (* src = "fsic_io_serdes_rx.v:35.16-35.32" *)
  output rxdata_out_valid;
  wire rxdata_out_valid;
  (* src = "fsic_io_serdes_rx.v:30.16-30.20" *)
  input rxen;
  wire rxen;
  (* src = "fsic_io_serdes_rx.v:39.34-39.39" *)
  reg [2:0] w_ptr;
  (* src = "fsic_io_serdes_rx.v:44.7-44.26" *)
  wire w_ptr_graycode_bit0;
  (* src = "fsic_io_serdes_rx.v:40.6-40.15" *)
  reg w_ptr_pre;
  (* src = "fsic_io_serdes_rx.v:41.6-41.16" *)
  reg w_ptr_sync;
  assign _02_ = r_ptr + (* src = "fsic_io_serdes_rx.v:117.15-117.24" *) 32'd1;
  assign _03_ = rx_shift_phase_cnt + (* src = "fsic_io_serdes_rx.v:146.27-146.47" *) 32'd1;
  assign _04_ = w_ptr + (* src = "fsic_io_serdes_rx.v:59.14-59.21" *) 32'd1;
  assign _05_ = RxFifo & (* src = "fsic_io_serdes_rx.v:0.0-0.0" *) _11_;
  (* src = "fsic_io_serdes_rx.v:171.2-188.5" *)
  always @(negedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rx_sync_fifo_valid <= 1'h0;
    else if (_09_) rx_sync_fifo_valid <= 1'h1;
  (* src = "fsic_io_serdes_rx.v:140.2-150.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rx_shift_phase_cnt <= 2'h3;
    else if (rx_start) rx_shift_phase_cnt <= _03_[1:0];
  (* src = "fsic_io_serdes_rx.v:126.2-136.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rx_shift_reg[2:0] <= 3'h0;
    else if (rx_start) rx_shift_reg[2:0] <= rx_shift_reg[3:1];
  (* src = "fsic_io_serdes_rx.v:126.2-136.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rx_shift_reg[3] <= 1'h0;
    else if (rx_start) rx_shift_reg[3] <= _17_;
  (* src = "fsic_io_serdes_rx.v:171.2-188.5" *)
  always @(negedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rx_sync_fifo <= 4'h0;
    else if (_09_) rx_sync_fifo <= rx_shift_reg;
  (* src = "fsic_io_serdes_rx.v:108.2-122.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) r_ptr <= 3'h0;
    else if (rx_start) r_ptr <= _13_;
  (* src = "fsic_io_serdes_rx.v:93.2-103.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rx_start <= 1'h0;
    else if (w_ptr_sync) rx_start <= 1'h1;
  assign _06_ = r_ptr == (* src = "fsic_io_serdes_rx.v:114.10-114.20" *) 3'h4;
  assign _07_ = rx_shift_phase_cnt == (* src = "fsic_io_serdes_rx.v:164.31-164.65" *) 2'h3;
  assign _08_ = w_ptr == (* src = "fsic_io_serdes_rx.v:56.8-56.18" *) 3'h4;
  assign rx_shift_reg_valid = _07_ && (* src = "fsic_io_serdes_rx.v:164.30-164.87" *) rx_start_delay[2];
  assign _09_ = rx_start && (* src = "fsic_io_serdes_rx.v:179.8-179.38" *) rx_shift_reg_valid;
  assign _10_ = - (* src = "fsic_io_serdes_rx.v:0.0-0.0" *) $signed({ 29'h00000000, w_ptr });
  assign _11_ = ~ (* src = "fsic_io_serdes_rx.v:0.0-0.0" *) _15_;
  assign _12_ = _05_ | (* src = "fsic_io_serdes_rx.v:0.0-0.0" *) _16_;
  (* src = "fsic_io_serdes_rx.v:154.2-162.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rx_start_delay <= 3'h0;
    else rx_start_delay <= { rx_start_delay[1:0], rx_start };
  (* src = "fsic_io_serdes_rx.v:81.2-90.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) w_ptr_pre <= 1'h0;
    else w_ptr_pre <= w_ptr_graycode_bit0;
  (* src = "fsic_io_serdes_rx.v:81.2-90.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) w_ptr_sync <= 1'h0;
    else w_ptr_sync <= w_ptr_pre;
  (* src = "fsic_io_serdes_rx.v:67.2-77.5" *)
  always @(negedge rxclk, negedge axis_rst_n)
    if (!axis_rst_n) RxFifo <= 5'h00;
    else RxFifo <= _00_;
  (* src = "fsic_io_serdes_rx.v:48.2-61.5" *)
  always @(negedge rxclk, negedge axis_rst_n)
    if (!axis_rst_n) w_ptr <= 3'h0;
    else w_ptr <= _01_;
  assign _13_ = _06_ ? (* full_case = 32'd1 *) (* src = "fsic_io_serdes_rx.v:114.10-114.20|fsic_io_serdes_rx.v:114.5-117.25" *) 3'h0 : _02_[2:0];
  assign _00_ = rxen ? (* full_case = 32'd1 *) (* src = "fsic_io_serdes_rx.v:71.13-71.18|fsic_io_serdes_rx.v:71.8-76.6" *) _12_ : 5'h00;
  assign _14_ = _08_ ? (* full_case = 32'd1 *) (* src = "fsic_io_serdes_rx.v:56.8-56.18|fsic_io_serdes_rx.v:56.4-59.22" *) 3'h0 : _04_[2:0];
  assign _01_ = rxen ? (* full_case = 32'd1 *) (* src = "fsic_io_serdes_rx.v:52.13-52.18|fsic_io_serdes_rx.v:52.8-60.6" *) _14_ : 3'h0;
  assign _15_ = $signed(_10_) < 0 ? 1'h1 << - _10_ : 1'h1 >> _10_;
  assign _16_ = $signed(_10_) < 0 ? Serial_Data_in << - _10_ : Serial_Data_in >> _10_;
  wire [4:0] _50_ = RxFifo;
  assign _17_ = _50_[r_ptr +: 1];
  assign w_ptr_graycode_bit0 = w_ptr[1] ^ (* src = "fsic_io_serdes_rx.v:46.31-46.51" *) w_ptr[0];
  assign rxdata_out = rx_sync_fifo;
  assign rxdata_out_valid = rx_sync_fifo_valid;
endmodule

(* dynports =  1  *)
(* hdlname = "\\fsic_coreclk_phase_cnt" *)
(* src = "fsic_coreclk_phase_cnt.v:23.1-84.10" *)
module \$paramod\fsic_coreclk_phase_cnt\pCLK_RATIO=s32'00000000000000000000000000000100 (axis_rst_n, ioclk, coreclk, phase_cnt_out);
  (* src = "fsic_coreclk_phase_cnt.v:37.5-44.8" *)
  wire _00_;
  (* src = "fsic_coreclk_phase_cnt.v:72.5-82.8" *)
  wire [1:0] _01_;
  (* src = "fsic_coreclk_phase_cnt.v:80.30-80.43" *)
  (* unused_bits = "2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _02_;
  (* src = "fsic_coreclk_phase_cnt.v:77.19-77.34" *)
  wire _03_;
  (* src = "fsic_coreclk_phase_cnt.v:77.40-77.55" *)
  wire _04_;
  (* src = "fsic_coreclk_phase_cnt.v:77.18-77.56" *)
  wire _05_;
  (* src = "fsic_coreclk_phase_cnt.v:26.15-26.25" *)
  input axis_rst_n;
  wire axis_rst_n;
  (* src = "fsic_coreclk_phase_cnt.v:32.26-32.33" *)
  reg [3:0] clk_seq;
  (* src = "fsic_coreclk_phase_cnt.v:36.6-36.21" *)
  reg core_clk_toggle;
  (* src = "fsic_coreclk_phase_cnt.v:28.15-28.22" *)
  input coreclk;
  wire coreclk;
  (* src = "fsic_coreclk_phase_cnt.v:27.15-27.20" *)
  input ioclk;
  wire ioclk;
  (* src = "fsic_coreclk_phase_cnt.v:33.34-33.43" *)
  reg [1:0] phase_cnt;
  (* src = "fsic_coreclk_phase_cnt.v:29.40-29.53" *)
  output [1:0] phase_cnt_out;
  wire [1:0] phase_cnt_out;
  (* src = "fsic_coreclk_phase_cnt.v:46.6-46.25" *)
  reg pre_core_clk_toggle;
  (* src = "fsic_coreclk_phase_cnt.v:47.6-47.26" *)
  reg sync_core_clk_toggle;
  assign _02_ = phase_cnt + (* src = "fsic_coreclk_phase_cnt.v:80.30-80.43" *) 32'd1;
  assign _03_ = clk_seq == (* src = "fsic_coreclk_phase_cnt.v:77.19-77.34" *) 4'h3;
  assign _04_ = clk_seq == (* src = "fsic_coreclk_phase_cnt.v:77.40-77.55" *) 4'hc;
  assign _05_ = _03_ || (* src = "fsic_coreclk_phase_cnt.v:77.18-77.56" *) _04_;
  assign _00_ = ~ (* src = "fsic_coreclk_phase_cnt.v:42.32-42.48" *) core_clk_toggle;
  (* src = "fsic_coreclk_phase_cnt.v:72.5-82.8" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) phase_cnt <= 2'h0;
    else phase_cnt <= _01_;
  (* src = "fsic_coreclk_phase_cnt.v:61.5-69.8" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) clk_seq <= 4'h0;
    else clk_seq <= { clk_seq[2:0], sync_core_clk_toggle };
  (* src = "fsic_coreclk_phase_cnt.v:49.5-58.8" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) pre_core_clk_toggle <= 1'h0;
    else pre_core_clk_toggle <= core_clk_toggle;
  (* src = "fsic_coreclk_phase_cnt.v:49.5-58.8" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) sync_core_clk_toggle <= 1'h0;
    else sync_core_clk_toggle <= pre_core_clk_toggle;
  (* src = "fsic_coreclk_phase_cnt.v:37.5-44.8" *)
  always @(posedge coreclk, negedge axis_rst_n)
    if (!axis_rst_n) core_clk_toggle <= 1'h0;
    else core_clk_toggle <= _00_;
  assign _01_ = _05_ ? (* full_case = 32'd1 *) (* src = "fsic_coreclk_phase_cnt.v:77.18-77.56|fsic_coreclk_phase_cnt.v:77.13-80.44" *) 2'h0 : _02_[1:0];
  assign phase_cnt_out = phase_cnt;
endmodule

(* dynports =  1  *)
(* top =  1  *)
(* src = "io_serdes.v:34.1-468.10" *)
module IO_SERDES(ioclk, axi_reset_n, axi_clk, axis_rst_n, axis_clk, axi_awvalid, axi_awaddr, axi_awready, axi_wvalid, axi_wdata, axi_wstrb, axi_wready, axi_arvalid, axi_araddr, axi_arready, axi_rvalid, axi_rdata, axi_rready, cc_is_enable, as_is_tdata, as_is_tstrb
, as_is_tkeep, as_is_tlast, as_is_tid, as_is_tvalid, as_is_tuser, as_is_tready, serial_tclk, serial_txd, serial_rclk, serial_rxd, is_as_tdata, is_as_tstrb, is_as_tkeep, is_as_tlast, is_as_tid, is_as_tvalid, is_as_tuser, is_as_tready);
  (* src = "io_serdes.v:454.2-465.5" *)
  wire _000_;
  (* src = "io_serdes.v:241.2-273.5" *)
  wire [31:0] _001_;
  (* src = "io_serdes.v:241.2-273.5" *)
  wire [3:0] _002_;
  (* src = "io_serdes.v:241.2-273.5" *)
  wire [3:0] _003_;
  (* src = "io_serdes.v:241.2-273.5" *)
  (* unused_bits = "3" *)
  wire [3:0] _004_;
  (* src = "io_serdes.v:241.2-273.5" *)
  wire [3:0] _005_;
  (* src = "io_serdes.v:229.27-229.49" *)
  (* unused_bits = "2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _006_;
  (* src = "io_serdes.v:307.54-307.76" *)
  wire [31:0] _007_;
  (* src = "io_serdes.v:307.54-307.76" *)
  wire [31:0] _008_;
  (* src = "io_serdes.v:307.54-307.76" *)
  wire [31:0] _009_;
  (* src = "io_serdes.v:307.54-307.76" *)
  wire [31:0] _010_;
  (* src = "io_serdes.v:307.54-307.76" *)
  wire [31:0] _011_;
  (* src = "io_serdes.v:307.54-307.76" *)
  wire [31:0] _012_;
  (* src = "io_serdes.v:307.54-307.76" *)
  wire [31:0] _013_;
  wire _014_;
  (* src = "io_serdes.v:163.9-163.36" *)
  wire _015_;
  (* src = "io_serdes.v:210.43-210.57" *)
  wire _016_;
  (* src = "io_serdes.v:151.28-151.59" *)
  wire _017_;
  (* src = "io_serdes.v:163.9-163.59" *)
  wire _018_;
  (* src = "io_serdes.v:210.9-210.57" *)
  wire _019_;
  (* src = "io_serdes.v:266.8-266.36" *)
  wire _020_;
  (* src = "io_serdes.v:210.10-210.38" *)
  wire _021_;
  wire _022_;
  wire _023_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _024_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _025_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _026_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _027_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _028_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _029_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _030_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _031_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _032_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _033_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _034_;
  (* src = "io_serdes.v:0.0-0.0" *)
  wire _035_;
  (* src = "io_serdes.v:151.27-151.68" *)
  (* unused_bits = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _036_;
  (* src = "io_serdes.v:130.35-130.55" *)
  wire [7:0] Serial_Data_In_tdata;
  (* src = "io_serdes.v:127.7-127.31" *)
  wire Serial_Data_In_tid_tuser;
  (* src = "io_serdes.v:128.7-128.27" *)
  wire Serial_Data_In_tkeep;
  (* src = "io_serdes.v:126.7-126.41" *)
  wire Serial_Data_In_tlast_tvalid_tready;
  (* src = "io_serdes.v:129.7-129.27" *)
  wire Serial_Data_In_tstrb;
  (* src = "io_serdes.v:122.35-122.56" *)
  wire [7:0] Serial_Data_Out_tdata;
  (* src = "io_serdes.v:119.7-119.32" *)
  wire Serial_Data_Out_tid_tuser;
  (* src = "io_serdes.v:120.7-120.28" *)
  wire Serial_Data_Out_tkeep;
  (* src = "io_serdes.v:118.7-118.42" *)
  wire Serial_Data_Out_tlast_tvalid_tready;
  (* src = "io_serdes.v:121.7-121.28" *)
  wire Serial_Data_Out_tstrb;
  (* src = "io_serdes.v:77.33-77.44" *)
  input [31:0] as_is_tdata;
  wire [31:0] as_is_tdata;
  (* src = "io_serdes.v:275.24-275.39" *)
  reg [31:0] as_is_tdata_buf;
  (* src = "io_serdes.v:81.21-81.30" *)
  input [1:0] as_is_tid;
  wire [1:0] as_is_tid;
  (* src = "io_serdes.v:278.28-278.47" *)
  reg [3:0] as_is_tid_tuser_buf;
  (* src = "io_serdes.v:79.37-79.48" *)
  input [3:0] as_is_tkeep;
  wire [3:0] as_is_tkeep;
  (* src = "io_serdes.v:277.28-277.43" *)
  reg [3:0] as_is_tkeep_buf;
  (* src = "io_serdes.v:80.15-80.26" *)
  input as_is_tlast;
  wire as_is_tlast;
  (* src = "io_serdes.v:279.28-279.57" *)
  wire [3:0] as_is_tlast_tvalid_tready_buf;
  (* src = "io_serdes.v:84.15-84.27" *)
  input as_is_tready;
  wire as_is_tready;
  (* src = "io_serdes.v:78.37-78.48" *)
  input [3:0] as_is_tstrb;
  wire [3:0] as_is_tstrb;
  (* src = "io_serdes.v:276.28-276.43" *)
  reg [3:0] as_is_tstrb_buf;
  (* src = "io_serdes.v:83.21-83.32" *)
  input [1:0] as_is_tuser;
  wire [1:0] as_is_tuser;
  (* src = "io_serdes.v:82.15-82.27" *)
  input as_is_tvalid;
  wire as_is_tvalid;
  (* src = "io_serdes.v:64.33-64.43" *)
  input [14:0] axi_araddr;
  wire [14:0] axi_araddr;
  (* src = "io_serdes.v:65.16-65.27" *)
  output axi_arready;
  wire axi_arready;
  (* src = "io_serdes.v:63.15-63.26" *)
  input axi_arvalid;
  wire axi_arvalid;
  (* src = "io_serdes.v:53.33-53.43" *)
  input [14:0] axi_awaddr;
  wire [14:0] axi_awaddr;
  (* src = "io_serdes.v:54.15-54.26" *)
  output axi_awready;
  wire axi_awready;
  (* src = "io_serdes.v:142.7-142.22" *)
  wire axi_awready_out;
  (* src = "io_serdes.v:52.15-52.26" *)
  input axi_awvalid;
  wire axi_awvalid;
  (* src = "io_serdes.v:109.7-109.21" *)
  wire axi_awvalid_in;
  (* src = "io_serdes.v:46.15-46.22" *)
  input axi_clk;
  wire axi_clk;
  (* src = "io_serdes.v:69.34-69.43" *)
  output [31:0] axi_rdata;
  wire [31:0] axi_rdata;
  (* src = "io_serdes.v:45.15-45.26" *)
  input axi_reset_n;
  wire axi_reset_n;
  (* src = "io_serdes.v:70.15-70.25" *)
  input axi_rready;
  wire axi_rready;
  (* src = "io_serdes.v:68.16-68.26" *)
  output axi_rvalid;
  wire axi_rvalid;
  (* src = "io_serdes.v:58.33-58.42" *)
  input [31:0] axi_wdata;
  wire [31:0] axi_wdata;
  (* src = "io_serdes.v:60.15-60.25" *)
  output axi_wready;
  wire axi_wready;
  (* src = "io_serdes.v:147.7-147.21" *)
  wire axi_wready_out;
  (* src = "io_serdes.v:59.37-59.46" *)
  input [3:0] axi_wstrb;
  wire [3:0] axi_wstrb;
  (* src = "io_serdes.v:57.15-57.25" *)
  input axi_wvalid;
  wire axi_wvalid;
  (* src = "io_serdes.v:110.7-110.20" *)
  wire axi_wvalid_in;
  (* src = "io_serdes.v:49.15-49.23" *)
  input axis_clk;
  wire axis_clk;
  (* src = "io_serdes.v:48.15-48.25" *)
  input axis_rst_n;
  wire axis_rst_n;
  (* src = "io_serdes.v:72.15-72.27" *)
  input cc_is_enable;
  wire cc_is_enable;
  (* src = "io_serdes.v:106.7-106.14" *)
  wire coreclk;
  (* src = "io_serdes.v:43.15-43.20" *)
  input ioclk;
  wire ioclk;
  (* src = "io_serdes.v:434.10-434.21" *)
  (* unused_bits = "0" *)
  wire is_as_dummy;
  (* src = "io_serdes.v:93.34-93.45" *)
  output [31:0] is_as_tdata;
  wire [31:0] is_as_tdata;
  (* src = "io_serdes.v:97.22-97.31" *)
  output [1:0] is_as_tid;
  wire [1:0] is_as_tid;
  (* src = "io_serdes.v:95.38-95.49" *)
  output [3:0] is_as_tkeep;
  wire [3:0] is_as_tkeep;
  (* src = "io_serdes.v:96.16-96.27" *)
  output is_as_tlast;
  wire is_as_tlast;
  (* src = "io_serdes.v:100.16-100.28" *)
  output is_as_tready;
  wire is_as_tready;
  (* src = "io_serdes.v:451.6-451.22" *)
  reg is_as_tready_out;
  (* src = "io_serdes.v:112.7-112.26" *)
  wire is_as_tready_remote;
  (* src = "io_serdes.v:94.38-94.49" *)
  output [3:0] is_as_tstrb;
  wire [3:0] is_as_tstrb;
  (* src = "io_serdes.v:99.22-99.33" *)
  output [1:0] is_as_tuser;
  wire [1:0] is_as_tuser;
  (* src = "io_serdes.v:98.16-98.28" *)
  output is_as_tvalid;
  wire is_as_tvalid;
  (* src = "io_serdes.v:187.32-187.41" *)
  wire [1:0] phase_cnt;
  (* src = "io_serdes.v:235.24-235.43" *)
  reg [31:0] pre_as_is_tdata_buf;
  (* src = "io_serdes.v:238.28-238.51" *)
  reg [3:0] pre_as_is_tid_tuser_buf;
  (* src = "io_serdes.v:237.28-237.47" *)
  reg [3:0] pre_as_is_tkeep_buf;
  (* src = "io_serdes.v:239.28-239.61" *)
  wire [3:0] pre_as_is_tlast_tvalid_tready_buf;
  (* src = "io_serdes.v:236.28-236.47" *)
  reg [3:0] pre_as_is_tstrb_buf;
  (* src = "io_serdes.v:202.7-202.23" *)
  wire rx_received_data;
  (* src = "io_serdes.v:108.7-108.12" *)
  wire rxclk;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[0] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[10] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[1] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[2] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[3] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[4] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[5] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[6] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[7] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[8] ;
  (* src = "io_serdes.v:348.7-348.23" *)
  (* unused_bits = "0" *)
  wire \rxdata_out_valid[9] ;
  (* src = "io_serdes.v:350.6-350.10" *)
  reg rxen;
  (* src = "io_serdes.v:137.6-137.14" *)
  reg rxen_ctl;
  (* src = "io_serdes.v:90.18-90.29" *)
  input serial_rclk;
  wire serial_rclk;
  (* src = "io_serdes.v:91.39-91.49" *)
  input [11:0] serial_rxd;
  wire [11:0] serial_rxd;
  (* src = "io_serdes.v:86.18-86.29" *)
  output serial_tclk;
  wire serial_tclk;
  (* src = "io_serdes.v:87.39-87.49" *)
  output [11:0] serial_txd;
  wire [11:0] serial_txd;
  (* src = "io_serdes.v:220.31-220.49" *)
  reg [1:0] tx_shift_phase_cnt;
  (* src = "io_serdes.v:107.7-107.12" *)
  wire txclk;
  (* src = "io_serdes.v:134.6-134.10" *)
  reg txen;
  (* src = "io_serdes.v:138.6-138.14" *)
  reg txen_ctl;
  (* src = "io_serdes.v:111.7-111.15" *)
  wire txen_out;
  assign _006_ = tx_shift_phase_cnt + (* src = "io_serdes.v:229.27-229.49" *) 32'd1;
  assign _007_ = 32'd4 + (* src = "io_serdes.v:307.54-307.76" *) tx_shift_phase_cnt;
  assign _008_ = 32'd8 + (* src = "io_serdes.v:307.54-307.76" *) tx_shift_phase_cnt;
  assign _009_ = 32'd12 + (* src = "io_serdes.v:307.54-307.76" *) tx_shift_phase_cnt;
  assign _010_ = 32'd16 + (* src = "io_serdes.v:307.54-307.76" *) tx_shift_phase_cnt;
  assign _011_ = 32'd20 + (* src = "io_serdes.v:307.54-307.76" *) tx_shift_phase_cnt;
  assign _012_ = 32'd24 + (* src = "io_serdes.v:307.54-307.76" *) tx_shift_phase_cnt;
  assign _013_ = 32'd28 + (* src = "io_serdes.v:307.54-307.76" *) tx_shift_phase_cnt;
  assign serial_tclk = ioclk & (* src = "io_serdes.v:300.17-300.27" *) txen;
  assign serial_txd[0] = _028_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign serial_txd[1] = _029_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign serial_txd[2] = _030_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign serial_txd[3] = _031_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign serial_txd[4] = _032_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign serial_txd[5] = _033_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign serial_txd[6] = _034_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign serial_txd[7] = _035_ & (* src = "io_serdes.v:307.38-307.84" *) txen;
  assign Serial_Data_Out_tstrb = _024_ & (* src = "io_serdes.v:340.33-340.75" *) txen;
  assign Serial_Data_Out_tkeep = _025_ & (* src = "io_serdes.v:341.33-341.75" *) txen;
  assign Serial_Data_Out_tid_tuser = _026_ & (* src = "io_serdes.v:342.37-342.83" *) txen;
  assign Serial_Data_Out_tlast_tvalid_tready = _027_ & (* src = "io_serdes.v:343.47-343.103" *) txen;
  (* src = "io_serdes.v:156.2-173.5" *)
  always @(posedge axi_clk, negedge axi_reset_n)
    if (!axi_reset_n) txen_ctl <= 1'h0;
    else if (_014_) txen_ctl <= axi_wdata[1];
  reg [2:0] _059_;
  (* src = "io_serdes.v:241.2-273.5" *)
  always @(negedge axis_clk, negedge axis_rst_n)
    if (!axis_rst_n) _059_ <= 3'h0;
    else _059_ <= _004_[2:0];
  assign pre_as_is_tlast_tvalid_tready_buf[2:0] = _059_;
  (* src = "io_serdes.v:223.2-233.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) tx_shift_phase_cnt <= 2'h3;
    else if (txen) tx_shift_phase_cnt <= _006_[1:0];
  (* src = "io_serdes.v:205.2-218.5" *)
  always @(negedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) txen <= 1'h0;
    else if (_019_) txen <= 1'h1;
  (* src = "io_serdes.v:156.2-173.5" *)
  always @(posedge axi_clk, negedge axi_reset_n)
    if (!axi_reset_n) rxen_ctl <= 1'h0;
    else if (_014_) rxen_ctl <= axi_wdata[0];
  (* src = "io_serdes.v:352.2-362.5" *)
  always @(negedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) rxen <= 1'h0;
    else if (rxen_ctl) rxen <= 1'h1;
  (* src = "io_serdes.v:281.2-298.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) as_is_tdata_buf <= 32'd0;
    else if (_016_) as_is_tdata_buf <= pre_as_is_tdata_buf;
  (* src = "io_serdes.v:281.2-298.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) as_is_tstrb_buf <= 4'h0;
    else if (_016_) as_is_tstrb_buf <= pre_as_is_tstrb_buf;
  (* src = "io_serdes.v:281.2-298.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) as_is_tkeep_buf <= 4'h0;
    else if (_016_) as_is_tkeep_buf <= pre_as_is_tkeep_buf;
  (* src = "io_serdes.v:281.2-298.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) as_is_tid_tuser_buf <= 4'h0;
    else if (_016_) as_is_tid_tuser_buf <= pre_as_is_tid_tuser_buf;
  reg [2:0] _068_;
  (* src = "io_serdes.v:281.2-298.5" *)
  always @(posedge ioclk, negedge axis_rst_n)
    if (!axis_rst_n) _068_ <= 3'h0;
    else if (_016_) _068_ <= pre_as_is_tlast_tvalid_tready_buf[2:0];
  assign as_is_tlast_tvalid_tready_buf[2:0] = _068_;
  assign _014_ = & { _018_, _017_ };
  assign _015_ = ! (* src = "io_serdes.v:163.9-163.36" *) axi_awaddr[11:2];
  assign _016_ = phase_cnt == (* src = "io_serdes.v:290.8-290.22" *) 2'h3;
  assign axi_awvalid_in = axi_awvalid && (* src = "io_serdes.v:141.27-141.54" *) cc_is_enable;
  assign axi_wvalid_in = axi_wvalid && (* src = "io_serdes.v:146.26-146.52" *) cc_is_enable;
  assign _017_ = axi_awvalid_in && (* src = "io_serdes.v:162.9-162.40" *) axi_wvalid_in;
  assign _018_ = _015_ && (* src = "io_serdes.v:163.9-163.59" *) axi_wstrb[0];
  assign _019_ = _021_ && (* src = "io_serdes.v:210.9-210.57" *) _016_;
  assign _020_ = is_as_tready_out && (* src = "io_serdes.v:266.8-266.36" *) as_is_tvalid;
  assign _021_ = txen_ctl || (* src = "io_serdes.v:210.10-210.38" *) rx_received_data;
  (* src = "io_serdes.v:454.2-465.5" *)
  always @(posedge axis_clk, negedge axis_rst_n)
    if (!axis_rst_n) is_as_tready_out <= 1'h0;
    else is_as_tready_out <= _000_;
  (* src = "io_serdes.v:241.2-273.5" *)
  always @(negedge axis_clk, negedge axis_rst_n)
    if (!axis_rst_n) pre_as_is_tdata_buf <= 32'd0;
    else pre_as_is_tdata_buf <= _001_;
  (* src = "io_serdes.v:241.2-273.5" *)
  always @(negedge axis_clk, negedge axis_rst_n)
    if (!axis_rst_n) pre_as_is_tstrb_buf <= 4'h0;
    else pre_as_is_tstrb_buf <= _005_;
  (* src = "io_serdes.v:241.2-273.5" *)
  always @(negedge axis_clk, negedge axis_rst_n)
    if (!axis_rst_n) pre_as_is_tkeep_buf <= 4'h0;
    else pre_as_is_tkeep_buf <= _003_;
  (* src = "io_serdes.v:241.2-273.5" *)
  always @(negedge axis_clk, negedge axis_rst_n)
    if (!axis_rst_n) pre_as_is_tid_tuser_buf <= 4'h0;
    else pre_as_is_tid_tuser_buf <= _002_;
  assign _022_ = rx_received_data ? (* full_case = 32'd1 *) (* src = "io_serdes.v:462.8-462.29|io_serdes.v:462.4-463.49" *) is_as_tready_remote : 1'h1;
  assign _000_ = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:458.13-458.18|io_serdes.v:458.8-464.6" *) _022_ : 1'h0;
  assign _004_[0] = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) as_is_tready : 1'h0;
  assign _023_ = _020_ ? (* full_case = 32'd1 *) (* src = "io_serdes.v:266.8-266.36|io_serdes.v:266.4-271.7" *) as_is_tvalid : 1'h0;
  assign _004_[1] = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) _023_ : 1'h0;
  assign _002_[3:2] = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) as_is_tid : 2'h0;
  assign _002_[1:0] = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) as_is_tuser : 2'h0;
  assign _003_ = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) as_is_tkeep : 4'h0;
  assign _005_ = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) as_is_tstrb : 4'h0;
  assign _001_ = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) as_is_tdata : 32'd0;
  assign _004_[2] = txen ? (* full_case = 32'd1 *) (* src = "io_serdes.v:258.19-258.24|io_serdes.v:258.14-272.6" *) as_is_tlast : 1'h0;
  wire [3:0] _108_ = as_is_tstrb_buf;
  assign _024_ = _108_[tx_shift_phase_cnt +: 1];
  wire [3:0] _109_ = as_is_tkeep_buf;
  assign _025_ = _109_[tx_shift_phase_cnt +: 1];
  wire [3:0] _110_ = as_is_tid_tuser_buf;
  assign _026_ = _110_[tx_shift_phase_cnt +: 1];
  wire [3:0] _111_ = { 1'h0, as_is_tlast_tvalid_tready_buf[2:0] };
  assign _027_ = _111_[tx_shift_phase_cnt +: 1];
  wire [31:0] _112_ = as_is_tdata_buf;
  assign _028_ = _112_[$signed({ 30'h00000000, tx_shift_phase_cnt }) +: 1];
  wire [31:0] _113_ = as_is_tdata_buf;
  assign _029_ = _113_[$signed(_007_) +: 1];
  wire [31:0] _114_ = as_is_tdata_buf;
  assign _030_ = _114_[$signed(_008_) +: 1];
  wire [31:0] _115_ = as_is_tdata_buf;
  assign _031_ = _115_[$signed(_009_) +: 1];
  wire [31:0] _116_ = as_is_tdata_buf;
  assign _032_ = _116_[$signed(_010_) +: 1];
  wire [31:0] _117_ = as_is_tdata_buf;
  assign _033_ = _117_[$signed(_011_) +: 1];
  wire [31:0] _118_ = as_is_tdata_buf;
  assign _034_ = _118_[$signed(_012_) +: 1];
  wire [31:0] _119_ = as_is_tdata_buf;
  assign _035_ = _119_[$signed(_013_) +: 1];
  assign { _036_[31:1], axi_awready } = _017_ ? (* src = "io_serdes.v:152.26-152.67" *) 32'd1 : 32'd0;
  (* src = "io_serdes.v:192.2-197.3" *)
  \$paramod\fsic_coreclk_phase_cnt\pCLK_RATIO=s32'00000000000000000000000000000100  fsic_coreclk_phase_cnt_0 (
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .phase_cnt_out(phase_cnt)
  );
  (* src = "io_serdes.v:440.2-449.3" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  fsic_io_serdes_rx_fc (
    .Serial_Data_in(serial_rxd[11]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out({ is_as_dummy, is_as_tlast, is_as_tvalid, is_as_tready_remote }),
    .rxdata_out_valid(rx_received_data),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:423.2-432.3" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  fsic_io_serdes_rx_tid_tuser (
    .Serial_Data_in(serial_rxd[10]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out({ is_as_tid, is_as_tuser }),
    .rxdata_out_valid(\rxdata_out_valid[10] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:408.2-417.3" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  fsic_io_serdes_rx_tkeep (
    .Serial_Data_in(serial_rxd[9]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tkeep),
    .rxdata_out_valid(\rxdata_out_valid[9] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:392.2-401.3" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  fsic_io_serdes_rx_tstrb (
    .Serial_Data_in(serial_rxd[8]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tstrb),
    .rxdata_out_valid(\rxdata_out_valid[8] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[0].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[0]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[3:0]),
    .rxdata_out_valid(\rxdata_out_valid[0] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[1].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[1]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[7:4]),
    .rxdata_out_valid(\rxdata_out_valid[1] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[2].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[2]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[11:8]),
    .rxdata_out_valid(\rxdata_out_valid[2] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[3].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[3]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[15:12]),
    .rxdata_out_valid(\rxdata_out_valid[3] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[4].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[4]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[19:16]),
    .rxdata_out_valid(\rxdata_out_valid[4] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[5].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[5]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[23:20]),
    .rxdata_out_valid(\rxdata_out_valid[5] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[6].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[6]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[27:24]),
    .rxdata_out_valid(\rxdata_out_valid[6] ),
    .rxen(rxen)
  );
  (* src = "io_serdes.v:373.4-382.5" *)
  \$paramod$52780d1f35a7342343249aaad3393e391f82e1d4\fsic_io_serdes_rx  \genblk2[7].fsic_io_serdes_rx_tdata  (
    .Serial_Data_in(serial_rxd[7]),
    .axis_rst_n(axis_rst_n),
    .coreclk(axis_clk),
    .ioclk(ioclk),
    .rxclk(serial_rclk),
    .rxdata_out(is_as_tdata[31:28]),
    .rxdata_out_valid(\rxdata_out_valid[7] ),
    .rxen(rxen)
  );
  assign _036_[0] = axi_awready;
  assign Serial_Data_In_tdata = serial_rxd[7:0];
  assign Serial_Data_In_tid_tuser = serial_rxd[10];
  assign Serial_Data_In_tkeep = serial_rxd[9];
  assign Serial_Data_In_tlast_tvalid_tready = serial_rxd[11];
  assign Serial_Data_In_tstrb = serial_rxd[8];
  assign Serial_Data_Out_tdata = serial_txd[7:0];
  assign as_is_tlast_tvalid_tready_buf[3] = 1'h0;
  assign axi_arready = 1'h1;
  assign axi_awready_out = axi_awready;
  assign axi_rdata = { 30'h00000000, txen_ctl, rxen_ctl };
  assign axi_rvalid = 1'h1;
  assign axi_wready = axi_awready;
  assign axi_wready_out = axi_awready;
  assign coreclk = axis_clk;
  assign is_as_tready = is_as_tready_out;
  assign pre_as_is_tlast_tvalid_tready_buf[3] = 1'h0;
  assign rxclk = serial_rclk;
  assign serial_txd[11:8] = { Serial_Data_Out_tlast_tvalid_tready, Serial_Data_Out_tid_tuser, Serial_Data_Out_tkeep, Serial_Data_Out_tstrb };
  assign txclk = serial_tclk;
  assign txen_out = txen;
endmodule
