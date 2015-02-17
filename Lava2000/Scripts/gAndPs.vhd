library ieee;

use ieee.std_logic_1164.all;

entity
  gAndPs
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

  
  ; gAndP_0_1 : out std_logic
  ; gAndP_0_2 : out std_logic
  ; gAndP_1_1 : out std_logic
  ; gAndP_1_2 : out std_logic
  ; gAndP_2_1 : out std_logic
  ; gAndP_2_2 : out std_logic
  ; gAndP_3_1 : out std_logic
  ; gAndP_3_2 : out std_logic
  ; gAndP_4_1 : out std_logic
  ; gAndP_4_2 : out std_logic
  ; gAndP_5_1 : out std_logic
  ; gAndP_5_2 : out std_logic
  ; gAndP_6_1 : out std_logic
  ; gAndP_6_2 : out std_logic
  ; gAndP_7_1 : out std_logic
  ; gAndP_7_2 : out std_logic
  );
end gAndPs;

architecture
  structural
of
  gAndPs
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
begin
  c_w2      :  id    port map (a_0, w2);
  c_w3      :  id    port map (b_0, w3);
  c_w1      :  and2  port map (w2, w3, w1);
  c_w4      :  xor2  port map (w2, w3, w4);
  c_w6      :  id    port map (a_1, w6);
  c_w7      :  id    port map (b_1, w7);
  c_w5      :  and2  port map (w6, w7, w5);
  c_w8      :  xor2  port map (w6, w7, w8);
  c_w10     :  id    port map (a_2, w10);
  c_w11     :  id    port map (b_2, w11);
  c_w9      :  and2  port map (w10, w11, w9);
  c_w12     :  xor2  port map (w10, w11, w12);
  c_w14     :  id    port map (a_3, w14);
  c_w15     :  id    port map (b_3, w15);
  c_w13     :  and2  port map (w14, w15, w13);
  c_w16     :  xor2  port map (w14, w15, w16);
  c_w18     :  id    port map (a_4, w18);
  c_w19     :  id    port map (b_4, w19);
  c_w17     :  and2  port map (w18, w19, w17);
  c_w20     :  xor2  port map (w18, w19, w20);
  c_w22     :  id    port map (a_5, w22);
  c_w23     :  id    port map (b_5, w23);
  c_w21     :  and2  port map (w22, w23, w21);
  c_w24     :  xor2  port map (w22, w23, w24);
  c_w26     :  id    port map (a_6, w26);
  c_w27     :  id    port map (b_6, w27);
  c_w25     :  and2  port map (w26, w27, w25);
  c_w28     :  xor2  port map (w26, w27, w28);
  c_w30     :  id    port map (a_7, w30);
  c_w31     :  id    port map (b_7, w31);
  c_w29     :  and2  port map (w30, w31, w29);
  c_w32     :  xor2  port map (w30, w31, w32);

  
  c_gAndP_0_1 :  id    port map (w1, gAndP_0_1);
  c_gAndP_0_2 :  id    port map (w4, gAndP_0_2);
  c_gAndP_1_1 :  id    port map (w5, gAndP_1_1);
  c_gAndP_1_2 :  id    port map (w8, gAndP_1_2);
  c_gAndP_2_1 :  id    port map (w9, gAndP_2_1);
  c_gAndP_2_2 :  id    port map (w12, gAndP_2_2);
  c_gAndP_3_1 :  id    port map (w13, gAndP_3_1);
  c_gAndP_3_2 :  id    port map (w16, gAndP_3_2);
  c_gAndP_4_1 :  id    port map (w17, gAndP_4_1);
  c_gAndP_4_2 :  id    port map (w20, gAndP_4_2);
  c_gAndP_5_1 :  id    port map (w21, gAndP_5_1);
  c_gAndP_5_2 :  id    port map (w24, gAndP_5_2);
  c_gAndP_6_1 :  id    port map (w25, gAndP_6_1);
  c_gAndP_6_2 :  id    port map (w28, gAndP_6_2);
  c_gAndP_7_1 :  id    port map (w29, gAndP_7_1);
  c_gAndP_7_2 :  id    port map (w32, gAndP_7_2);
end structural;
