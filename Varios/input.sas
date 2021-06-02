/* el @ al final de la linea mantiene la lectura de la linea para el proximo input */
/* el do va hasta el numero de repeticiones de trat y gain */
Data bebe;
input sex $ rep per @;
do i=1 to 5;
input trat $ gain @;
output;
end;
cards;
male  1   1   A   23    B   34   C 87 D 94 E 47
male  3   2   A   25    B   36   C 87 D 99 E 40
;
proc print;
run;
