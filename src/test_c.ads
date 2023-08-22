with Interfaces;

package Test_C is

   -- API exported to the C code --

   procedure Main_Loop;
   pragma Export (C, Main_Loop, "mainLoop");

   -- API imported from C code --

   procedure Blink (N : Interfaces.Unsigned_32);
   pragma Import (C, Blink, "blink");

end Test_C;
