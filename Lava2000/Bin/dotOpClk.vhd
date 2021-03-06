-- Generated by Lava 2000

use work.all;

entity
  dotOpClk
is
port
  -- clock
  ( clk : in bit

  -- inputs
  ; g1 : in bit
  ; p1 : in bit
  ; g : in bit
  ; p : in bit

  -- outputs
  ; go : out bit
  ; po : out bit
  );
end entity dotOpClk;

architecture
  structural
of
  dotOpClk
is
  signal w1 : bit;
  signal w2 : bit;
  signal w3 : bit;
  signal w4 : bit;
  signal w5 : bit;
  signal w6 : bit;
  signal w7 : bit;
begin
  c_w2      : entity id    port map (clk, g, w2);
  c_w4      : entity id    port map (clk, p, w4);
  c_w5      : entity id    port map (clk, g1, w5);
  c_w3      : entity and2  port map (clk, w4, w5, w3);
  c_w1      : entity or2   port map (clk, w2, w3, w1);
  c_w7      : entity id    port map (clk, p1, w7);
  c_w6      : entity and2  port map (clk, w4, w7, w6);

  -- naming outputs
  c_go      : entity id    port map (clk, w1, go);
  c_po      : entity id    port map (clk, w6, po);
end structural;
