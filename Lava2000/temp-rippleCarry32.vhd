library ieee;

use ieee.std_logic_1164.all;

entity
  rippleCarry32
is
port
  ( 
 
    
    cin : in std_logic
  ; a0 : in std_logic
  ; a1 : in std_logic
  ; a2 : in std_logic
  ; a3 : in std_logic
  ; a4 : in std_logic
  ; a5 : in std_logic
  ; a6 : in std_logic
  ; a7 : in std_logic
  ; a8 : in std_logic
  ; a9 : in std_logic
  ; a10 : in std_logic
  ; a11 : in std_logic
  ; a12 : in std_logic
  ; a13 : in std_logic
  ; a14 : in std_logic
  ; a15 : in std_logic
  ; a16 : in std_logic
  ; a17 : in std_logic
  ; a18 : in std_logic
  ; a19 : in std_logic
  ; a20 : in std_logic
  ; a21 : in std_logic
  ; a22 : in std_logic
  ; a23 : in std_logic
  ; a24 : in std_logic
  ; a25 : in std_logic
  ; a26 : in std_logic
  ; a27 : in std_logic
  ; a28 : in std_logic
  ; a29 : in std_logic
  ; a30 : in std_logic
  ; a31 : in std_logic
  ; b0 : in std_logic
  ; b1 : in std_logic
  ; b2 : in std_logic
  ; b3 : in std_logic
  ; b4 : in std_logic
  ; b5 : in std_logic
  ; b6 : in std_logic
  ; b7 : in std_logic
  ; b8 : in std_logic
  ; b9 : in std_logic
  ; b10 : in std_logic
  ; b11 : in std_logic
  ; b12 : in std_logic
  ; b13 : in std_logic
  ; b14 : in std_logic
  ; b15 : in std_logic
  ; b16 : in std_logic
  ; b17 : in std_logic
  ; b18 : in std_logic
  ; b19 : in std_logic
  ; b20 : in std_logic
  ; b21 : in std_logic
  ; b22 : in std_logic
  ; b23 : in std_logic
  ; b24 : in std_logic
  ; b25 : in std_logic
  ; b26 : in std_logic
  ; b27 : in std_logic
  ; b28 : in std_logic
  ; b29 : in std_logic
  ; b30 : in std_logic
  ; b31 : in std_logic

  
  ; sum0 : out std_logic
  ; sum1 : out std_logic
  ; sum2 : out std_logic
  ; sum3 : out std_logic
  ; sum4 : out std_logic
  ; sum5 : out std_logic
  ; sum6 : out std_logic
  ; sum7 : out std_logic
  ; sum8 : out std_logic
  ; sum9 : out std_logic
  ; sum10 : out std_logic
  ; sum11 : out std_logic
  ; sum12 : out std_logic
  ; sum13 : out std_logic
  ; sum14 : out std_logic
  ; sum15 : out std_logic
  ; sum16 : out std_logic
  ; sum17 : out std_logic
  ; sum18 : out std_logic
  ; sum19 : out std_logic
  ; sum20 : out std_logic
  ; sum21 : out std_logic
  ; sum22 : out std_logic
  ; sum23 : out std_logic
  ; sum24 : out std_logic
  ; sum25 : out std_logic
  ; sum26 : out std_logic
  ; sum27 : out std_logic
  ; sum28 : out std_logic
  ; sum29 : out std_logic
  ; sum30 : out std_logic
  ; sum31 : out std_logic
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
-- deleted   c_w4      :  id    port map (a0, a);
-- deleted   c_w5      :  id    port map (b0, b);
  c_w3      :  xor2  port map (a, b, w3);
  c_w1      :  xor2  port map (cin, w3, w1);
  c_w8      :  and2  port map (cin, w3, w8);
  c_w9      :  and2  port map (a, b, w9);
  c_w7      :  or2   port map (w8, w9, w7);
-- deleted   c_w11     :  id    port map (a1, a);
-- deleted   c_w12     :  id    port map (b1, b);
  c_w10     :  xor2  port map (a, b, w10);
  c_w6      :  xor2  port map (w7, w10, w6);
  c_w15     :  and2  port map (w7, w10, w15);
  c_w16     :  and2  port map (a, b, w16);
  c_w14     :  or2   port map (w15, w16, w14);
-- deleted   c_w18     :  id    port map (a2, a);
-- deleted   c_w19     :  id    port map (b2, b);
  c_w17     :  xor2  port map (a, b, w17);
  c_w13     :  xor2  port map (w14, w17, w13);
  c_w22     :  and2  port map (w14, w17, w22);
  c_w23     :  and2  port map (a, b, w23);
  c_w21     :  or2   port map (w22, w23, w21);
-- deleted   c_w25     :  id    port map (a3, a);
-- deleted   c_w26     :  id    port map (b3, b);
  c_w24     :  xor2  port map (a, b, w24);
  c_w20     :  xor2  port map (w21, w24, w20);
  c_w29     :  and2  port map (w21, w24, w29);
  c_w30     :  and2  port map (a, b, w30);
  c_w28     :  or2   port map (w29, w30, w28);
-- deleted   c_w32     :  id    port map (a4, a);
-- deleted   c_w33     :  id    port map (b4, b);
  c_w31     :  xor2  port map (a, b, w31);
  c_w27     :  xor2  port map (w28, w31, w27);
  c_w36     :  and2  port map (w28, w31, w36);
  c_w37     :  and2  port map (a, b, w37);
  c_w35     :  or2   port map (w36, w37, w35);
-- deleted   c_w39     :  id    port map (a5, a);
-- deleted   c_w40     :  id    port map (b5, b);
  c_w38     :  xor2  port map (a, b, w38);
  c_w34     :  xor2  port map (w35, w38, w34);
  c_w43     :  and2  port map (w35, w38, w43);
  c_w44     :  and2  port map (a, b, w44);
  c_w42     :  or2   port map (w43, w44, w42);
-- deleted   c_w46     :  id    port map (a6, a);
-- deleted   c_w47     :  id    port map (b6, b);
  c_w45     :  xor2  port map (a, b, w45);
  c_w41     :  xor2  port map (w42, w45, w41);
  c_w50     :  and2  port map (w42, w45, w50);
  c_w51     :  and2  port map (a, b, w51);
  c_w49     :  or2   port map (w50, w51, w49);
-- deleted   c_w53     :  id    port map (a7, a);
-- deleted   c_w54     :  id    port map (b7, b);
  c_w52     :  xor2  port map (a, b, w52);
  c_w48     :  xor2  port map (w49, w52, w48);
  c_w57     :  and2  port map (w49, w52, w57);
  c_w58     :  and2  port map (a, b, w58);
  c_w56     :  or2   port map (w57, w58, w56);
-- deleted   c_w60     :  id    port map (a8, a);
-- deleted   c_w61     :  id    port map (b8, b);
  c_w59     :  xor2  port map (a, b, w59);
  c_w55     :  xor2  port map (w56, w59, w55);
  c_w64     :  and2  port map (w56, w59, w64);
  c_w65     :  and2  port map (a, b, w65);
  c_w63     :  or2   port map (w64, w65, w63);
-- deleted   c_w67     :  id    port map (a9, a);
-- deleted   c_w68     :  id    port map (b9, b);
  c_w66     :  xor2  port map (a, b, w66);
  c_w62     :  xor2  port map (w63, w66, w62);
  c_w71     :  and2  port map (w63, w66, w71);
  c_w72     :  and2  port map (a, b, w72);
  c_w70     :  or2   port map (w71, w72, w70);
-- deleted   c_w74     :  id    port map (a10, a);
-- deleted   c_w75     :  id    port map (b10, b);
  c_w73     :  xor2  port map (a, b, w73);
  c_w69     :  xor2  port map (w70, w73, w69);
  c_w78     :  and2  port map (w70, w73, w78);
  c_w79     :  and2  port map (a, b, w79);
  c_w77     :  or2   port map (w78, w79, w77);
-- deleted   c_w81     :  id    port map (a11, a);
-- deleted   c_w82     :  id    port map (b11, b);
  c_w80     :  xor2  port map (a, b, w80);
  c_w76     :  xor2  port map (w77, w80, w76);
  c_w85     :  and2  port map (w77, w80, w85);
  c_w86     :  and2  port map (a, b, w86);
  c_w84     :  or2   port map (w85, w86, w84);
-- deleted   c_w88     :  id    port map (a12, a);
-- deleted   c_w89     :  id    port map (b12, b);
  c_w87     :  xor2  port map (a, b, w87);
  c_w83     :  xor2  port map (w84, w87, w83);
  c_w92     :  and2  port map (w84, w87, w92);
  c_w93     :  and2  port map (a, b, w93);
  c_w91     :  or2   port map (w92, w93, w91);
-- deleted   c_w95     :  id    port map (a13, a);
-- deleted   c_w96     :  id    port map (b13, b);
  c_w94     :  xor2  port map (a, b, w94);
  c_w90     :  xor2  port map (w91, w94, w90);
  c_w99     :  and2  port map (w91, w94, w99);
  c_w100    :  and2  port map (a, b, w100);
  c_w98     :  or2   port map (w99, w100, w98);
-- deleted   c_w102    :  id    port map (a14, a);
-- deleted   c_w103    :  id    port map (b14, b);
  c_w101    :  xor2  port map (a, b, w101);
  c_w97     :  xor2  port map (w98, w101, w97);
  c_w106    :  and2  port map (w98, w101, w106);
  c_w107    :  and2  port map (a, b, w107);
  c_w105    :  or2   port map (w106, w107, w105);
-- deleted   c_w109    :  id    port map (a15, a);
-- deleted   c_w110    :  id    port map (b15, b);
  c_w108    :  xor2  port map (a, b, w108);
  c_w104    :  xor2  port map (w105, w108, w104);
  c_w113    :  and2  port map (w105, w108, w113);
  c_w114    :  and2  port map (a, b, w114);
  c_w112    :  or2   port map (w113, w114, w112);
-- deleted   c_w116    :  id    port map (a16, a);
-- deleted   c_w117    :  id    port map (b16, b);
  c_w115    :  xor2  port map (a, b, w115);
  c_w111    :  xor2  port map (w112, w115, w111);
  c_w120    :  and2  port map (w112, w115, w120);
  c_w121    :  and2  port map (a, b, w121);
  c_w119    :  or2   port map (w120, w121, w119);
-- deleted   c_w123    :  id    port map (a17, a);
-- deleted   c_w124    :  id    port map (b17, b);
  c_w122    :  xor2  port map (a, b, w122);
  c_w118    :  xor2  port map (w119, w122, w118);
  c_w127    :  and2  port map (w119, w122, w127);
  c_w128    :  and2  port map (a, b, w128);
  c_w126    :  or2   port map (w127, w128, w126);
-- deleted   c_w130    :  id    port map (a18, a);
-- deleted   c_w131    :  id    port map (b18, b);
  c_w129    :  xor2  port map (a, b, w129);
  c_w125    :  xor2  port map (w126, w129, w125);
  c_w134    :  and2  port map (w126, w129, w134);
  c_w135    :  and2  port map (a, b, w135);
  c_w133    :  or2   port map (w134, w135, w133);
-- deleted   c_w137    :  id    port map (a19, a);
-- deleted   c_w138    :  id    port map (b19, b);
  c_w136    :  xor2  port map (a, b, w136);
  c_w132    :  xor2  port map (w133, w136, w132);
  c_w141    :  and2  port map (w133, w136, w141);
  c_w142    :  and2  port map (a, b, w142);
  c_w140    :  or2   port map (w141, w142, w140);
-- deleted   c_w144    :  id    port map (a20, a);
-- deleted   c_w145    :  id    port map (b20, b);
  c_w143    :  xor2  port map (a, b, w143);
  c_w139    :  xor2  port map (w140, w143, w139);
  c_w148    :  and2  port map (w140, w143, w148);
  c_w149    :  and2  port map (a, b, w149);
  c_w147    :  or2   port map (w148, w149, w147);
-- deleted   c_w151    :  id    port map (a21, a);
-- deleted   c_w152    :  id    port map (b21, b);
  c_w150    :  xor2  port map (a, b, w150);
  c_w146    :  xor2  port map (w147, w150, w146);
  c_w155    :  and2  port map (w147, w150, w155);
  c_w156    :  and2  port map (a, b, w156);
  c_w154    :  or2   port map (w155, w156, w154);
-- deleted   c_w158    :  id    port map (a22, a);
-- deleted   c_w159    :  id    port map (b22, b);
  c_w157    :  xor2  port map (a, b, w157);
  c_w153    :  xor2  port map (w154, w157, w153);
  c_w162    :  and2  port map (w154, w157, w162);
  c_w163    :  and2  port map (a, b, w163);
  c_w161    :  or2   port map (w162, w163, w161);
-- deleted   c_w165    :  id    port map (a23, a);
-- deleted   c_w166    :  id    port map (b23, b);
  c_w164    :  xor2  port map (a, b, w164);
  c_w160    :  xor2  port map (w161, w164, w160);
  c_w169    :  and2  port map (w161, w164, w169);
  c_w170    :  and2  port map (a, b, w170);
  c_w168    :  or2   port map (w169, w170, w168);
-- deleted   c_w172    :  id    port map (a24, a);
-- deleted   c_w173    :  id    port map (b24, b);
  c_w171    :  xor2  port map (a, b, w171);
  c_w167    :  xor2  port map (w168, w171, w167);
  c_w176    :  and2  port map (w168, w171, w176);
  c_w177    :  and2  port map (a, b, w177);
  c_w175    :  or2   port map (w176, w177, w175);
-- deleted   c_w179    :  id    port map (a25, a);
-- deleted   c_w180    :  id    port map (b25, b);
  c_w178    :  xor2  port map (a, b, w178);
  c_w174    :  xor2  port map (w175, w178, w174);
  c_w183    :  and2  port map (w175, w178, w183);
  c_w184    :  and2  port map (a, b, w184);
  c_w182    :  or2   port map (w183, w184, w182);
-- deleted   c_w186    :  id    port map (a26, a);
-- deleted   c_w187    :  id    port map (b26, b);
  c_w185    :  xor2  port map (a, b, w185);
  c_w181    :  xor2  port map (w182, w185, w181);
  c_w190    :  and2  port map (w182, w185, w190);
  c_w191    :  and2  port map (a, b, w191);
  c_w189    :  or2   port map (w190, w191, w189);
-- deleted   c_w193    :  id    port map (a27, a);
-- deleted   c_w194    :  id    port map (b27, b);
  c_w192    :  xor2  port map (a, b, w192);
  c_w188    :  xor2  port map (w189, w192, w188);
  c_w197    :  and2  port map (w189, w192, w197);
  c_w198    :  and2  port map (a, b, w198);
  c_w196    :  or2   port map (w197, w198, w196);
-- deleted   c_w200    :  id    port map (a28, a);
-- deleted   c_w201    :  id    port map (b28, b);
  c_w199    :  xor2  port map (a, b, w199);
  c_w195    :  xor2  port map (w196, w199, w195);
  c_w204    :  and2  port map (w196, w199, w204);
  c_w205    :  and2  port map (a, b, w205);
  c_w203    :  or2   port map (w204, w205, w203);
-- deleted   c_w207    :  id    port map (a29, a);
-- deleted   c_w208    :  id    port map (b29, b);
  c_w206    :  xor2  port map (a, b, w206);
  c_w202    :  xor2  port map (w203, w206, w202);
  c_w211    :  and2  port map (w203, w206, w211);
  c_w212    :  and2  port map (a, b, w212);
  c_w210    :  or2   port map (w211, w212, w210);
-- deleted   c_w214    :  id    port map (a30, a);
-- deleted   c_w215    :  id    port map (b30, b);
  c_w213    :  xor2  port map (a, b, w213);
  c_w209    :  xor2  port map (w210, w213, w209);
  c_w218    :  and2  port map (w210, w213, w218);
  c_w219    :  and2  port map (a, b, w219);
  c_w217    :  or2   port map (w218, w219, w217);
-- deleted   c_w221    :  id    port map (a31, a);
-- deleted   c_w222    :  id    port map (b31, b);
  c_w220    :  xor2  port map (a, b, w220);
  c_w216    :  xor2  port map (w217, w220, w216);
  c_w224    :  and2  port map (w217, w220, w224);
  c_w225    :  and2  port map (a, b, w225);
  c_w223    :  or2   port map (w224, w225, cout);

  
  c_sum0  :  id    port map (w1, sum0);
  c_sum1  :  id    port map (w6, sum1);
  c_sum2  :  id    port map (w13, sum2);
  c_sum3  :  id    port map (w20, sum3);
  c_sum4  :  id    port map (w27, sum4);
  c_sum5  :  id    port map (w34, sum5);
  c_sum6  :  id    port map (w41, sum6);
  c_sum7  :  id    port map (w48, sum7);
  c_sum8  :  id    port map (w55, sum8);
  c_sum9  :  id    port map (w62, sum9);
  c_sum10 :  id    port map (w69, sum10);
  c_sum11 :  id    port map (w76, sum11);
  c_sum12 :  id    port map (w83, sum12);
  c_sum13 :  id    port map (w90, sum13);
  c_sum14 :  id    port map (w97, sum14);
  c_sum15 :  id    port map (w104, sum15);
  c_sum16 :  id    port map (w111, sum16);
  c_sum17 :  id    port map (w118, sum17);
  c_sum18 :  id    port map (w125, sum18);
  c_sum19 :  id    port map (w132, sum19);
  c_sum20 :  id    port map (w139, sum20);
  c_sum21 :  id    port map (w146, sum21);
  c_sum22 :  id    port map (w153, sum22);
  c_sum23 :  id    port map (w160, sum23);
  c_sum24 :  id    port map (w167, sum24);
  c_sum25 :  id    port map (w174, sum25);
  c_sum26 :  id    port map (w181, sum26);
  c_sum27 :  id    port map (w188, sum27);
  c_sum28 :  id    port map (w195, sum28);
  c_sum29 :  id    port map (w202, sum29);
  c_sum30 :  id    port map (w209, sum30);
  c_sum31 :  id    port map (w216, sum31);
-- deleted --  c_cout    :  id    port map (cout, cout);
end structural;
