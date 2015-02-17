library ieee;

use ieee.std_logic_1164.all;

entity
  BrentKungFastAdder
is
port
  ( 
 
    
    a_0 : in std_logic
  ; a_1 : in std_logic
  ; a_2 : in std_logic
  ; a_3 : in std_logic
  ; a_4 : in std_logic
  ; a_5 : in std_logic
  ; a_6 : in std_logic
  ; a_7 : in std_logic
  ; b_0 : in std_logic
  ; b_1 : in std_logic
  ; b_2 : in std_logic
  ; b_3 : in std_logic
  ; b_4 : in std_logic
  ; b_5 : in std_logic
  ; b_6 : in std_logic
  ; b_7 : in std_logic

  
  ; sum_0 : out std_logic
  ; sum_1 : out std_logic
  ; sum_2 : out std_logic
  ; sum_3 : out std_logic
  ; sum_4 : out std_logic
  ; sum_5 : out std_logic
  ; sum_6 : out std_logic
  ; sum_7 : out std_logic
  ; cout : out std_logic
  );
end BrentKungFastAdder;

architecture
  structural
of
  BrentKungFastAdder
is
 --agregado a mano oo
component and2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component or2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component xor2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component std_wire
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
begin
-- deleted   c_w2      :  wire  port map (a_0, a_0);
-- deleted   c_w3      :  wire  port map (b_0, b_0);
  c_w1      :  xor2  port map (a_0, b_0, sum_0);
-- deleted   c_w6      :  wire  port map (a_1, a_1);
-- deleted   c_w7      :  wire  port map (b_1, b_1);
  c_w5      :  xor2  port map (a_1, b_1, w5);
  c_w8      :  and2  port map (a_0, b_0, w8);
  c_w4      :  xor2  port map (w5, w8, sum_1);
-- deleted   c_w11     :  wire  port map (a_2, a_2);
-- deleted   c_w12     :  wire  port map (b_2, b_2);
  c_w10     :  xor2  port map (a_2, b_2, w10);
  c_w14     :  and2  port map (a_1, b_1, w14);
  c_w15     :  and2  port map (w5, w8, w15);
  c_w13     :  or2   port map (w14, w15, w13);
  c_w9      :  xor2  port map (w10, w13, sum_2);
-- deleted   c_w18     :  wire  port map (a_3, a_3);
-- deleted   c_w19     :  wire  port map (b_3, b_3);
  c_w17     :  xor2  port map (a_3, b_3, w17);
  c_w21     :  and2  port map (a_2, b_2, w21);
  c_w22     :  and2  port map (w10, w13, w22);
  c_w20     :  or2   port map (w21, w22, w20);
  c_w16     :  xor2  port map (w17, w20, sum_3);
-- deleted   c_w25     :  wire  port map (a_4, a_4);
-- deleted   c_w26     :  wire  port map (b_4, b_4);
  c_w24     :  xor2  port map (a_4, b_4, w24);
  c_w29     :  and2  port map (a_3, b_3, w29);
  c_w30     :  and2  port map (w17, w21, w30);
  c_w28     :  or2   port map (w29, w30, w28);
  c_w32     :  and2  port map (w17, w10, w32);
  c_w31     :  and2  port map (w32, w13, w31);
  c_w27     :  or2   port map (w28, w31, w27);
  c_w23     :  xor2  port map (w24, w27, sum_4);
-- deleted   c_w35     :  wire  port map (a_5, a_5);
-- deleted   c_w36     :  wire  port map (b_5, b_5);
  c_w34     :  xor2  port map (a_5, b_5, w34);
  c_w38     :  and2  port map (a_4, b_4, w38);
  c_w39     :  and2  port map (w24, w27, w39);
  c_w37     :  or2   port map (w38, w39, w37);
  c_w33     :  xor2  port map (w34, w37, sum_5);
-- deleted   c_w42     :  wire  port map (a_6, a_6);
-- deleted   c_w43     :  wire  port map (b_6, b_6);
  c_w41     :  xor2  port map (a_6, b_6, w41);
  c_w46     :  and2  port map (a_5, b_5, w46);
  c_w47     :  and2  port map (w34, w38, w47);
  c_w45     :  or2   port map (w46, w47, w45);
  c_w49     :  and2  port map (w34, w24, w49);
  c_w48     :  and2  port map (w49, w27, w48);
  c_w44     :  or2   port map (w45, w48, w44);
  c_w40     :  xor2  port map (w41, w44, sum_6);
-- deleted   c_w52     :  wire  port map (a_7, a_7);
-- deleted   c_w53     :  wire  port map (b_7, b_7);
  c_w51     :  xor2  port map (a_7, b_7, w51);
  c_w55     :  and2  port map (a_6, b_6, w55);
  c_w56     :  and2  port map (w41, w44, w56);
  c_w54     :  or2   port map (w55, w56, w54);
  c_w50     :  xor2  port map (w51, w54, sum_7);
  c_w60     :  and2  port map (a_7, b_7, w60);
  c_w61     :  and2  port map (w51, w55, w61);
  c_w59     :  or2   port map (w60, w61, w59);
  c_w63     :  and2  port map (w51, w41, w63);
  c_w62     :  and2  port map (w63, w45, w62);
  c_w58     :  or2   port map (w59, w62, w58);
  c_w65     :  and2  port map (w63, w49, w65);
  c_w64     :  and2  port map (w65, w27, w64);
  c_w57     :  or2   port map (w58, w64, cout);

  
-- deleted --  c_sum_0   :  wire  port map (sum_0, sum_0);
-- deleted --  c_sum_1   :  wire  port map (sum_1, sum_1);
-- deleted --  c_sum_2   :  wire  port map (sum_2, sum_2);
-- deleted --  c_sum_3   :  wire  port map (sum_3, sum_3);
-- deleted --  c_sum_4   :  wire  port map (sum_4, sum_4);
-- deleted --  c_sum_5   :  wire  port map (sum_5, sum_5);
-- deleted --  c_sum_6   :  wire  port map (sum_6, sum_6);
-- deleted --  c_sum_7   :  wire  port map (sum_7, sum_7);
-- deleted --  c_cout    :  wire  port map (cout, cout);
end structural;
