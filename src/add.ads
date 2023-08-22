--  package créé pour tester si une fonction qui est utilisée par une fonction exportée
--  est aussi exportée indirectement dans le librairie pour le code C
--  Et après test : ça fonctionne !
with Interfaces; use Interfaces;
package Add is

   function Addition (A, B : Interfaces.Unsigned_32) return Interfaces.Unsigned_32 ;

end Add;
