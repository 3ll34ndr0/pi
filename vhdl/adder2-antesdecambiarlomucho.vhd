-- Generated by Lava 2000

-- use work.all;
library IEEE;
use IEEE.std_logic_1164.all;

entity
  adder2
is
port
  -- clock
  ( clk : in std_logic

  -- inputs
  ; cin : in std_logic
  ; a : in std_logic
  ; b : in std_logic

  -- outputs
  ; sum_0 : out std_logic
  ; sum_1 : out std_logic
  ; cout : out std_logic
  );
end adder2;

architecture structural of adder2
is

component std_and2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;

 component std_nand2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component std_nor3
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component std_nor2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component std_nand3
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component std_inv
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component std_latch
      port( D, G : in std_logic;  Q : out std_logic);
   end component;



  signal w1 : std_logic;
  signal w2 : std_logic;
  signal w3 : std_logic;
  signal w4 : std_logic;
  signal w5 : std_logic;
  signal w6 : std_logic;
  signal w7 : std_logic;
  signal w8 : std_logic;
begin
  c_w2      : entity std_inv    port map (clk, cin, w2);
  c_w4      : entity std_inv    port map (clk, a, w4);
  c_w5      : entity std_inv    port map (clk, b, w5);
  c_w3      : entity std_nor2  port map (clk, w4, w5, w3);
  c_w1      : entity std_nor2  port map (clk, w2, w3, w1);
  c_w7      : entity std_nand2  port map (clk, w2, w3, w7);
  c_w8      : entity std_nand2  port map (clk, w4, w5, w8);
  c_w6      : entity std_nor2  port map (clk, w7, w8, w6);

  -- naming outputs
  c_sum_0   : entity std_inv    port map (clk, w1, sum_0);
  c_sum_1   : entity std_id    port map (clk, w6, sum_1);
end structural; 