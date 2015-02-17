library ieee;

use ieee.std_logic_1164.all;

entity
  BrentKungFastAdder32
is
port
  ( 
 
    
    a0 : in std_logic
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
end BrentKungFastAdder32;

architecture
  structural
of
  BrentKungFastAdder32
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
  signal w226 : std_logic;
  signal w227 : std_logic;
  signal w228 : std_logic;
  signal w229 : std_logic;
  signal w230 : std_logic;
  signal w231 : std_logic;
  signal w232 : std_logic;
  signal w233 : std_logic;
  signal w234 : std_logic;
  signal w235 : std_logic;
  signal w236 : std_logic;
  signal w237 : std_logic;
  signal w238 : std_logic;
  signal w239 : std_logic;
  signal w240 : std_logic;
  signal w241 : std_logic;
  signal w242 : std_logic;
  signal w243 : std_logic;
  signal w244 : std_logic;
  signal w245 : std_logic;
  signal w246 : std_logic;
  signal w247 : std_logic;
  signal w248 : std_logic;
  signal w249 : std_logic;
  signal w250 : std_logic;
  signal w251 : std_logic;
  signal w252 : std_logic;
  signal w253 : std_logic;
  signal w254 : std_logic;
  signal w255 : std_logic;
  signal w256 : std_logic;
  signal w257 : std_logic;
  signal w258 : std_logic;
  signal w259 : std_logic;
  signal w260 : std_logic;
  signal w261 : std_logic;
  signal w262 : std_logic;
  signal w263 : std_logic;
  signal w264 : std_logic;
  signal w265 : std_logic;
  signal w266 : std_logic;
  signal w267 : std_logic;
  signal w268 : std_logic;
  signal w269 : std_logic;
  signal w270 : std_logic;
  signal w271 : std_logic;
  signal w272 : std_logic;
  signal w273 : std_logic;
  signal w274 : std_logic;
  signal w275 : std_logic;
  signal w276 : std_logic;
  signal w277 : std_logic;
  signal w278 : std_logic;
  signal w279 : std_logic;
  signal w280 : std_logic;
  signal w281 : std_logic;
  signal w282 : std_logic;
  signal w283 : std_logic;
  signal w284 : std_logic;
  signal w285 : std_logic;
  signal w286 : std_logic;
  signal w287 : std_logic;
  signal w288 : std_logic;
  signal w289 : std_logic;
  signal w290 : std_logic;
  signal w291 : std_logic;
  signal w292 : std_logic;
  signal w293 : std_logic;
  signal w294 : std_logic;
  signal w295 : std_logic;
  signal w296 : std_logic;
  signal w297 : std_logic;
  signal w298 : std_logic;
  signal w299 : std_logic;
begin
  c_w2      :  id    port map (a0, w2);
  c_w3      :  id    port map (b0, w3);
  c_w1      :  xor2  port map (w2, w3, w1);
  c_w6      :  id    port map (a1, w6);
  c_w7      :  id    port map (b1, w7);
  c_w5      :  xor2  port map (w6, w7, w5);
  c_w8      :  and2  port map (w2, w3, w8);
  c_w4      :  xor2  port map (w5, w8, w4);
  c_w11     :  id    port map (a2, w11);
  c_w12     :  id    port map (b2, w12);
  c_w10     :  xor2  port map (w11, w12, w10);
  c_w14     :  and2  port map (w6, w7, w14);
  c_w15     :  and2  port map (w5, w8, w15);
  c_w13     :  or2   port map (w14, w15, w13);
  c_w9      :  xor2  port map (w10, w13, w9);
  c_w18     :  id    port map (a3, w18);
  c_w19     :  id    port map (b3, w19);
  c_w17     :  xor2  port map (w18, w19, w17);
  c_w21     :  and2  port map (w11, w12, w21);
  c_w22     :  and2  port map (w10, w13, w22);
  c_w20     :  or2   port map (w21, w22, w20);
  c_w16     :  xor2  port map (w17, w20, w16);
  c_w25     :  id    port map (a4, w25);
  c_w26     :  id    port map (b4, w26);
  c_w24     :  xor2  port map (w25, w26, w24);
  c_w29     :  and2  port map (w18, w19, w29);
  c_w30     :  and2  port map (w17, w21, w30);
  c_w28     :  or2   port map (w29, w30, w28);
  c_w32     :  and2  port map (w17, w10, w32);
  c_w31     :  and2  port map (w32, w13, w31);
  c_w27     :  or2   port map (w28, w31, w27);
  c_w23     :  xor2  port map (w24, w27, w23);
  c_w35     :  id    port map (a5, w35);
  c_w36     :  id    port map (b5, w36);
  c_w34     :  xor2  port map (w35, w36, w34);
  c_w38     :  and2  port map (w25, w26, w38);
  c_w39     :  and2  port map (w24, w27, w39);
  c_w37     :  or2   port map (w38, w39, w37);
  c_w33     :  xor2  port map (w34, w37, w33);
  c_w42     :  id    port map (a6, w42);
  c_w43     :  id    port map (b6, w43);
  c_w41     :  xor2  port map (w42, w43, w41);
  c_w46     :  and2  port map (w35, w36, w46);
  c_w47     :  and2  port map (w34, w38, w47);
  c_w45     :  or2   port map (w46, w47, w45);
  c_w49     :  and2  port map (w34, w24, w49);
  c_w48     :  and2  port map (w49, w27, w48);
  c_w44     :  or2   port map (w45, w48, w44);
  c_w40     :  xor2  port map (w41, w44, w40);
  c_w52     :  id    port map (a7, w52);
  c_w53     :  id    port map (b7, w53);
  c_w51     :  xor2  port map (w52, w53, w51);
  c_w55     :  and2  port map (w42, w43, w55);
  c_w56     :  and2  port map (w41, w44, w56);
  c_w54     :  or2   port map (w55, w56, w54);
  c_w50     :  xor2  port map (w51, w54, w50);
  c_w59     :  id    port map (a8, w59);
  c_w60     :  id    port map (b8, w60);
  c_w58     :  xor2  port map (w59, w60, w58);
  c_w64     :  and2  port map (w52, w53, w64);
  c_w65     :  and2  port map (w51, w55, w65);
  c_w63     :  or2   port map (w64, w65, w63);
  c_w67     :  and2  port map (w51, w41, w67);
  c_w66     :  and2  port map (w67, w45, w66);
  c_w62     :  or2   port map (w63, w66, w62);
  c_w69     :  and2  port map (w67, w49, w69);
  c_w68     :  and2  port map (w69, w27, w68);
  c_w61     :  or2   port map (w62, w68, w61);
  c_w57     :  xor2  port map (w58, w61, w57);
  c_w72     :  id    port map (a9, w72);
  c_w73     :  id    port map (b9, w73);
  c_w71     :  xor2  port map (w72, w73, w71);
  c_w75     :  and2  port map (w59, w60, w75);
  c_w76     :  and2  port map (w58, w61, w76);
  c_w74     :  or2   port map (w75, w76, w74);
  c_w70     :  xor2  port map (w71, w74, w70);
  c_w79     :  id    port map (a10, w79);
  c_w80     :  id    port map (b10, w80);
  c_w78     :  xor2  port map (w79, w80, w78);
  c_w83     :  and2  port map (w72, w73, w83);
  c_w84     :  and2  port map (w71, w75, w84);
  c_w82     :  or2   port map (w83, w84, w82);
  c_w86     :  and2  port map (w71, w58, w86);
  c_w85     :  and2  port map (w86, w61, w85);
  c_w81     :  or2   port map (w82, w85, w81);
  c_w77     :  xor2  port map (w78, w81, w77);
  c_w89     :  id    port map (a11, w89);
  c_w90     :  id    port map (b11, w90);
  c_w88     :  xor2  port map (w89, w90, w88);
  c_w92     :  and2  port map (w79, w80, w92);
  c_w93     :  and2  port map (w78, w81, w93);
  c_w91     :  or2   port map (w92, w93, w91);
  c_w87     :  xor2  port map (w88, w91, w87);
  c_w96     :  id    port map (a12, w96);
  c_w97     :  id    port map (b12, w97);
  c_w95     :  xor2  port map (w96, w97, w95);
  c_w101    :  and2  port map (w89, w90, w101);
  c_w102    :  and2  port map (w88, w92, w102);
  c_w100    :  or2   port map (w101, w102, w100);
  c_w104    :  and2  port map (w88, w78, w104);
  c_w103    :  and2  port map (w104, w82, w103);
  c_w99     :  or2   port map (w100, w103, w99);
  c_w106    :  and2  port map (w104, w86, w106);
  c_w105    :  and2  port map (w106, w61, w105);
  c_w98     :  or2   port map (w99, w105, w98);
  c_w94     :  xor2  port map (w95, w98, w94);
  c_w109    :  id    port map (a13, w109);
  c_w110    :  id    port map (b13, w110);
  c_w108    :  xor2  port map (w109, w110, w108);
  c_w112    :  and2  port map (w96, w97, w112);
  c_w113    :  and2  port map (w95, w98, w113);
  c_w111    :  or2   port map (w112, w113, w111);
  c_w107    :  xor2  port map (w108, w111, w107);
  c_w116    :  id    port map (a14, w116);
  c_w117    :  id    port map (b14, w117);
  c_w115    :  xor2  port map (w116, w117, w115);
  c_w120    :  and2  port map (w109, w110, w120);
  c_w121    :  and2  port map (w108, w112, w121);
  c_w119    :  or2   port map (w120, w121, w119);
  c_w123    :  and2  port map (w108, w95, w123);
  c_w122    :  and2  port map (w123, w98, w122);
  c_w118    :  or2   port map (w119, w122, w118);
  c_w114    :  xor2  port map (w115, w118, w114);
  c_w126    :  id    port map (a15, w126);
  c_w127    :  id    port map (b15, w127);
  c_w125    :  xor2  port map (w126, w127, w125);
  c_w129    :  and2  port map (w116, w117, w129);
  c_w130    :  and2  port map (w115, w118, w130);
  c_w128    :  or2   port map (w129, w130, w128);
  c_w124    :  xor2  port map (w125, w128, w124);
  c_w133    :  id    port map (a16, w133);
  c_w134    :  id    port map (b16, w134);
  c_w132    :  xor2  port map (w133, w134, w132);
  c_w139    :  and2  port map (w126, w127, w139);
  c_w140    :  and2  port map (w125, w129, w140);
  c_w138    :  or2   port map (w139, w140, w138);
  c_w142    :  and2  port map (w125, w115, w142);
  c_w141    :  and2  port map (w142, w119, w141);
  c_w137    :  or2   port map (w138, w141, w137);
  c_w144    :  and2  port map (w142, w123, w144);
  c_w143    :  and2  port map (w144, w99, w143);
  c_w136    :  or2   port map (w137, w143, w136);
  c_w146    :  and2  port map (w144, w106, w146);
  c_w145    :  and2  port map (w146, w61, w145);
  c_w135    :  or2   port map (w136, w145, w135);
  c_w131    :  xor2  port map (w132, w135, w131);
  c_w149    :  id    port map (a17, w149);
  c_w150    :  id    port map (b17, w150);
  c_w148    :  xor2  port map (w149, w150, w148);
  c_w152    :  and2  port map (w133, w134, w152);
  c_w153    :  and2  port map (w132, w135, w153);
  c_w151    :  or2   port map (w152, w153, w151);
  c_w147    :  xor2  port map (w148, w151, w147);
  c_w156    :  id    port map (a18, w156);
  c_w157    :  id    port map (b18, w157);
  c_w155    :  xor2  port map (w156, w157, w155);
  c_w160    :  and2  port map (w149, w150, w160);
  c_w161    :  and2  port map (w148, w152, w161);
  c_w159    :  or2   port map (w160, w161, w159);
  c_w163    :  and2  port map (w148, w132, w163);
  c_w162    :  and2  port map (w163, w135, w162);
  c_w158    :  or2   port map (w159, w162, w158);
  c_w154    :  xor2  port map (w155, w158, w154);
  c_w166    :  id    port map (a19, w166);
  c_w167    :  id    port map (b19, w167);
  c_w165    :  xor2  port map (w166, w167, w165);
  c_w169    :  and2  port map (w156, w157, w169);
  c_w170    :  and2  port map (w155, w158, w170);
  c_w168    :  or2   port map (w169, w170, w168);
  c_w164    :  xor2  port map (w165, w168, w164);
  c_w173    :  id    port map (a20, w173);
  c_w174    :  id    port map (b20, w174);
  c_w172    :  xor2  port map (w173, w174, w172);
  c_w178    :  and2  port map (w166, w167, w178);
  c_w179    :  and2  port map (w165, w169, w179);
  c_w177    :  or2   port map (w178, w179, w177);
  c_w181    :  and2  port map (w165, w155, w181);
  c_w180    :  and2  port map (w181, w159, w180);
  c_w176    :  or2   port map (w177, w180, w176);
  c_w183    :  and2  port map (w181, w163, w183);
  c_w182    :  and2  port map (w183, w135, w182);
  c_w175    :  or2   port map (w176, w182, w175);
  c_w171    :  xor2  port map (w172, w175, w171);
  c_w186    :  id    port map (a21, w186);
  c_w187    :  id    port map (b21, w187);
  c_w185    :  xor2  port map (w186, w187, w185);
  c_w189    :  and2  port map (w173, w174, w189);
  c_w190    :  and2  port map (w172, w175, w190);
  c_w188    :  or2   port map (w189, w190, w188);
  c_w184    :  xor2  port map (w185, w188, w184);
  c_w193    :  id    port map (a22, w193);
  c_w194    :  id    port map (b22, w194);
  c_w192    :  xor2  port map (w193, w194, w192);
  c_w197    :  and2  port map (w186, w187, w197);
  c_w198    :  and2  port map (w185, w189, w198);
  c_w196    :  or2   port map (w197, w198, w196);
  c_w200    :  and2  port map (w185, w172, w200);
  c_w199    :  and2  port map (w200, w175, w199);
  c_w195    :  or2   port map (w196, w199, w195);
  c_w191    :  xor2  port map (w192, w195, w191);
  c_w203    :  id    port map (a23, w203);
  c_w204    :  id    port map (b23, w204);
  c_w202    :  xor2  port map (w203, w204, w202);
  c_w206    :  and2  port map (w193, w194, w206);
  c_w207    :  and2  port map (w192, w195, w207);
  c_w205    :  or2   port map (w206, w207, w205);
  c_w201    :  xor2  port map (w202, w205, w201);
  c_w210    :  id    port map (a24, w210);
  c_w211    :  id    port map (b24, w211);
  c_w209    :  xor2  port map (w210, w211, w209);
  c_w216    :  and2  port map (w203, w204, w216);
  c_w217    :  and2  port map (w202, w206, w217);
  c_w215    :  or2   port map (w216, w217, w215);
  c_w219    :  and2  port map (w202, w192, w219);
  c_w218    :  and2  port map (w219, w196, w218);
  c_w214    :  or2   port map (w215, w218, w214);
  c_w221    :  and2  port map (w219, w200, w221);
  c_w220    :  and2  port map (w221, w176, w220);
  c_w213    :  or2   port map (w214, w220, w213);
  c_w223    :  and2  port map (w221, w183, w223);
  c_w222    :  and2  port map (w223, w135, w222);
  c_w212    :  or2   port map (w213, w222, w212);
  c_w208    :  xor2  port map (w209, w212, w208);
  c_w226    :  id    port map (a25, w226);
  c_w227    :  id    port map (b25, w227);
  c_w225    :  xor2  port map (w226, w227, w225);
  c_w229    :  and2  port map (w210, w211, w229);
  c_w230    :  and2  port map (w209, w212, w230);
  c_w228    :  or2   port map (w229, w230, w228);
  c_w224    :  xor2  port map (w225, w228, w224);
  c_w233    :  id    port map (a26, w233);
  c_w234    :  id    port map (b26, w234);
  c_w232    :  xor2  port map (w233, w234, w232);
  c_w237    :  and2  port map (w226, w227, w237);
  c_w238    :  and2  port map (w225, w229, w238);
  c_w236    :  or2   port map (w237, w238, w236);
  c_w240    :  and2  port map (w225, w209, w240);
  c_w239    :  and2  port map (w240, w212, w239);
  c_w235    :  or2   port map (w236, w239, w235);
  c_w231    :  xor2  port map (w232, w235, w231);
  c_w243    :  id    port map (a27, w243);
  c_w244    :  id    port map (b27, w244);
  c_w242    :  xor2  port map (w243, w244, w242);
  c_w246    :  and2  port map (w233, w234, w246);
  c_w247    :  and2  port map (w232, w235, w247);
  c_w245    :  or2   port map (w246, w247, w245);
  c_w241    :  xor2  port map (w242, w245, w241);
  c_w250    :  id    port map (a28, w250);
  c_w251    :  id    port map (b28, w251);
  c_w249    :  xor2  port map (w250, w251, w249);
  c_w255    :  and2  port map (w243, w244, w255);
  c_w256    :  and2  port map (w242, w246, w256);
  c_w254    :  or2   port map (w255, w256, w254);
  c_w258    :  and2  port map (w242, w232, w258);
  c_w257    :  and2  port map (w258, w236, w257);
  c_w253    :  or2   port map (w254, w257, w253);
  c_w260    :  and2  port map (w258, w240, w260);
  c_w259    :  and2  port map (w260, w212, w259);
  c_w252    :  or2   port map (w253, w259, w252);
  c_w248    :  xor2  port map (w249, w252, w248);
  c_w263    :  id    port map (a29, w263);
  c_w264    :  id    port map (b29, w264);
  c_w262    :  xor2  port map (w263, w264, w262);
  c_w266    :  and2  port map (w250, w251, w266);
  c_w267    :  and2  port map (w249, w252, w267);
  c_w265    :  or2   port map (w266, w267, w265);
  c_w261    :  xor2  port map (w262, w265, w261);
  c_w270    :  id    port map (a30, w270);
  c_w271    :  id    port map (b30, w271);
  c_w269    :  xor2  port map (w270, w271, w269);
  c_w274    :  and2  port map (w263, w264, w274);
  c_w275    :  and2  port map (w262, w266, w275);
  c_w273    :  or2   port map (w274, w275, w273);
  c_w277    :  and2  port map (w262, w249, w277);
  c_w276    :  and2  port map (w277, w252, w276);
  c_w272    :  or2   port map (w273, w276, w272);
  c_w268    :  xor2  port map (w269, w272, w268);
  c_w280    :  id    port map (a31, w280);
  c_w281    :  id    port map (b31, w281);
  c_w279    :  xor2  port map (w280, w281, w279);
  c_w283    :  and2  port map (w270, w271, w283);
  c_w284    :  and2  port map (w269, w272, w284);
  c_w282    :  or2   port map (w283, w284, w282);
  c_w278    :  xor2  port map (w279, w282, w278);
  c_w290    :  and2  port map (w280, w281, w290);
  c_w291    :  and2  port map (w279, w283, w291);
  c_w289    :  or2   port map (w290, w291, w289);
  c_w293    :  and2  port map (w279, w269, w293);
  c_w292    :  and2  port map (w293, w273, w292);
  c_w288    :  or2   port map (w289, w292, w288);
  c_w295    :  and2  port map (w293, w277, w295);
  c_w294    :  and2  port map (w295, w253, w294);
  c_w287    :  or2   port map (w288, w294, w287);
  c_w297    :  and2  port map (w295, w260, w297);
  c_w296    :  and2  port map (w297, w213, w296);
  c_w286    :  or2   port map (w287, w296, w286);
  c_w299    :  and2  port map (w297, w223, w299);
  c_w298    :  and2  port map (w299, w135, w298);
  c_w285    :  or2   port map (w286, w298, w285);

  
  c_sum0  :  id    port map (w1, sum0);
  c_sum1  :  id    port map (w4, sum1);
  c_sum2  :  id    port map (w9, sum2);
  c_sum3  :  id    port map (w16, sum3);
  c_sum4  :  id    port map (w23, sum4);
  c_sum5  :  id    port map (w33, sum5);
  c_sum6  :  id    port map (w40, sum6);
  c_sum7  :  id    port map (w50, sum7);
  c_sum8  :  id    port map (w57, sum8);
  c_sum9  :  id    port map (w70, sum9);
  c_sum10 :  id    port map (w77, sum10);
  c_sum11 :  id    port map (w87, sum11);
  c_sum12 :  id    port map (w94, sum12);
  c_sum13 :  id    port map (w107, sum13);
  c_sum14 :  id    port map (w114, sum14);
  c_sum15 :  id    port map (w124, sum15);
  c_sum16 :  id    port map (w131, sum16);
  c_sum17 :  id    port map (w147, sum17);
  c_sum18 :  id    port map (w154, sum18);
  c_sum19 :  id    port map (w164, sum19);
  c_sum20 :  id    port map (w171, sum20);
  c_sum21 :  id    port map (w184, sum21);
  c_sum22 :  id    port map (w191, sum22);
  c_sum23 :  id    port map (w201, sum23);
  c_sum24 :  id    port map (w208, sum24);
  c_sum25 :  id    port map (w224, sum25);
  c_sum26 :  id    port map (w231, sum26);
  c_sum27 :  id    port map (w241, sum27);
  c_sum28 :  id    port map (w248, sum28);
  c_sum29 :  id    port map (w261, sum29);
  c_sum30 :  id    port map (w268, sum30);
  c_sum31 :  id    port map (w278, sum31);
  c_cout    :  id    port map (w285, cout);
end structural;
