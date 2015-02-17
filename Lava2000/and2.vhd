library ieee;

use ieee.std_logic_1164.all;

entity
  and2
is
port
  ( 
 
    
    a : in std_logic
  ; b : in std_logic

  
  ; y : out std_logic
  );
end and2;

architecture
  structural
of
  and2
is
 --agregado a mano
component std_and2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component std_or2
port( A, B : in std_logic;  Y : out std_logic);
 end component;
component std_xor2
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
begin
  c_w4      :  std_wire  port map (a, w4);
  c_w5      :  std_wire  port map (b, w5);
  c_w3      :  std_and2  port map (w4, w5, w3);
  c_w2      :  std_inv   port map (w3, w2);
  c_w1      :  std_inv   port map (w2, w1);

  
  c_y       :  std_wire  port map (w1, y);
end structural;
