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
   
   ATIO.Put_Line("PAR.generate_random_integer;");
   for idx in 1..5 loop
      PAR.generate_random_integer;
   end loop;
     
   ATIO.New_Line;
   ATIO.Put_Line("PAR.generate_random_float;");
   for idx in 1..5 loop
      PAR.generate_random_float;
   end loop;
   
   ATIO.New_Line; 
   ATIO.Put_Line("random_int := PAR.get_random_integer (-20, +12);");
   for idx in 1..5 loop
      -- random_int := PAR.get_random_integer (10, 20);
      random_int := PAR.get_random_integer (-20, +12);
      ATIO.Put_Line("random_int = " & Integer'Image(random_int));
   end loop;
   
   ATIO.New_Line; 
   ATIO.Put_Line("random_float := PAR.get_random_float (-3.5, +3.5);");
   for idx in 1..5 loop
      -- random_float := PAR.get_random_float (2.5, 3.5);
      random_float := PAR.get_random_float (-3.5, +3.5);
      ATIO.Put_Line("random_float = " & Float'Image(random_float));
   end loop;
    
   -- TEST RUN TWO TASKS
   ATIO.New_Line; 
   ATIO.Put_Line("PADTS.exec_task_01;");
   PADTS.exec_task_01;
   
   
   
   ATIO.New_Line; PADTS.dtstamp; ATIO.Put_Line ("Alhamdulillah 3 times WRY");
-- ========================================================   
end main_ada_random_numbers;
-- ========================================================

-- EXECUTION
-- /home/wruslan/github-ump/ada-random-numbers/exec/main_ada_random_numbers.adx
-- 2021-02-22 01:17:56.98054949118 Bismillah 3 times WRY
-- 2021-02-22 01:17:56.98055140300 Running inside GNAT Studio Community

-- PAR.generate_random_integer;
-- Random integer (1..100) =  17
-- Random integer (1..100) =  84
-- Random integer (1..100) =  65
-- Random integer (1..100) =  27
-- Random integer (1..100) =  57

-- PAR.generate_random_float;
-- Random float (0.0 .. 1.0) =  6.40517E-01
-- Random float (0.0 .. 1.0) =  5.51473E-02
-- Random float (0.0 .. 1.0) =  2.45588E-01
-- Random float (0.0 .. 1.0) =  2.37335E-01
-- Random float (0.0 .. 1.0) =  1.08305E-01

-- random_int := PAR.get_random_integer (-20, +12);
-- random_int =  12
-- random_int = -5
-- random_int =  10
-- random_int = -7
-- random_int = -17

-- random_float := PAR.get_random_float (-3.5, +3.5);
-- random_float =  1.90540E+00
-- random_float =  2.39291E+00
-- random_float = -3.31671E+00
-- random_float =  2.48616E+00
-- random_float = -3.26613E+00

-- PADTS.exec_task_01;
-- 2021-02-22 02:05:41.532021-02-22 02:05:41.53606240664 Running tsktyp_02
-- 606231971 Running tsktyp_01 
-- 2021-02-22 02:05:42.03106464690 Running tsktyp_01 
-- 2021-02-22 02:05:42.53606431195 Running tsktyp_02
-- 2021-02-22 02:05:42.53606624736 Running tsktyp_01 
-- 2021-02-22 02:05:43.03106822503 Running tsktyp_01 
-- 2021-02-22 02:05:43.53606626764 Running tsktyp_02
-- 2021-02-22 02:05:43.53607013684 Running tsktyp_01 
-- 2021-02-22 02:05:44.03107168931 Running tsktyp_01 
-- 2021-02-22 02:05:44.53606856382 Running tsktyp_02
-- 2021-02-22 02:05:44.53607400563 Running tsktyp_01 
-- 2021-02-22 02:05:45.03107587742 Running tsktyp_01 
-- 2021-02-22 02:05:45.53607054676 Running tsktyp_02
-- 2021-02-22 02:05:45.53607755681 Running tsktyp_01 
-- 2021-02-22 02:05:46.04107959165 Running tsktyp_01 
-- 2021-02-22 02:05:46.53607366206 Running tsktyp_02
-- 2021-02-22 02:05:47.53607593687 Running tsktyp_02
-- 2021-02-22 02:05:48.53607795318 Running tsktyp_02
-- 2021-02-22 02:05:49.54607990323 Running tsktyp_02
-- 2021-02-22 02:05:50.54608176876 Running tsktyp_02

-- 2021-02-22 02:05:51.54608538756 Alhamdulillah 3 times WRY
-- [2021-02-22 10:05:51] process terminated successfully, elapsed time: 10.15s
