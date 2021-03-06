-- Generated by Lava 2000
-- Modified by hand to comply with Quisc Sillicon Compiler

library IEEE;
use IEEE.std_logic_1164.all;

entity
  fullAddNewie
is
port
  ( 
   cin : in std_logic
  ; a : in std_logic
  ; b : in std_logic

  ; sum : out std_logic
  ; cout : out std_logic
  );
end fullAddNewie;

architecture
  structural
of
  fullAddNewie
is

--agregado a mano
component std_and2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;

component std_xor2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;

   component std_id
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
begin
  c_w2      : std_id  port map (cin, w2);
  c_w4      : std_id  port map (a, w4);
  c_w5      : std_id  port map (b, w5);
  c_w3      : std_xor2  port map (w4, w5, w3);
  c_w1      : std_xor2  port map (w2, w3, w1);
  c_w7      : std_and2  port map (w2, w3, w7);
  c_w8      : std_and2  port map (w4, w5, w8);
  c_w6      : std_xor2  port map (w7, w8, w6);
  
  c_sum     : std_id  port map (w1, sum);
  c_cout    : std_id  port map (w6, cout);
end structural;
