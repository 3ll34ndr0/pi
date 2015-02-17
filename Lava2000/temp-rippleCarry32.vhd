library ieee;

use ieee.std_logic_1164.all;

entity
  rippleCarry32
is
port
  ( 
 
    
    cin : in std_logic
  ; a[0] : in std_logic
  ; a[1] : in std_logic
  ; a[2] : in std_logic
  ; a[3] : in std_logic
  ; a[4] : in std_logic
  ; a[5] : in std_logic
  ; a[6] : in std_logic
  ; a[7] : in std_logic
  ; a[8] : in std_logic
  ; a[9] : in std_logic
  ; a[10] : in std_logic
  ; a[11] : in std_logic
  ; a[12] : in std_logic
  ; a[13] : in std_logic
  ; a[14] : in std_logic
  ; a[15] : in std_logic
  ; a[16] : in std_logic
  ; a[17] : in std_logic
  ; a[18] : in std_logic
  ; a[19] : in std_logic
  ; a[20] : in std_logic
  ; a[21] : in std_logic
  ; a[22] : in std_logic
  ; a[23] : in std_logic
  ; a[24] : in std_logic
  ; a[25] : in std_logic
  ; a[26] : in std_logic
  ; a[27] : in std_logic
  ; a[28] : in std_logic
  ; a[29] : in std_logic
  ; a[30] : in std_logic
  ; a[31] : in std_logic
  ; b[0] : in std_logic
  ; b[1] : in std_logic
  ; b[2] : in std_logic
  ; b[3] : in std_logic
  ; b[4] : in std_logic
  ; b[5] : in std_logic
  ; b[6] : in std_logic
  ; b[7] : in std_logic
  ; b[8] : in std_logic
  ; b[9] : in std_logic
  ; b[10] : in std_logic
  ; b[11] : in std_logic
  ; b[12] : in std_logic
  ; b[13] : in std_logic
  ; b[14] : in std_logic
  ; b[15] : in std_logic
  ; b[16] : in std_logic
  ; b[17] : in std_logic
  ; b[18] : in std_logic
  ; b[19] : in std_logic
  ; b[20] : in std_logic
  ; b[21] : in std_logic
  ; b[22] : in std_logic
  ; b[23] : in std_logic
  ; b[24] : in std_logic
  ; b[25] : in std_logic
  ; b[26] : in std_logic
  ; b[27] : in std_logic
  ; b[28] : in std_logic
  ; b[29] : in std_logic
  ; b[30] : in std_logic
  ; b[31] : in std_logic

  
  ; sum[0] : out std_logic
  ; sum[1] : out std_logic
  ; sum[2] : out std_logic
  ; sum[3] : out std_logic
  ; sum[4] : out std_logic
  ; sum[5] : out std_logic
  ; sum[6] : out std_logic
  ; sum[7] : out std_logic
  ; sum[8] : out std_logic
  ; sum[9] : out std_logic
  ; sum[10] : out std_logic
  ; sum[11] : out std_logic
  ; sum[12] : out std_logic
  ; sum[13] : out std_logic
  ; sum[14] : out std_logic
  ; sum[15] : out std_logic
  ; sum[16] : out std_logic
  ; sum[17] : out std_logic
  ; sum[18] : out std_logic
  ; sum[19] : out std_logic
  ; sum[20] : out std_logic
  ; sum[21] : out std_logic
  ; sum[22] : out std_logic
  ; sum[23] : out std_logic
  ; sum[24] : out std_logic
  ; sum[25] : out std_logic
  ; sum[26] : out std_logic
  ; sum[27] : out std_logic
  ; sum[28] : out std_logic
  ; sum[29] : out std_logic
  ; sum[30] : out std_logic
  ; sum[31] : out std_logic
  ; cout : out std_logic
  );
end rippleCarry32;

architecture
  structural
of
  rippleCarry32
is
 --agregado para que Electric encuentre las celdas estandards
component and2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component or2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component xor2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component id
port( A : in std_logic;  Y : out std_logic);
 end component;
--
  signal w1 : std_logic;
  signal w2 : std_logic;
  signal w3 : std_logic;
  signal w4 : std_logic;
  signal w5 : std_logic;
  signal w6 : std_logic;
  signal w7 : std_logic;
  signal w8 : std_logic;
  signal w9 : std_logic;
  signal w10 : std_logic;
  signal w11 : std_logic;
  signal w12 : std_logic;
  signal w13 : std_logic;
  signal w14 : std_logic;
  signal w15 : std_logic;
  signal w16 : std_logic;
  signal w17 : std_logic;
  signal w18 : std_logic;
  signal w19 : std_logic;
  signal w20 : std_logic;
  signal w21 : std_logic;
  signal w22 : std_logic;
  signal w23 : std_logic;
  signal w24 : std_logic;
  signal w25 : std_logic;
  signal w26 : std_logic;
  signal w27 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal w30 : std_logic;
  signal w31 : std_logic;
  signal w32 : std_logic;
  signal w33 : std_logic;
  signal w34 : std_logic;
  signal w35 : std_logic;
  signal w36 : std_logic;
  signal w37 : std_logic;
  signal w38 : std_logic;
  signal w39 : std_logic;
  signal w40 : std_logic;
  signal w41 : std_logic;
  signal w42 : std_logic;
  signal w43 : std_logic;
  signal w44 : std_logic;
  signal w45 : std_logic;
  signal w46 : std_logic;
  signal w47 : std_logic;
  signal w48 : std_logic;
  signal w49 : std_logic;
  signal w50 : std_logic;
  signal w51 : std_logic;
  signal w52 : std_logic;
  signal w53 : std_logic;
  signal w54 : std_logic;
  signal w55 : std_logic;
  signal w56 : std_logic;
  signal w57 : std_logic;
  signal w58 : std_logic;
  signal w59 : std_logic;
  signal w60 : std_logic;
  signal w61 : std_logic;
  signal w62 : std_logic;
  signal w63 : std_logic;
  signal w64 : std_logic;
  signal w65 : std_logic;
  signal w66 : std_logic;
  signal w67 : std_logic;
  signal w68 : std_logic;
  signal w69 : std_logic;
  signal w70 : std_logic;
  signal w71 : std_logic;
  signal w72 : std_logic;
  signal w73 : std_logic;
  signal w74 : std_logic;
  signal w75 : std_logic;
  signal w76 : std_logic;
  signal w77 : std_logic;
  signal w78 : std_logic;
  signal w79 : std_logic;
  signal w80 : std_logic;
  signal w81 : std_logic;
  signal w82 : std_logic;
  signal w83 : std_logic;
  signal w84 : std_logic;
  signal w85 : std_logic;
  signal w86 : std_logic;
  signal w87 : std_logic;
  signal w88 : std_logic;
  signal w89 : std_logic;
  signal w90 : std_logic;
  signal w91 : std_logic;
  signal w92 : std_logic;
  signal w93 : std_logic;
  signal w94 : std_logic;
  signal w95 : std_logic;
  signal w96 : std_logic;
  signal w97 : std_logic;
  signal w98 : std_logic;
  signal w99 : std_logic;
  signal w100 : std_logic;
  signal w101 : std_logic;
  signal w102 : std_logic;
  signal w103 : std_logic;
  signal w104 : std_logic;
  signal w105 : std_logic;
  signal w106 : std_logic;
  signal w107 : std_logic;
  signal w108 : std_logic;
  signal w109 : std_logic;
  signal w110 : std_logic;
  signal w111 : std_logic;
  signal w112 : std_logic;
  signal w113 : std_logic;
  signal w114 : std_logic;
  signal w115 : std_logic;
  signal w116 : std_logic;
  signal w117 : std_logic;
  signal w118 : std_logic;
  signal w119 : std_logic;
  signal w120 : std_logic;
  signal w121 : std_logic;
  signal w122 : std_logic;
  signal w123 : std_logic;
  signal w124 : std_logic;
  signal w125 : std_logic;
  signal w126 : std_logic;
  signal w127 : std_logic;
  signal w128 : std_logic;
  signal w129 : std_logic;
  signal w130 : std_logic;
  signal w131 : std_logic;
  signal w132 : std_logic;
  signal w133 : std_logic;
  signal w134 : std_logic;
  signal w135 : std_logic;
  signal w136 : std_logic;
  signal w137 : std_logic;
  signal w138 : std_logic;
  signal w139 : std_logic;
  signal w140 : std_logic;
  signal w141 : std_logic;
  signal w142 : std_logic;
  signal w143 : std_logic;
  signal w144 : std_logic;
  signal w145 : std_logic;
  signal w146 : std_logic;
  signal w147 : std_logic;
  signal w148 : std_logic;
  signal w149 : std_logic;
  signal w150 : std_logic;
  signal w151 : std_logic;
  signal w152 : std_logic;
  signal w153 : std_logic;
  signal w154 : std_logic;
  signal w155 : std_logic;
  signal w156 : std_logic;
  signal w157 : std_logic;
  signal w158 : std_logic;
  signal w159 : std_logic;
  signal w160 : std_logic;
  signal w161 : std_logic;
  signal w162 : std_logic;
  signal w163 : std_logic;
  signal w164 : std_logic;
  signal w165 : std_logic;
  signal w166 : std_logic;
  signal w167 : std_logic;
  signal w168 : std_logic;
  signal w169 : std_logic;
  signal w170 : std_logic;
  signal w171 : std_logic;
  signal w172 : std_logic;
  signal w173 : std_logic;
  signal w174 : std_logic;
  signal w175 : std_logic;
  signal w176 : std_logic;
  signal w177 : std_logic;
  signal w178 : std_logic;
  signal w179 : std_logic;
  signal w180 : std_logic;
  signal w181 : std_logic;
  signal w182 : std_logic;
  signal w183 : std_logic;
  signal w184 : std_logic;
  signal w185 : std_logic;
  signal w186 : std_logic;
  signal w187 : std_logic;
  signal w188 : std_logic;
  signal w189 : std_logic;
  signal w190 : std_logic;
  signal w191 : std_logic;
  signal w192 : std_logic;
  signal w193 : std_logic;
  signal w194 : std_logic;
  signal w195 : std_logic;
  signal w196 : std_logic;
  signal w197 : std_logic;
  signal w198 : std_logic;
  signal w199 : std_logic;
  signal w200 : std_logic;
  signal w201 : std_logic;
  signal w202 : std_logic;
  signal w203 : std_logic;
  signal w204 : std_logic;
  signal w205 : std_logic;
  signal w206 : std_logic;
  signal w207 : std_logic;
  signal w208 : std_logic;
  signal w209 : std_logic;
  signal w210 : std_logic;
  signal w211 : std_logic;
  signal w212 : std_logic;
  signal w213 : std_logic;
  signal w214 : std_logic;
  signal w215 : std_logic;
  signal w216 : std_logic;
  signal w217 : std_logic;
  signal w218 : std_logic;
  signal w219 : std_logic;
  signal w220 : std_logic;
  signal w221 : std_logic;
  signal w222 : std_logic;
  signal w223 : std_logic;
  signal w224 : std_logic;
  signal w225 : std_logic;
begin
-- deleted   c_w2      :  id    port map (cin, cin);
-- deleted   c_w4      :  id    port map (a[0], a);
-- deleted   c_w5      :  id    port map (b[0], b);
  c_w3      :  xor2  port map (a, b, w3);
  c_w1      :  xor2  port map (cin, w3, w1);
  c_w8      :  and2  port map (cin, w3, w8);
  c_w9      :  and2  port map (a, b, w9);
  c_w7      :  or2   port map (w8, w9, w7);
-- deleted   c_w11     :  id    port map (a[1], a);
-- deleted   c_w12     :  id    port map (b[1], b);
  c_w10     :  xor2  port map (a, b, w10);
  c_w6      :  xor2  port map (w7, w10, w6);
  c_w15     :  and2  port map (w7, w10, w15);
  c_w16     :  and2  port map (a, b, w16);
  c_w14     :  or2   port map (w15, w16, w14);
-- deleted   c_w18     :  id    port map (a[2], a);
-- deleted   c_w19     :  id    port map (b[2], b);
  c_w17     :  xor2  port map (a, b, w17);
  c_w13     :  xor2  port map (w14, w17, w13);
  c_w22     :  and2  port map (w14, w17, w22);
  c_w23     :  and2  port map (a, b, w23);
  c_w21     :  or2   port map (w22, w23, w21);
-- deleted   c_w25     :  id    port map (a[3], a);
-- deleted   c_w26     :  id    port map (b[3], b);
  c_w24     :  xor2  port map (a, b, w24);
  c_w20     :  xor2  port map (w21, w24, w20);
  c_w29     :  and2  port map (w21, w24, w29);
  c_w30     :  and2  port map (a, b, w30);
  c_w28     :  or2   port map (w29, w30, w28);
-- deleted   c_w32     :  id    port map (a[4], a);
-- deleted   c_w33     :  id    port map (b[4], b);
  c_w31     :  xor2  port map (a, b, w31);
  c_w27     :  xor2  port map (w28, w31, w27);
  c_w36     :  and2  port map (w28, w31, w36);
  c_w37     :  and2  port map (a, b, w37);
  c_w35     :  or2   port map (w36, w37, w35);
-- deleted   c_w39     :  id    port map (a[5], a);
-- deleted   c_w40     :  id    port map (b[5], b);
  c_w38     :  xor2  port map (a, b, w38);
  c_w34     :  xor2  port map (w35, w38, w34);
  c_w43     :  and2  port map (w35, w38, w43);
  c_w44     :  and2  port map (a, b, w44);
  c_w42     :  or2   port map (w43, w44, w42);
-- deleted   c_w46     :  id    port map (a[6], a);
-- deleted   c_w47     :  id    port map (b[6], b);
  c_w45     :  xor2  port map (a, b, w45);
  c_w41     :  xor2  port map (w42, w45, w41);
  c_w50     :  and2  port map (w42, w45, w50);
  c_w51     :  and2  port map (a, b, w51);
  c_w49     :  or2   port map (w50, w51, w49);
-- deleted   c_w53     :  id    port map (a[7], a);
-- deleted   c_w54     :  id    port map (b[7], b);
  c_w52     :  xor2  port map (a, b, w52);
  c_w48     :  xor2  port map (w49, w52, w48);
  c_w57     :  and2  port map (w49, w52, w57);
  c_w58     :  and2  port map (a, b, w58);
  c_w56     :  or2   port map (w57, w58, w56);
-- deleted   c_w60     :  id    port map (a[8], a);
-- deleted   c_w61     :  id    port map (b[8], b);
  c_w59     :  xor2  port map (a, b, w59);
  c_w55     :  xor2  port map (w56, w59, w55);
  c_w64     :  and2  port map (w56, w59, w64);
  c_w65     :  and2  port map (a, b, w65);
  c_w63     :  or2   port map (w64, w65, w63);
-- deleted   c_w67     :  id    port map (a[9], a);
-- deleted   c_w68     :  id    port map (b[9], b);
  c_w66     :  xor2  port map (a, b, w66);
  c_w62     :  xor2  port map (w63, w66, w62);
  c_w71     :  and2  port map (w63, w66, w71);
  c_w72     :  and2  port map (a, b, w72);
  c_w70     :  or2   port map (w71, w72, w70);
-- deleted   c_w74     :  id    port map (a[10], a);
-- deleted   c_w75     :  id    port map (b[10], b);
  c_w73     :  xor2  port map (a, b, w73);
  c_w69     :  xor2  port map (w70, w73, w69);
  c_w78     :  and2  port map (w70, w73, w78);
  c_w79     :  and2  port map (a, b, w79);
  c_w77     :  or2   port map (w78, w79, w77);
-- deleted   c_w81     :  id    port map (a[11], a);
-- deleted   c_w82     :  id    port map (b[11], b);
  c_w80     :  xor2  port map (a, b, w80);
  c_w76     :  xor2  port map (w77, w80, w76);
  c_w85     :  and2  port map (w77, w80, w85);
  c_w86     :  and2  port map (a, b, w86);
  c_w84     :  or2   port map (w85, w86, w84);
-- deleted   c_w88     :  id    port map (a[12], a);
-- deleted   c_w89     :  id    port map (b[12], b);
  c_w87     :  xor2  port map (a, b, w87);
  c_w83     :  xor2  port map (w84, w87, w83);
  c_w92     :  and2  port map (w84, w87, w92);
  c_w93     :  and2  port map (a, b, w93);
  c_w91     :  or2   port map (w92, w93, w91);
-- deleted   c_w95     :  id    port map (a[13], a);
-- deleted   c_w96     :  id    port map (b[13], b);
  c_w94     :  xor2  port map (a, b, w94);
  c_w90     :  xor2  port map (w91, w94, w90);
  c_w99     :  and2  port map (w91, w94, w99);
  c_w100    :  and2  port map (a, b, w100);
  c_w98     :  or2   port map (w99, w100, w98);
-- deleted   c_w102    :  id    port map (a[14], a);
-- deleted   c_w103    :  id    port map (b[14], b);
  c_w101    :  xor2  port map (a, b, w101);
  c_w97     :  xor2  port map (w98, w101, w97);
  c_w106    :  and2  port map (w98, w101, w106);
  c_w107    :  and2  port map (a, b, w107);
  c_w105    :  or2   port map (w106, w107, w105);
-- deleted   c_w109    :  id    port map (a[15], a);
-- deleted   c_w110    :  id    port map (b[15], b);
  c_w108    :  xor2  port map (a, b, w108);
  c_w104    :  xor2  port map (w105, w108, w104);
  c_w113    :  and2  port map (w105, w108, w113);
  c_w114    :  and2  port map (a, b, w114);
  c_w112    :  or2   port map (w113, w114, w112);
-- deleted   c_w116    :  id    port map (a[16], a);
-- deleted   c_w117    :  id    port map (b[16], b);
  c_w115    :  xor2  port map (a, b, w115);
  c_w111    :  xor2  port map (w112, w115, w111);
  c_w120    :  and2  port map (w112, w115, w120);
  c_w121    :  and2  port map (a, b, w121);
  c_w119    :  or2   port map (w120, w121, w119);
-- deleted   c_w123    :  id    port map (a[17], a);
-- deleted   c_w124    :  id    port map (b[17], b);
  c_w122    :  xor2  port map (a, b, w122);
  c_w118    :  xor2  port map (w119, w122, w118);
  c_w127    :  and2  port map (w119, w122, w127);
  c_w128    :  and2  port map (a, b, w128);
  c_w126    :  or2   port map (w127, w128, w126);
-- deleted   c_w130    :  id    port map (a[18], a);
-- deleted   c_w131    :  id    port map (b[18], b);
  c_w129    :  xor2  port map (a, b, w129);
  c_w125    :  xor2  port map (w126, w129, w125);
  c_w134    :  and2  port map (w126, w129, w134);
  c_w135    :  and2  port map (a, b, w135);
  c_w133    :  or2   port map (w134, w135, w133);
-- deleted   c_w137    :  id    port map (a[19], a);
-- deleted   c_w138    :  id    port map (b[19], b);
  c_w136    :  xor2  port map (a, b, w136);
  c_w132    :  xor2  port map (w133, w136, w132);
  c_w141    :  and2  port map (w133, w136, w141);
  c_w142    :  and2  port map (a, b, w142);
  c_w140    :  or2   port map (w141, w142, w140);
-- deleted   c_w144    :  id    port map (a[20], a);
-- deleted   c_w145    :  id    port map (b[20], b);
  c_w143    :  xor2  port map (a, b, w143);
  c_w139    :  xor2  port map (w140, w143, w139);
  c_w148    :  and2  port map (w140, w143, w148);
  c_w149    :  and2  port map (a, b, w149);
  c_w147    :  or2   port map (w148, w149, w147);
-- deleted   c_w151    :  id    port map (a[21], a);
-- deleted   c_w152    :  id    port map (b[21], b);
  c_w150    :  xor2  port map (a, b, w150);
  c_w146    :  xor2  port map (w147, w150, w146);
  c_w155    :  and2  port map (w147, w150, w155);
  c_w156    :  and2  port map (a, b, w156);
  c_w154    :  or2   port map (w155, w156, w154);
-- deleted   c_w158    :  id    port map (a[22], a);
-- deleted   c_w159    :  id    port map (b[22], b);
  c_w157    :  xor2  port map (a, b, w157);
  c_w153    :  xor2  port map (w154, w157, w153);
  c_w162    :  and2  port map (w154, w157, w162);
  c_w163    :  and2  port map (a, b, w163);
  c_w161    :  or2   port map (w162, w163, w161);
-- deleted   c_w165    :  id    port map (a[23], a);
-- deleted   c_w166    :  id    port map (b[23], b);
  c_w164    :  xor2  port map (a, b, w164);
  c_w160    :  xor2  port map (w161, w164, w160);
  c_w169    :  and2  port map (w161, w164, w169);
  c_w170    :  and2  port map (a, b, w170);
  c_w168    :  or2   port map (w169, w170, w168);
-- deleted   c_w172    :  id    port map (a[24], a);
-- deleted   c_w173    :  id    port map (b[24], b);
  c_w171    :  xor2  port map (a, b, w171);
  c_w167    :  xor2  port map (w168, w171, w167);
  c_w176    :  and2  port map (w168, w171, w176);
  c_w177    :  and2  port map (a, b, w177);
  c_w175    :  or2   port map (w176, w177, w175);
-- deleted   c_w179    :  id    port map (a[25], a);
-- deleted   c_w180    :  id    port map (b[25], b);
  c_w178    :  xor2  port map (a, b, w178);
  c_w174    :  xor2  port map (w175, w178, w174);
  c_w183    :  and2  port map (w175, w178, w183);
  c_w184    :  and2  port map (a, b, w184);
  c_w182    :  or2   port map (w183, w184, w182);
-- deleted   c_w186    :  id    port map (a[26], a);
-- deleted   c_w187    :  id    port map (b[26], b);
  c_w185    :  xor2  port map (a, b, w185);
  c_w181    :  xor2  port map (w182, w185, w181);
  c_w190    :  and2  port map (w182, w185, w190);
  c_w191    :  and2  port map (a, b, w191);
  c_w189    :  or2   port map (w190, w191, w189);
-- deleted   c_w193    :  id    port map (a[27], a);
-- deleted   c_w194    :  id    port map (b[27], b);
  c_w192    :  xor2  port map (a, b, w192);
  c_w188    :  xor2  port map (w189, w192, w188);
  c_w197    :  and2  port map (w189, w192, w197);
  c_w198    :  and2  port map (a, b, w198);
  c_w196    :  or2   port map (w197, w198, w196);
-- deleted   c_w200    :  id    port map (a[28], a);
-- deleted   c_w201    :  id    port map (b[28], b);
  c_w199    :  xor2  port map (a, b, w199);
  c_w195    :  xor2  port map (w196, w199, w195);
  c_w204    :  and2  port map (w196, w199, w204);
  c_w205    :  and2  port map (a, b, w205);
  c_w203    :  or2   port map (w204, w205, w203);
-- deleted   c_w207    :  id    port map (a[29], a);
-- deleted   c_w208    :  id    port map (b[29], b);
  c_w206    :  xor2  port map (a, b, w206);
  c_w202    :  xor2  port map (w203, w206, w202);
  c_w211    :  and2  port map (w203, w206, w211);
  c_w212    :  and2  port map (a, b, w212);
  c_w210    :  or2   port map (w211, w212, w210);
-- deleted   c_w214    :  id    port map (a[30], a);
-- deleted   c_w215    :  id    port map (b[30], b);
  c_w213    :  xor2  port map (a, b, w213);
  c_w209    :  xor2  port map (w210, w213, w209);
  c_w218    :  and2  port map (w210, w213, w218);
  c_w219    :  and2  port map (a, b, w219);
  c_w217    :  or2   port map (w218, w219, w217);
-- deleted   c_w221    :  id    port map (a[31], a);
-- deleted   c_w222    :  id    port map (b[31], b);
  c_w220    :  xor2  port map (a, b, w220);
  c_w216    :  xor2  port map (w217, w220, w216);
  c_w224    :  and2  port map (w217, w220, w224);
  c_w225    :  and2  port map (a, b, w225);
  c_w223    :  or2   port map (w224, w225, cout);

  
  c_sum[0]  :  id    port map (w1, sum[0]);
  c_sum[1]  :  id    port map (w6, sum[1]);
  c_sum[2]  :  id    port map (w13, sum[2]);
  c_sum[3]  :  id    port map (w20, sum[3]);
  c_sum[4]  :  id    port map (w27, sum[4]);
  c_sum[5]  :  id    port map (w34, sum[5]);
  c_sum[6]  :  id    port map (w41, sum[6]);
  c_sum[7]  :  id    port map (w48, sum[7]);
  c_sum[8]  :  id    port map (w55, sum[8]);
  c_sum[9]  :  id    port map (w62, sum[9]);
  c_sum[10] :  id    port map (w69, sum[10]);
  c_sum[11] :  id    port map (w76, sum[11]);
  c_sum[12] :  id    port map (w83, sum[12]);
  c_sum[13] :  id    port map (w90, sum[13]);
  c_sum[14] :  id    port map (w97, sum[14]);
  c_sum[15] :  id    port map (w104, sum[15]);
  c_sum[16] :  id    port map (w111, sum[16]);
  c_sum[17] :  id    port map (w118, sum[17]);
  c_sum[18] :  id    port map (w125, sum[18]);
  c_sum[19] :  id    port map (w132, sum[19]);
  c_sum[20] :  id    port map (w139, sum[20]);
  c_sum[21] :  id    port map (w146, sum[21]);
  c_sum[22] :  id    port map (w153, sum[22]);
  c_sum[23] :  id    port map (w160, sum[23]);
  c_sum[24] :  id    port map (w167, sum[24]);
  c_sum[25] :  id    port map (w174, sum[25]);
  c_sum[26] :  id    port map (w181, sum[26]);
  c_sum[27] :  id    port map (w188, sum[27]);
  c_sum[28] :  id    port map (w195, sum[28]);
  c_sum[29] :  id    port map (w202, sum[29]);
  c_sum[30] :  id    port map (w209, sum[30]);
  c_sum[31] :  id    port map (w216, sum[31]);
-- deleted --  c_cout    :  id    port map (cout, cout);
end structural;
