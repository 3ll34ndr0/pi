library ieee;

use ieee.std_logic_1164.all;

entity
  sums
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
end sums;

architecture
  structural
of
  sums
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
begin
  c_w1      :  wire  port map (a_0, w1);
  c_w3      :  wire  port map (a_1, w3);
  c_w4      :  wire  port map (b_0, w4);
  c_w2      :  xor2  port map (w3, w4, w2);
  c_w6      :  wire  port map (a_2, w6);
  c_w7      :  wire  port map (b_1, w7);
  c_w5      :  xor2  port map (w6, w7, w5);
  c_w9      :  wire  port map (a_3, w9);
  c_w10     :  wire  port map (b_2, w10);
  c_w8      :  xor2  port map (w9, w10, w8);
  c_w12     :  wire  port map (a_4, w12);
  c_w13     :  wire  port map (b_3, w13);
  c_w11     :  xor2  port map (w12, w13, w11);
  c_w15     :  wire  port map (a_5, w15);
  c_w16     :  wire  port map (b_4, w16);
  c_w14     :  xor2  port map (w15, w16, w14);
  c_w18     :  wire  port map (a_6, w18);
  c_w19     :  wire  port map (b_5, w19);
  c_w17     :  xor2  port map (w18, w19, w17);
  c_w21     :  wire  port map (a_7, w21);
  c_w22     :  wire  port map (b_6, w22);
  c_w20     :  xor2  port map (w21, w22, w20);
  c_w23     :  wire  port map (b_7, w23);

  
  c_sum_0   :  wire  port map (w1, sum_0);
  c_sum_1   :  wire  port map (w2, sum_1);
  c_sum_2   :  wire  port map (w5, sum_2);
  c_sum_3   :  wire  port map (w8, sum_3);
  c_sum_4   :  wire  port map (w11, sum_4);
  c_sum_5   :  wire  port map (w14, sum_5);
  c_sum_6   :  wire  port map (w17, sum_6);
  c_sum_7   :  wire  port map (w20, sum_7);
  c_cout    :  wire  port map (w23, cout);
end structural;
