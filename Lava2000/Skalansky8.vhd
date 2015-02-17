library ieee;

use ieee.std_logic_1164.all;

entity
  Skalansky8
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
  ; b0 : in std_logic
  ; b1 : in std_logic
  ; b2 : in std_logic
  ; b3 : in std_logic
  ; b4 : in std_logic
  ; b5 : in std_logic
  ; b6 : in std_logic
  ; b7 : in std_logic

  
  ; sum0 : out std_logic
  ; sum1 : out std_logic
  ; sum2 : out std_logic
  ; sum3 : out std_logic
  ; sum4 : out std_logic
  ; sum5 : out std_logic
  ; sum6 : out std_logic
  ; sum7 : out std_logic
  ; cout : out std_logic
  );
end Skalansky8;

architecture
  structural
of
  Skalansky8
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
  c_w63     :  and2  port map (w58, w59, w63);
  c_w64     :  and2  port map (w57, w53, w64);
  c_w62     :  or2   port map (w63, w64, w62);
  c_w66     :  and2  port map (w57, w47, w66);
  c_w65     :  and2  port map (w66, w42, w65);
  c_w61     :  or2   port map (w62, w65, w61);
  c_w68     :  and2  port map (w66, w46, w68);
  c_w67     :  and2  port map (w68, w24, w67);
  c_w60     :  or2   port map (w61, w67, w60);

  
  c_sum0  :  id    port map (w1, sum0);
  c_sum1  :  id    port map (w4, sum1);
  c_sum2  :  id    port map (w9, sum2);
  c_sum3  :  id    port map (w16, sum3);
  c_sum4  :  id    port map (w23, sum4);
  c_sum5  :  id    port map (w33, sum5);
  c_sum6  :  id    port map (w40, sum6);
  c_sum7  :  id    port map (w50, sum7);
  c_cout    :  id    port map (w60, cout);
end structural;
