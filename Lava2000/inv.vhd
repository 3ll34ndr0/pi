library ieee;

use ieee.std_logic_1164.all;

entity
  inv
is
port
  ( 
 
    
    a : in std_logic

  
  ; y : out std_logic
  );
end inv;

architecture
  structural
of
  inv
is
 --agregado a mano oo
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
begin
  c_w2      :  std_wire  port map (a, w2);
  c_w1      :  std_inv   port map (w2, w1);

  
  c_y       :  std_wire  port map (w1, y);
end structural;
