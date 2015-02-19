library ieee;

use ieee.std_logic_1164.all;

entity
  BrentKungFastAdder
is
port
  ( 
 
    
    a0 : in std_logic
  ; a1 : in std_logic
  ; a2 : in std_logic
  ; a3 : in std_logic
  ; b0 : in std_logic
  ; b1 : in std_logic
  ; b2 : in std_logic
  ; b3 : in std_logic

  
  ; sum0 : out std_logic
  ; sum1 : out std_logic
  ; sum2 : out std_logic
  ; sum3 : out std_logic
  ; cout : out std_logic
  );
end BrentKungFastAdder;

architecture
  structural
of
  BrentKungFastAdder
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
  c_w25     :  and2  port map (w18, w19, w25);
  c_w26     :  and2  port map (w17, w21, w26);
  c_w24     :  or2   port map (w25, w26, w24);
  c_w28     :  and2  port map (w17, w10, w28);
  c_w27     :  and2  port map (w28, w13, w27);
  c_w23     :  or2   port map (w24, w27, w23);

  
  c_sum0  :  id    port map (w1, sum0);
  c_sum1  :  id    port map (w4, sum1);
  c_sum2  :  id    port map (w9, sum2);
  c_sum3  :  id    port map (w16, sum3);
  c_cout    :  id    port map (w23, cout);
end structural;
