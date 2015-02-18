library ieee;

use ieee.std_logic_1164.all;

entity
  adderNoClk
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
  ; b[0] : in std_logic
  ; b[1] : in std_logic
  ; b[2] : in std_logic
  ; b[3] : in std_logic
  ; b[4] : in std_logic
  ; b[5] : in std_logic
  ; b[6] : in std_logic
  ; b[7] : in std_logic

  
  ; sum[0] : out std_logic
  ; sum[1] : out std_logic
  ; sum[2] : out std_logic
  ; sum[3] : out std_logic
  ; sum[4] : out std_logic
  ; sum[5] : out std_logic
  ; sum[6] : out std_logic
  ; sum[7] : out std_logic
  ; cout : out std_logic
  );
end adderNoClk;

architecture
  structural
of
  adderNoClk
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
begin
  c_w2      :  id    port map (cin, w2);
  c_w4      :  id    port map (a[0], w4);
  c_w5      :  id    port map (b[0], w5);
  c_w3      :  xor2  port map (w4, w5, w3);
  c_w1      :  xor2  port map (w2, w3, w1);
  c_w8      :  and2  port map (w2, w3, w8);
  c_w9      :  and2  port map (w4, w5, w9);
  c_w7      :  or2   port map (w8, w9, w7);
  c_w11     :  id    port map (a[1], w11);
  c_w12     :  id    port map (b[1], w12);
  c_w10     :  xor2  port map (w11, w12, w10);
  c_w6      :  xor2  port map (w7, w10, w6);
  c_w15     :  and2  port map (w7, w10, w15);
  c_w16     :  and2  port map (w11, w12, w16);
  c_w14     :  or2   port map (w15, w16, w14);
  c_w18     :  id    port map (a[2], w18);
  c_w19     :  id    port map (b[2], w19);
  c_w17     :  xor2  port map (w18, w19, w17);
  c_w13     :  xor2  port map (w14, w17, w13);
  c_w22     :  and2  port map (w14, w17, w22);
  c_w23     :  and2  port map (w18, w19, w23);
  c_w21     :  or2   port map (w22, w23, w21);
  c_w25     :  id    port map (a[3], w25);
  c_w26     :  id    port map (b[3], w26);
  c_w24     :  xor2  port map (w25, w26, w24);
  c_w20     :  xor2  port map (w21, w24, w20);
  c_w29     :  and2  port map (w21, w24, w29);
  c_w30     :  and2  port map (w25, w26, w30);
  c_w28     :  or2   port map (w29, w30, w28);
  c_w32     :  id    port map (a[4], w32);
  c_w33     :  id    port map (b[4], w33);
  c_w31     :  xor2  port map (w32, w33, w31);
  c_w27     :  xor2  port map (w28, w31, w27);
  c_w36     :  and2  port map (w28, w31, w36);
  c_w37     :  and2  port map (w32, w33, w37);
  c_w35     :  or2   port map (w36, w37, w35);
  c_w39     :  id    port map (a[5], w39);
  c_w40     :  id    port map (b[5], w40);
  c_w38     :  xor2  port map (w39, w40, w38);
  c_w34     :  xor2  port map (w35, w38, w34);
  c_w43     :  and2  port map (w35, w38, w43);
  c_w44     :  and2  port map (w39, w40, w44);
  c_w42     :  or2   port map (w43, w44, w42);
  c_w46     :  id    port map (a[6], w46);
  c_w47     :  id    port map (b[6], w47);
  c_w45     :  xor2  port map (w46, w47, w45);
  c_w41     :  xor2  port map (w42, w45, w41);
  c_w50     :  and2  port map (w42, w45, w50);
  c_w51     :  and2  port map (w46, w47, w51);
  c_w49     :  or2   port map (w50, w51, w49);
  c_w53     :  id    port map (a[7], w53);
  c_w54     :  id    port map (b[7], w54);
  c_w52     :  xor2  port map (w53, w54, w52);
  c_w48     :  xor2  port map (w49, w52, w48);
  c_w56     :  and2  port map (w49, w52, w56);
  c_w57     :  and2  port map (w53, w54, w57);
  c_w55     :  or2   port map (w56, w57, w55);

  
  c_sum[0]  :  id    port map (w1, sum[0]);
  c_sum[1]  :  id    port map (w6, sum[1]);
  c_sum[2]  :  id    port map (w13, sum[2]);
  c_sum[3]  :  id    port map (w20, sum[3]);
  c_sum[4]  :  id    port map (w27, sum[4]);
  c_sum[5]  :  id    port map (w34, sum[5]);
  c_sum[6]  :  id    port map (w41, sum[6]);
  c_sum[7]  :  id    port map (w48, sum[7]);
  c_cout    :  id    port map (w55, cout);
end structural;
