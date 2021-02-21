-- File: main_ada_random_numbers.adb
-- Date: Sun 21 Feb 2021 03:57:40 PM +08
-- Author: WRY wruslan.ump@gmail.com
-- ========================================================
-- https://craftofcoding.wordpress.com/2020/02/14/coding-ada-random-numbers/

-- =======================================================
-- IMPORT STANDARD ADA PACKAGES
with Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

-- IMPORT USER-DEFINED ADA PACKAGES
with pkg_ada_dtstamp;
with pkg_ada_random;

-- ========================================================
procedure main_ada_random_numbers
-- ========================================================
	with SPARK_Mode => on
is 

   -- RENAME STANDARD ADA PACKAGES FOR CONVENIENCE
   package ATIO    renames Ada.Text_IO;
   package ART     renames Ada.Real_Time;
        
   -- RENAME USER-DEFINED ADA PACKAGES FOR CONVENIENCE
   package PADTS   renames pkg_ada_dtstamp;
   package PAR     renames pkg_ada_random;  
   
   random_int   : Integer := 999;
   random_float : Float   := 99.99;
      
begin
   PADTS.dtstamp; ATIO.Put_Line ("Bismillah 3 times WRY");
   PADTS.dtstamp; ATIO.Put_Line ("Running inside GNAT Studio Community");
   ATIO.New_Line;  
     
   for idx in 1..5 loop
      PAR.generate_random_integer;
   end loop;
     
   ATIO.New_Line; 
   for idx in 1..5 loop
      PAR.generate_random_float;
   end loop;
   
   ATIO.New_Line; 
   for idx in 1..5 loop
      -- random_int := PAR.get_random_integer (10, 20);
      random_int := PAR.get_random_integer (-20, +2);
      ATIO.Put_Line("random_int = " & Integer'Image(random_int));
   end loop;
   
   ATIO.New_Line;   
   for idx in 1..5 loop
      -- random_float := PAR.get_random_float (2.5, 3.5);
      random_float := PAR.get_random_float (-3.5, +3.5);
      ATIO.Put_Line("random_float = " & Float'Image(random_float));
   end loop;
    
   
   ATIO.New_Line; PADTS.dtstamp; ATIO.Put_Line ("Alhamdulillah 3 times WRY");
-- ========================================================   
end main_ada_random_numbers;
-- ========================================================
