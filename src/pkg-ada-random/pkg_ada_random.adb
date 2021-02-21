-- File: pkg_ada_random.adb

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

-- ========================================================
package body pkg_ada_random 
--   with SPARK_Mode => on
is
 
    package ATIO   renames Ada.Text_IO;
 
    -- ==================================================== 
	procedure generate_random_integer 
	is
	   type randRange is new Integer range 1..100;
	   package Rand_Int is new Ada.Numerics.Discrete_Random(randRange);
	   use Rand_Int;
	   
	   gen : Generator;
	   num : randRange;
	begin
	   reset(gen);
	   num := random(gen);
	   ATIO.Put_line("Random integer (1..100) = " & randRange'Image(num));
	end generate_random_integer;

-- ========================================================
begin
    null;
end pkg_ada_random; 
-- ========================================================
