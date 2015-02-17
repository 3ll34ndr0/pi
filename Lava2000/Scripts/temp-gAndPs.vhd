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
-- deleted   c_w2      :  id    port map (a_0, a_0);
-- deleted   c_w3      :  id    port map (b_0, b_0);
  c_w1      :  and2  port map (a_0, b_0, gAndP_0_1);
  c_w4      :  xor2  port map (a_0, b_0, gAndP_0_2);
-- deleted   c_w6      :  id    port map (a_1, a_1);
-- deleted   c_w7      :  id    port map (b_1, b_1);
  c_w5      :  and2  port map (a_1, b_1, gAndP_1_1);
  c_w8      :  xor2  port map (a_1, b_1, gAndP_1_2);
-- deleted   c_w10     :  id    port map (a_2, a_2);
-- deleted   c_w11     :  id    port map (b_2, b_2);
  c_w9      :  and2  port map (a_2, b_2, gAndP_2_1);
  c_w12     :  xor2  port map (a_2, b_2, gAndP_2_2);
-- deleted   c_w14     :  id    port map (a_3, a_3);
-- deleted   c_w15     :  id    port map (b_3, b_3);
  c_w13     :  and2  port map (a_3, b_3, gAndP_3_1);
  c_w16     :  xor2  port map (a_3, b_3, gAndP_3_2);
-- deleted   c_w18     :  id    port map (a_4, a_4);
-- deleted   c_w19     :  id    port map (b_4, b_4);
  c_w17     :  and2  port map (a_4, b_4, gAndP_4_1);
  c_w20     :  xor2  port map (a_4, b_4, gAndP_4_2);
-- deleted   c_w22     :  id    port map (a_5, a_5);
-- deleted   c_w23     :  id    port map (b_5, b_5);
  c_w21     :  and2  port map (a_5, b_5, gAndP_5_1);
  c_w24     :  xor2  port map (a_5, b_5, gAndP_5_2);
-- deleted   c_w26     :  id    port map (a_6, a_6);
-- deleted   c_w27     :  id    port map (b_6, b_6);
  c_w25     :  and2  port map (a_6, b_6, gAndP_6_1);
  c_w28     :  xor2  port map (a_6, b_6, gAndP_6_2);
-- deleted   c_w30     :  id    port map (a_7, a_7);
-- deleted   c_w31     :  id    port map (b_7, b_7);
  c_w29     :  and2  port map (a_7, b_7, gAndP_7_1);
  c_w32     :  xor2  port map (a_7, b_7, gAndP_7_2);

  
-- deleted --  c_gAndP_0_1 :  id    port map (gAndP_0_1, gAndP_0_1);
-- deleted --  c_gAndP_0_2 :  id    port map (gAndP_0_2, gAndP_0_2);
-- deleted --  c_gAndP_1_1 :  id    port map (gAndP_1_1, gAndP_1_1);
-- deleted --  c_gAndP_1_2 :  id    port map (gAndP_1_2, gAndP_1_2);
-- deleted --  c_gAndP_2_1 :  id    port map (gAndP_2_1, gAndP_2_1);
-- deleted --  c_gAndP_2_2 :  id    port map (gAndP_2_2, gAndP_2_2);
-- deleted --  c_gAndP_3_1 :  id    port map (gAndP_3_1, gAndP_3_1);
-- deleted --  c_gAndP_3_2 :  id    port map (gAndP_3_2, gAndP_3_2);
-- deleted --  c_gAndP_4_1 :  id    port map (gAndP_4_1, gAndP_4_1);
-- deleted --  c_gAndP_4_2 :  id    port map (gAndP_4_2, gAndP_4_2);
-- deleted --  c_gAndP_5_1 :  id    port map (gAndP_5_1, gAndP_5_1);
-- deleted --  c_gAndP_5_2 :  id    port map (gAndP_5_2, gAndP_5_2);
-- deleted --  c_gAndP_6_1 :  id    port map (gAndP_6_1, gAndP_6_1);
-- deleted --  c_gAndP_6_2 :  id    port map (gAndP_6_2, gAndP_6_2);
-- deleted --  c_gAndP_7_1 :  id    port map (gAndP_7_1, gAndP_7_1);
-- deleted --  c_gAndP_7_2 :  id    port map (gAndP_7_2, gAndP_7_2);
end structural;
