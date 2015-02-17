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
-- deleted   c_w1      :  wire  port map (a_0, sum_0);
-- deleted   c_w3      :  wire  port map (a_1, a_1);
-- deleted   c_w4      :  wire  port map (b_0, b_0);
  c_w2      :  xor2  port map (a_1, b_0, sum_1);
-- deleted   c_w6      :  wire  port map (a_2, a_2);
-- deleted   c_w7      :  wire  port map (b_1, b_1);
  c_w5      :  xor2  port map (a_2, b_1, sum_2);
-- deleted   c_w9      :  wire  port map (a_3, a_3);
-- deleted   c_w10     :  wire  port map (b_2, b_2);
  c_w8      :  xor2  port map (a_3, b_2, sum_3);
-- deleted   c_w12     :  wire  port map (a_4, a_4);
-- deleted   c_w13     :  wire  port map (b_3, b_3);
  c_w11     :  xor2  port map (a_4, b_3, sum_4);
-- deleted   c_w15     :  wire  port map (a_5, a_5);
-- deleted   c_w16     :  wire  port map (b_4, b_4);
  c_w14     :  xor2  port map (a_5, b_4, sum_5);
-- deleted   c_w18     :  wire  port map (a_6, a_6);
-- deleted   c_w19     :  wire  port map (b_5, b_5);
  c_w17     :  xor2  port map (a_6, b_5, sum_6);
-- deleted   c_w21     :  wire  port map (a_7, a_7);
-- deleted   c_w22     :  wire  port map (b_6, b_6);
  c_w20     :  xor2  port map (a_7, b_6, sum_7);
-- deleted   c_w23     :  wire  port map (b_7, cout);

  
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
