library ieee;

use ieee.std_logic_1164.all;

entity
  dotOp
is
port
  ( 
 
    
    g1 : in std_logic
  ; p1 : in std_logic
  ; g : in std_logic
  ; p : in std_logic

  
  ; go : out std_logic
  ; po : out std_logic
  );
end dotOp;

architecture
  structural
of
  dotOp
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
  signal w6 : std_logic;
  signal w7 : std_logic;
begin
  c_w2      :  std_wire  port map (g, w2);
  c_w4      :  std_wire  port map (p, w4);
  c_w5      :  std_wire  port map (g1, w5);
  c_w3      :  std_and2  port map (w4, w5, w3);
  c_w1      :  std_or2   port map (w2, w3, w1);
  c_w7      :  std_wire  port map (p1, w7);
  c_w6      :  std_and2  port map (w4, w7, w6);

  
  c_go      :  std_wire  port map (w1, go);
  c_po      :  std_wire  port map (w6, po);
end structural;

