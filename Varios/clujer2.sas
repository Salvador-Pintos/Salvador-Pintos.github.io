options nodate ;
data prueba;
input x y nombre$ ;
cards;
0       0 A
1       2 B
0       5 C
2       5 D
3.01    2 E
4       1 F
5.02    3 G
7       0 H
7.97    2 I
7       5 J
;
title 'data inicial';
symbol1 v=dot c=blue;
proc gplot;
plot y*x=1;
 PROC CLUSTER DATA=prueba METHOD=AVERAGE PSEUDO rsquare;
   ID nombre;
title1 'proc cluster data=prueba method=average';

PROC TREE HORIZONTAL SPACES=2 leafchar='o' treechar='X' joinchar='|';
   ID nombre;
title1 'proc tree data=prueba method=average';


 PROC CLUSTER DATA=prueba METHOD=CENTROID PSEUDO rsquare;
   ID nombre;
title1 'proc cluster data=prueba method=centroid';
PROC TREE HORIZONTAL SPACES=2 leafchar='o' treechar='X' joinchar='|';
   ID nombre;
title1 'proc tree data=prueba method=centroid';

 PROC CLUSTER DATA=prueba METHOD=WARD PSEUDO rsquare;
   ID nombre;
title1 'proc cluster data=prueba method=Ward';
PROC TREE HORIZONTAL SPACES=2 leafchar='o' treechar='X' joinchar='|' list;
   ID nombre;
title1 'proc tree data=prueba method=Ward';
title2 'Se agrega un listado del arbol';
run;
