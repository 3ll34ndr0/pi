library ieee;

use ieee.std_logic_1164.all;

entity
  Skalansky32
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
end Skalansky32;

architecture
  structural
of
  Skalansky32
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
  signal w300 : std_logic;
  signal w301 : std_logic;
  signal w302 : std_logic;
  signal w303 : std_logic;
  signal w304 : std_logic;
  signal w305 : std_logic;
  signal w306 : std_logic;
  signal w307 : std_logic;
  signal w308 : std_logic;
  signal w309 : std_logic;
  signal w310 : std_logic;
  signal w311 : std_logic;
  signal w312 : std_logic;
  signal w313 : std_logic;
  signal w314 : std_logic;
  signal w315 : std_logic;
  signal w316 : std_logic;
  signal w317 : std_logic;
  signal w318 : std_logic;
  signal w319 : std_logic;
  signal w320 : std_logic;
  signal w321 : std_logic;
  signal w322 : std_logic;
  signal w323 : std_logic;
  signal w324 : std_logic;
  signal w325 : std_logic;
  signal w326 : std_logic;
  signal w327 : std_logic;
  signal w328 : std_logic;
  signal w329 : std_logic;
  signal w330 : std_logic;
  signal w331 : std_logic;
  signal w332 : std_logic;
  signal w333 : std_logic;
  signal w334 : std_logic;
  signal w335 : std_logic;
  signal w336 : std_logic;
  signal w337 : std_logic;
  signal w338 : std_logic;
  signal w339 : std_logic;
  signal w340 : std_logic;
  signal w341 : std_logic;
  signal w342 : std_logic;
  signal w343 : std_logic;
  signal w344 : std_logic;
  signal w345 : std_logic;
  signal w346 : std_logic;
  signal w347 : std_logic;
  signal w348 : std_logic;
  signal w349 : std_logic;
  signal w350 : std_logic;
  signal w351 : std_logic;
  signal w352 : std_logic;
  signal w353 : std_logic;
  signal w354 : std_logic;
  signal w355 : std_logic;
  signal w356 : std_logic;
  signal w357 : std_logic;
  signal w358 : std_logic;
  signal w359 : std_logic;
  signal w360 : std_logic;
  signal w361 : std_logic;
  signal w362 : std_logic;
  signal w363 : std_logic;
  signal w364 : std_logic;
  signal w365 : std_logic;
  signal w366 : std_logic;
  signal w367 : std_logic;
  signal w368 : std_logic;
begin
-- deleted   c_w2      :  id    port map (a0, w2);
-- deleted   c_w3      :  id    port map (b0, w3);
  c_w1      :  xor2  port map (w2, w3, w1);
  c_w5      :  and2  port map (w2, w3, w5);
-- deleted   c_w7      :  id    port map (a1, w7);
-- deleted   c_w8      :  id    port map (b1, w8);
  c_w6      :  xor2  port map (w7, w8, w6);
  c_w4      :  xor2  port map (w5, w6, w4);
  c_w11     :  and2  port map (w7, w8, w11);
  c_w12     :  and2  port map (w6, w5, w12);
  c_w10     :  or2   port map (w11, w12, w10);
-- deleted   c_w14     :  id    port map (a2, w14);
-- deleted   c_w15     :  id    port map (b2, w15);
  c_w13     :  xor2  port map (w14, w15, w13);
  c_w9      :  xor2  port map (w10, w13, w9);
  c_w18     :  and2  port map (w14, w15, w18);
  c_w19     :  and2  port map (w13, w10, w19);
  c_w17     :  or2   port map (w18, w19, w17);
-- deleted   c_w21     :  id    port map (a3, w21);
-- deleted   c_w22     :  id    port map (b3, w22);
  c_w20     :  xor2  port map (w21, w22, w20);
  c_w16     :  xor2  port map (w17, w20, w16);
  c_w26     :  and2  port map (w21, w22, w26);
  c_w27     :  and2  port map (w20, w18, w27);
  c_w25     :  or2   port map (w26, w27, w25);
  c_w29     :  and2  port map (w20, w13, w29);
  c_w28     :  and2  port map (w29, w10, w28);
  c_w24     :  or2   port map (w25, w28, w24);
-- deleted   c_w31     :  id    port map (a4, w31);
-- deleted   c_w32     :  id    port map (b4, w32);
  c_w30     :  xor2  port map (w31, w32, w30);
  c_w23     :  xor2  port map (w24, w30, w23);
  c_w35     :  and2  port map (w31, w32, w35);
  c_w36     :  and2  port map (w30, w24, w36);
  c_w34     :  or2   port map (w35, w36, w34);
-- deleted   c_w38     :  id    port map (a5, w38);
-- deleted   c_w39     :  id    port map (b5, w39);
  c_w37     :  xor2  port map (w38, w39, w37);
  c_w33     :  xor2  port map (w34, w37, w33);
  c_w43     :  and2  port map (w38, w39, w43);
  c_w44     :  and2  port map (w37, w35, w44);
  c_w42     :  or2   port map (w43, w44, w42);
  c_w46     :  and2  port map (w37, w30, w46);
  c_w45     :  and2  port map (w46, w24, w45);
  c_w41     :  or2   port map (w42, w45, w41);
-- deleted   c_w48     :  id    port map (a6, w48);
-- deleted   c_w49     :  id    port map (b6, w49);
  c_w47     :  xor2  port map (w48, w49, w47);
  c_w40     :  xor2  port map (w41, w47, w40);
  c_w53     :  and2  port map (w48, w49, w53);
  c_w54     :  and2  port map (w47, w42, w54);
  c_w52     :  or2   port map (w53, w54, w52);
  c_w56     :  and2  port map (w47, w46, w56);
  c_w55     :  and2  port map (w56, w24, w55);
  c_w51     :  or2   port map (w52, w55, w51);
-- deleted   c_w58     :  id    port map (a7, w58);
-- deleted   c_w59     :  id    port map (b7, w59);
  c_w57     :  xor2  port map (w58, w59, w57);
  c_w50     :  xor2  port map (w51, w57, w50);
  c_w64     :  and2  port map (w58, w59, w64);
  c_w65     :  and2  port map (w57, w53, w65);
  c_w63     :  or2   port map (w64, w65, w63);
  c_w67     :  and2  port map (w57, w47, w67);
  c_w66     :  and2  port map (w67, w42, w66);
  c_w62     :  or2   port map (w63, w66, w62);
  c_w69     :  and2  port map (w67, w46, w69);
  c_w68     :  and2  port map (w69, w24, w68);
  c_w61     :  or2   port map (w62, w68, w61);
-- deleted   c_w71     :  id    port map (a8, w71);
-- deleted   c_w72     :  id    port map (b8, w72);
  c_w70     :  xor2  port map (w71, w72, w70);
  c_w60     :  xor2  port map (w61, w70, w60);
  c_w75     :  and2  port map (w71, w72, w75);
  c_w76     :  and2  port map (w70, w61, w76);
  c_w74     :  or2   port map (w75, w76, w74);
-- deleted   c_w78     :  id    port map (a9, w78);
-- deleted   c_w79     :  id    port map (b9, w79);
  c_w77     :  xor2  port map (w78, w79, w77);
  c_w73     :  xor2  port map (w74, w77, w73);
  c_w83     :  and2  port map (w78, w79, w83);
  c_w84     :  and2  port map (w77, w75, w84);
  c_w82     :  or2   port map (w83, w84, w82);
  c_w86     :  and2  port map (w77, w70, w86);
  c_w85     :  and2  port map (w86, w61, w85);
  c_w81     :  or2   port map (w82, w85, w81);
-- deleted   c_w88     :  id    port map (a10, w88);
-- deleted   c_w89     :  id    port map (b10, w89);
  c_w87     :  xor2  port map (w88, w89, w87);
  c_w80     :  xor2  port map (w81, w87, w80);
  c_w93     :  and2  port map (w88, w89, w93);
  c_w94     :  and2  port map (w87, w82, w94);
  c_w92     :  or2   port map (w93, w94, w92);
  c_w96     :  and2  port map (w87, w86, w96);
  c_w95     :  and2  port map (w96, w61, w95);
  c_w91     :  or2   port map (w92, w95, w91);
-- deleted   c_w98     :  id    port map (a11, w98);
-- deleted   c_w99     :  id    port map (b11, w99);
  c_w97     :  xor2  port map (w98, w99, w97);
  c_w90     :  xor2  port map (w91, w97, w90);
  c_w104    :  and2  port map (w98, w99, w104);
  c_w105    :  and2  port map (w97, w93, w105);
  c_w103    :  or2   port map (w104, w105, w103);
  c_w107    :  and2  port map (w97, w87, w107);
  c_w106    :  and2  port map (w107, w82, w106);
  c_w102    :  or2   port map (w103, w106, w102);
  c_w109    :  and2  port map (w107, w86, w109);
  c_w108    :  and2  port map (w109, w61, w108);
  c_w101    :  or2   port map (w102, w108, w101);
-- deleted   c_w111    :  id    port map (a12, w111);
-- deleted   c_w112    :  id    port map (b12, w112);
  c_w110    :  xor2  port map (w111, w112, w110);
  c_w100    :  xor2  port map (w101, w110, w100);
  c_w116    :  and2  port map (w111, w112, w116);
  c_w117    :  and2  port map (w110, w102, w117);
  c_w115    :  or2   port map (w116, w117, w115);
  c_w119    :  and2  port map (w110, w109, w119);
  c_w118    :  and2  port map (w119, w61, w118);
  c_w114    :  or2   port map (w115, w118, w114);
-- deleted   c_w121    :  id    port map (a13, w121);
-- deleted   c_w122    :  id    port map (b13, w122);
  c_w120    :  xor2  port map (w121, w122, w120);
  c_w113    :  xor2  port map (w114, w120, w113);
  c_w127    :  and2  port map (w121, w122, w127);
  c_w128    :  and2  port map (w120, w116, w128);
  c_w126    :  or2   port map (w127, w128, w126);
  c_w130    :  and2  port map (w120, w110, w130);
  c_w129    :  and2  port map (w130, w102, w129);
  c_w125    :  or2   port map (w126, w129, w125);
  c_w132    :  and2  port map (w130, w109, w132);
  c_w131    :  and2  port map (w132, w61, w131);
  c_w124    :  or2   port map (w125, w131, w124);
-- deleted   c_w134    :  id    port map (a14, w134);
-- deleted   c_w135    :  id    port map (b14, w135);
  c_w133    :  xor2  port map (w134, w135, w133);
  c_w123    :  xor2  port map (w124, w133, w123);
  c_w140    :  and2  port map (w134, w135, w140);
  c_w141    :  and2  port map (w133, w126, w141);
  c_w139    :  or2   port map (w140, w141, w139);
  c_w143    :  and2  port map (w133, w130, w143);
  c_w142    :  and2  port map (w143, w102, w142);
  c_w138    :  or2   port map (w139, w142, w138);
  c_w145    :  and2  port map (w143, w109, w145);
  c_w144    :  and2  port map (w145, w61, w144);
  c_w137    :  or2   port map (w138, w144, w137);
-- deleted   c_w147    :  id    port map (a15, w147);
-- deleted   c_w148    :  id    port map (b15, w148);
  c_w146    :  xor2  port map (w147, w148, w146);
  c_w136    :  xor2  port map (w137, w146, w136);
  c_w154    :  and2  port map (w147, w148, w154);
  c_w155    :  and2  port map (w146, w140, w155);
  c_w153    :  or2   port map (w154, w155, w153);
  c_w157    :  and2  port map (w146, w133, w157);
  c_w156    :  and2  port map (w157, w126, w156);
  c_w152    :  or2   port map (w153, w156, w152);
  c_w159    :  and2  port map (w157, w130, w159);
  c_w158    :  and2  port map (w159, w102, w158);
  c_w151    :  or2   port map (w152, w158, w151);
  c_w161    :  and2  port map (w159, w109, w161);
  c_w160    :  and2  port map (w161, w61, w160);
  c_w150    :  or2   port map (w151, w160, w150);
-- deleted   c_w163    :  id    port map (a16, w163);
-- deleted   c_w164    :  id    port map (b16, w164);
  c_w162    :  xor2  port map (w163, w164, w162);
  c_w149    :  xor2  port map (w150, w162, w149);
  c_w167    :  and2  port map (w163, w164, w167);
  c_w168    :  and2  port map (w162, w150, w168);
  c_w166    :  or2   port map (w167, w168, w166);
-- deleted   c_w170    :  id    port map (a17, w170);
-- deleted   c_w171    :  id    port map (b17, w171);
  c_w169    :  xor2  port map (w170, w171, w169);
  c_w165    :  xor2  port map (w166, w169, w165);
  c_w175    :  and2  port map (w170, w171, w175);
  c_w176    :  and2  port map (w169, w167, w176);
  c_w174    :  or2   port map (w175, w176, w174);
  c_w178    :  and2  port map (w169, w162, w178);
  c_w177    :  and2  port map (w178, w150, w177);
  c_w173    :  or2   port map (w174, w177, w173);
-- deleted   c_w180    :  id    port map (a18, w180);
-- deleted   c_w181    :  id    port map (b18, w181);
  c_w179    :  xor2  port map (w180, w181, w179);
  c_w172    :  xor2  port map (w173, w179, w172);
  c_w185    :  and2  port map (w180, w181, w185);
  c_w186    :  and2  port map (w179, w174, w186);
  c_w184    :  or2   port map (w185, w186, w184);
  c_w188    :  and2  port map (w179, w178, w188);
  c_w187    :  and2  port map (w188, w150, w187);
  c_w183    :  or2   port map (w184, w187, w183);
-- deleted   c_w190    :  id    port map (a19, w190);
-- deleted   c_w191    :  id    port map (b19, w191);
  c_w189    :  xor2  port map (w190, w191, w189);
  c_w182    :  xor2  port map (w183, w189, w182);
  c_w196    :  and2  port map (w190, w191, w196);
  c_w197    :  and2  port map (w189, w185, w197);
  c_w195    :  or2   port map (w196, w197, w195);
  c_w199    :  and2  port map (w189, w179, w199);
  c_w198    :  and2  port map (w199, w174, w198);
  c_w194    :  or2   port map (w195, w198, w194);
  c_w201    :  and2  port map (w199, w178, w201);
  c_w200    :  and2  port map (w201, w150, w200);
  c_w193    :  or2   port map (w194, w200, w193);
-- deleted   c_w203    :  id    port map (a20, w203);
-- deleted   c_w204    :  id    port map (b20, w204);
  c_w202    :  xor2  port map (w203, w204, w202);
  c_w192    :  xor2  port map (w193, w202, w192);
  c_w208    :  and2  port map (w203, w204, w208);
  c_w209    :  and2  port map (w202, w194, w209);
  c_w207    :  or2   port map (w208, w209, w207);
  c_w211    :  and2  port map (w202, w201, w211);
  c_w210    :  and2  port map (w211, w150, w210);
  c_w206    :  or2   port map (w207, w210, w206);
-- deleted   c_w213    :  id    port map (a21, w213);
-- deleted   c_w214    :  id    port map (b21, w214);
  c_w212    :  xor2  port map (w213, w214, w212);
  c_w205    :  xor2  port map (w206, w212, w205);
  c_w219    :  and2  port map (w213, w214, w219);
  c_w220    :  and2  port map (w212, w208, w220);
  c_w218    :  or2   port map (w219, w220, w218);
  c_w222    :  and2  port map (w212, w202, w222);
  c_w221    :  and2  port map (w222, w194, w221);
  c_w217    :  or2   port map (w218, w221, w217);
  c_w224    :  and2  port map (w222, w201, w224);
  c_w223    :  and2  port map (w224, w150, w223);
  c_w216    :  or2   port map (w217, w223, w216);
-- deleted   c_w226    :  id    port map (a22, w226);
-- deleted   c_w227    :  id    port map (b22, w227);
  c_w225    :  xor2  port map (w226, w227, w225);
  c_w215    :  xor2  port map (w216, w225, w215);
  c_w232    :  and2  port map (w226, w227, w232);
  c_w233    :  and2  port map (w225, w218, w233);
  c_w231    :  or2   port map (w232, w233, w231);
  c_w235    :  and2  port map (w225, w222, w235);
  c_w234    :  and2  port map (w235, w194, w234);
  c_w230    :  or2   port map (w231, w234, w230);
  c_w237    :  and2  port map (w235, w201, w237);
  c_w236    :  and2  port map (w237, w150, w236);
  c_w229    :  or2   port map (w230, w236, w229);
-- deleted   c_w239    :  id    port map (a23, w239);
-- deleted   c_w240    :  id    port map (b23, w240);
  c_w238    :  xor2  port map (w239, w240, w238);
  c_w228    :  xor2  port map (w229, w238, w228);
  c_w246    :  and2  port map (w239, w240, w246);
  c_w247    :  and2  port map (w238, w232, w247);
  c_w245    :  or2   port map (w246, w247, w245);
  c_w249    :  and2  port map (w238, w225, w249);
  c_w248    :  and2  port map (w249, w218, w248);
  c_w244    :  or2   port map (w245, w248, w244);
  c_w251    :  and2  port map (w249, w222, w251);
  c_w250    :  and2  port map (w251, w194, w250);
  c_w243    :  or2   port map (w244, w250, w243);
  c_w253    :  and2  port map (w251, w201, w253);
  c_w252    :  and2  port map (w253, w150, w252);
  c_w242    :  or2   port map (w243, w252, w242);
-- deleted   c_w255    :  id    port map (a24, w255);
-- deleted   c_w256    :  id    port map (b24, w256);
  c_w254    :  xor2  port map (w255, w256, w254);
  c_w241    :  xor2  port map (w242, w254, w241);
  c_w260    :  and2  port map (w255, w256, w260);
  c_w261    :  and2  port map (w254, w243, w261);
  c_w259    :  or2   port map (w260, w261, w259);
  c_w263    :  and2  port map (w254, w253, w263);
  c_w262    :  and2  port map (w263, w150, w262);
  c_w258    :  or2   port map (w259, w262, w258);
-- deleted   c_w265    :  id    port map (a25, w265);
-- deleted   c_w266    :  id    port map (b25, w266);
  c_w264    :  xor2  port map (w265, w266, w264);
  c_w257    :  xor2  port map (w258, w264, w257);
  c_w271    :  and2  port map (w265, w266, w271);
  c_w272    :  and2  port map (w264, w260, w272);
  c_w270    :  or2   port map (w271, w272, w270);
  c_w274    :  and2  port map (w264, w254, w274);
  c_w273    :  and2  port map (w274, w243, w273);
  c_w269    :  or2   port map (w270, w273, w269);
  c_w276    :  and2  port map (w274, w253, w276);
  c_w275    :  and2  port map (w276, w150, w275);
  c_w268    :  or2   port map (w269, w275, w268);
-- deleted   c_w278    :  id    port map (a26, w278);
-- deleted   c_w279    :  id    port map (b26, w279);
  c_w277    :  xor2  port map (w278, w279, w277);
  c_w267    :  xor2  port map (w268, w277, w267);
  c_w284    :  and2  port map (w278, w279, w284);
  c_w285    :  and2  port map (w277, w270, w285);
  c_w283    :  or2   port map (w284, w285, w283);
  c_w287    :  and2  port map (w277, w274, w287);
  c_w286    :  and2  port map (w287, w243, w286);
  c_w282    :  or2   port map (w283, w286, w282);
  c_w289    :  and2  port map (w287, w253, w289);
  c_w288    :  and2  port map (w289, w150, w288);
  c_w281    :  or2   port map (w282, w288, w281);
-- deleted   c_w291    :  id    port map (a27, w291);
-- deleted   c_w292    :  id    port map (b27, w292);
  c_w290    :  xor2  port map (w291, w292, w290);
  c_w280    :  xor2  port map (w281, w290, w280);
  c_w298    :  and2  port map (w291, w292, w298);
  c_w299    :  and2  port map (w290, w284, w299);
  c_w297    :  or2   port map (w298, w299, w297);
  c_w301    :  and2  port map (w290, w277, w301);
  c_w300    :  and2  port map (w301, w270, w300);
  c_w296    :  or2   port map (w297, w300, w296);
  c_w303    :  and2  port map (w301, w274, w303);
  c_w302    :  and2  port map (w303, w243, w302);
  c_w295    :  or2   port map (w296, w302, w295);
  c_w305    :  and2  port map (w303, w253, w305);
  c_w304    :  and2  port map (w305, w150, w304);
  c_w294    :  or2   port map (w295, w304, w294);
-- deleted   c_w307    :  id    port map (a28, w307);
-- deleted   c_w308    :  id    port map (b28, w308);
  c_w306    :  xor2  port map (w307, w308, w306);
  c_w293    :  xor2  port map (w294, w306, w293);
  c_w313    :  and2  port map (w307, w308, w313);
  c_w314    :  and2  port map (w306, w296, w314);
  c_w312    :  or2   port map (w313, w314, w312);
  c_w316    :  and2  port map (w306, w303, w316);
  c_w315    :  and2  port map (w316, w243, w315);
  c_w311    :  or2   port map (w312, w315, w311);
  c_w318    :  and2  port map (w316, w253, w318);
  c_w317    :  and2  port map (w318, w150, w317);
  c_w310    :  or2   port map (w311, w317, w310);
-- deleted   c_w320    :  id    port map (a29, w320);
-- deleted   c_w321    :  id    port map (b29, w321);
  c_w319    :  xor2  port map (w320, w321, w319);
  c_w309    :  xor2  port map (w310, w319, w309);
  c_w327    :  and2  port map (w320, w321, w327);
  c_w328    :  and2  port map (w319, w313, w328);
  c_w326    :  or2   port map (w327, w328, w326);
  c_w330    :  and2  port map (w319, w306, w330);
  c_w329    :  and2  port map (w330, w296, w329);
  c_w325    :  or2   port map (w326, w329, w325);
  c_w332    :  and2  port map (w330, w303, w332);
  c_w331    :  and2  port map (w332, w243, w331);
  c_w324    :  or2   port map (w325, w331, w324);
  c_w334    :  and2  port map (w332, w253, w334);
  c_w333    :  and2  port map (w334, w150, w333);
  c_w323    :  or2   port map (w324, w333, w323);
-- deleted   c_w336    :  id    port map (a30, w336);
-- deleted   c_w337    :  id    port map (b30, w337);
  c_w335    :  xor2  port map (w336, w337, w335);
  c_w322    :  xor2  port map (w323, w335, w322);
  c_w343    :  and2  port map (w336, w337, w343);
  c_w344    :  and2  port map (w335, w326, w344);
  c_w342    :  or2   port map (w343, w344, w342);
  c_w346    :  and2  port map (w335, w330, w346);
  c_w345    :  and2  port map (w346, w296, w345);
  c_w341    :  or2   port map (w342, w345, w341);
  c_w348    :  and2  port map (w346, w303, w348);
  c_w347    :  and2  port map (w348, w243, w347);
  c_w340    :  or2   port map (w341, w347, w340);
  c_w350    :  and2  port map (w348, w253, w350);
  c_w349    :  and2  port map (w350, w150, w349);
  c_w339    :  or2   port map (w340, w349, w339);
-- deleted   c_w352    :  id    port map (a31, w352);
-- deleted   c_w353    :  id    port map (b31, w353);
  c_w351    :  xor2  port map (w352, w353, w351);
  c_w338    :  xor2  port map (w339, w351, w338);
  c_w359    :  and2  port map (w352, w353, w359);
  c_w360    :  and2  port map (w351, w343, w360);
  c_w358    :  or2   port map (w359, w360, w358);
  c_w362    :  and2  port map (w351, w335, w362);
  c_w361    :  and2  port map (w362, w326, w361);
  c_w357    :  or2   port map (w358, w361, w357);
  c_w364    :  and2  port map (w362, w330, w364);
  c_w363    :  and2  port map (w364, w296, w363);
  c_w356    :  or2   port map (w357, w363, w356);
  c_w366    :  and2  port map (w364, w303, w366);
  c_w365    :  and2  port map (w366, w243, w365);
  c_w355    :  or2   port map (w356, w365, w355);
  c_w368    :  and2  port map (w366, w253, w368);
  c_w367    :  and2  port map (w368, w150, w367);
  c_w354    :  or2   port map (w355, w367, w354);

  
  c_sum0  :  id    port map (w1, sum0);
  c_sum1  :  id    port map (w4, sum1);
  c_sum2  :  id    port map (w9, sum2);
  c_sum3  :  id    port map (w16, sum3);
  c_sum4  :  id    port map (w23, sum4);
  c_sum5  :  id    port map (w33, sum5);
  c_sum6  :  id    port map (w40, sum6);
  c_sum7  :  id    port map (w50, sum7);
  c_sum8  :  id    port map (w60, sum8);
  c_sum9  :  id    port map (w73, sum9);
  c_sum10 :  id    port map (w80, sum10);
  c_sum11 :  id    port map (w90, sum11);
  c_sum12 :  id    port map (w100, sum12);
  c_sum13 :  id    port map (w113, sum13);
  c_sum14 :  id    port map (w123, sum14);
  c_sum15 :  id    port map (w136, sum15);
  c_sum16 :  id    port map (w149, sum16);
  c_sum17 :  id    port map (w165, sum17);
  c_sum18 :  id    port map (w172, sum18);
  c_sum19 :  id    port map (w182, sum19);
  c_sum20 :  id    port map (w192, sum20);
  c_sum21 :  id    port map (w205, sum21);
  c_sum22 :  id    port map (w215, sum22);
  c_sum23 :  id    port map (w228, sum23);
  c_sum24 :  id    port map (w241, sum24);
  c_sum25 :  id    port map (w257, sum25);
  c_sum26 :  id    port map (w267, sum26);
  c_sum27 :  id    port map (w280, sum27);
  c_sum28 :  id    port map (w293, sum28);
  c_sum29 :  id    port map (w309, sum29);
  c_sum30 :  id    port map (w322, sum30);
  c_sum31 :  id    port map (w338, sum31);
-- deleted --  c_cout    :  id    port map (w354, cout);
end structural;
