library ieee;

use ieee.std_logic_1164.all;

entity
  Skalansky16
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
  ; cout : out std_logic
  );
end Skalansky16;

architecture
  structural
of
  Skalansky16
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
begin
  c_w2      :  id    port map (a0, w2);
  c_w3      :  id    port map (b0, w3);
  c_w1      :  xor2  port map (w2, w3, w1);
  c_w5      :  and2  port map (w2, w3, w5);
  c_w7      :  id    port map (a1, w7);
  c_w8      :  id    port map (b1, w8);
  c_w6      :  xor2  port map (w7, w8, w6);
  c_w4      :  xor2  port map (w5, w6, w4);
  c_w11     :  and2  port map (w7, w8, w11);
  c_w12     :  and2  port map (w6, w5, w12);
  c_w10     :  or2   port map (w11, w12, w10);
  c_w14     :  id    port map (a2, w14);
  c_w15     :  id    port map (b2, w15);
  c_w13     :  xor2  port map (w14, w15, w13);
  c_w9      :  xor2  port map (w10, w13, w9);
  c_w18     :  and2  port map (w14, w15, w18);
  c_w19     :  and2  port map (w13, w10, w19);
  c_w17     :  or2   port map (w18, w19, w17);
  c_w21     :  id    port map (a3, w21);
  c_w22     :  id    port map (b3, w22);
  c_w20     :  xor2  port map (w21, w22, w20);
  c_w16     :  xor2  port map (w17, w20, w16);
  c_w26     :  and2  port map (w21, w22, w26);
  c_w27     :  and2  port map (w20, w18, w27);
  c_w25     :  or2   port map (w26, w27, w25);
  c_w29     :  and2  port map (w20, w13, w29);
  c_w28     :  and2  port map (w29, w10, w28);
  c_w24     :  or2   port map (w25, w28, w24);
  c_w31     :  id    port map (a4, w31);
  c_w32     :  id    port map (b4, w32);
  c_w30     :  xor2  port map (w31, w32, w30);
  c_w23     :  xor2  port map (w24, w30, w23);
  c_w35     :  and2  port map (w31, w32, w35);
  c_w36     :  and2  port map (w30, w24, w36);
  c_w34     :  or2   port map (w35, w36, w34);
  c_w38     :  id    port map (a5, w38);
  c_w39     :  id    port map (b5, w39);
  c_w37     :  xor2  port map (w38, w39, w37);
  c_w33     :  xor2  port map (w34, w37, w33);
  c_w43     :  and2  port map (w38, w39, w43);
  c_w44     :  and2  port map (w37, w35, w44);
  c_w42     :  or2   port map (w43, w44, w42);
  c_w46     :  and2  port map (w37, w30, w46);
  c_w45     :  and2  port map (w46, w24, w45);
  c_w41     :  or2   port map (w42, w45, w41);
  c_w48     :  id    port map (a6, w48);
  c_w49     :  id    port map (b6, w49);
  c_w47     :  xor2  port map (w48, w49, w47);
  c_w40     :  xor2  port map (w41, w47, w40);
  c_w53     :  and2  port map (w48, w49, w53);
  c_w54     :  and2  port map (w47, w42, w54);
  c_w52     :  or2   port map (w53, w54, w52);
  c_w56     :  and2  port map (w47, w46, w56);
  c_w55     :  and2  port map (w56, w24, w55);
  c_w51     :  or2   port map (w52, w55, w51);
  c_w58     :  id    port map (a7, w58);
  c_w59     :  id    port map (b7, w59);
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
  c_w71     :  id    port map (a8, w71);
  c_w72     :  id    port map (b8, w72);
  c_w70     :  xor2  port map (w71, w72, w70);
  c_w60     :  xor2  port map (w61, w70, w60);
  c_w75     :  and2  port map (w71, w72, w75);
  c_w76     :  and2  port map (w70, w61, w76);
  c_w74     :  or2   port map (w75, w76, w74);
  c_w78     :  id    port map (a9, w78);
  c_w79     :  id    port map (b9, w79);
  c_w77     :  xor2  port map (w78, w79, w77);
  c_w73     :  xor2  port map (w74, w77, w73);
  c_w83     :  and2  port map (w78, w79, w83);
  c_w84     :  and2  port map (w77, w75, w84);
  c_w82     :  or2   port map (w83, w84, w82);
  c_w86     :  and2  port map (w77, w70, w86);
  c_w85     :  and2  port map (w86, w61, w85);
  c_w81     :  or2   port map (w82, w85, w81);
  c_w88     :  id    port map (a10, w88);
  c_w89     :  id    port map (b10, w89);
  c_w87     :  xor2  port map (w88, w89, w87);
  c_w80     :  xor2  port map (w81, w87, w80);
  c_w93     :  and2  port map (w88, w89, w93);
  c_w94     :  and2  port map (w87, w82, w94);
  c_w92     :  or2   port map (w93, w94, w92);
  c_w96     :  and2  port map (w87, w86, w96);
  c_w95     :  and2  port map (w96, w61, w95);
  c_w91     :  or2   port map (w92, w95, w91);
  c_w98     :  id    port map (a11, w98);
  c_w99     :  id    port map (b11, w99);
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
  c_w111    :  id    port map (a12, w111);
  c_w112    :  id    port map (b12, w112);
  c_w110    :  xor2  port map (w111, w112, w110);
  c_w100    :  xor2  port map (w101, w110, w100);
  c_w116    :  and2  port map (w111, w112, w116);
  c_w117    :  and2  port map (w110, w102, w117);
  c_w115    :  or2   port map (w116, w117, w115);
  c_w119    :  and2  port map (w110, w109, w119);
  c_w118    :  and2  port map (w119, w61, w118);
  c_w114    :  or2   port map (w115, w118, w114);
  c_w121    :  id    port map (a13, w121);
  c_w122    :  id    port map (b13, w122);
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
  c_w134    :  id    port map (a14, w134);
  c_w135    :  id    port map (b14, w135);
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
  c_w147    :  id    port map (a15, w147);
  c_w148    :  id    port map (b15, w148);
  c_w146    :  xor2  port map (w147, w148, w146);
  c_w136    :  xor2  port map (w137, w146, w136);
  c_w153    :  and2  port map (w147, w148, w153);
  c_w154    :  and2  port map (w146, w140, w154);
  c_w152    :  or2   port map (w153, w154, w152);
  c_w156    :  and2  port map (w146, w133, w156);
  c_w155    :  and2  port map (w156, w126, w155);
  c_w151    :  or2   port map (w152, w155, w151);
  c_w158    :  and2  port map (w156, w130, w158);
  c_w157    :  and2  port map (w158, w102, w157);
  c_w150    :  or2   port map (w151, w157, w150);
  c_w160    :  and2  port map (w158, w109, w160);
  c_w159    :  and2  port map (w160, w61, w159);
  c_w149    :  or2   port map (w150, w159, w149);

  
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
  c_cout    :  id    port map (w149, cout);
end structural;
