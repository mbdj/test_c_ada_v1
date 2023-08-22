pragma Ada_2012;

--  with Ada.Real_Time; use Ada.Real_Time;

with System.Machine_Code; use System.Machine_Code;
with Add;

package body Test_C is

   ---------------
   -- Main_Loop --
   ---------------
   procedure Delai (D : in Interfaces.Unsigned_32) is
   --  simule un delai
   begin
      for I in 1 .. D loop
         Asm ("nop");
      end loop;
   end Delai;

   procedure Main_Loop is
      use Interfaces;

      --  Period       : constant Time_Span := Milliseconds (1000);
      --  Next_Release : Time := Clock;

      N : Interfaces.Unsigned_32 := 1;

   begin

      loop
         Blink (N);

         N := Add.Addition (N, 1);

         Delai (20_000_000);

         --  Next_Release := Next_Release + Period;
         --  delay until Next_Release;
      end loop;

   end Main_Loop;

end Test_C;
