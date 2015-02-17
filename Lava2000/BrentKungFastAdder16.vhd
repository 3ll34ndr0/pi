library ieee;

use ieee.std_logic_1164.all;

entity
  BrentKungFastAdder16
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
end BrentKungFastAdder16;

architecture
  structural
of
  BrentKungFastAdder16
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
  c_w135    :  and2  port map (w126, w127, w135);
  c_w136    :  and2  port map (w125, w129, w136);
  c_w134    :  or2   port map (w135, w136, w134);
  c_w138    :  and2  port map (w125, w115, w138);
  c_w137    :  and2  port map (w138, w119, w137);
  c_w133    :  or2   port map (w134, w137, w133);
  c_w140    :  and2  port map (w138, w123, w140);
  c_w139    :  and2  port map (w140, w99, w139);
  c_w132    :  or2   port map (w133, w139, w132);
  c_w142    :  and2  port map (w140, w106, w142);
  c_w141    :  and2  port map (w142, w61, w141);
  c_w131    :  or2   port map (w132, w141, w131);

  
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
  c_cout    :  id    port map (w131, cout);
end structural;
