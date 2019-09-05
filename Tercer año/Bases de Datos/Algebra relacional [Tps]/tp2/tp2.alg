a := select sexo='F' (empleado);

b := select sexo='M' or salario>9000 (empleado);

c1 := project dni,idCiudad (empleado);
c2 := c1 njoin ciudad;
c3 := select nombreCiu='CONCEPCION DEL URUGUAY' (c2);
c4 := c3 njoin empleado;

d := select sexo='F' and salario<6000 (empleado);

e := select salario>8000 (c4);

f1 := select nombDepto='DORADO' or nombDepto='PARQUE URQUIZA' (departamento);
f2 := project idDepto (f1);
f3 := f2 product (project dni (empleado));
f4 := f2 njoin trabajapara;
f5 := f3 difference f4;
f6 := project dni (f5);
f7 := project dni (empleado);
f8 := f7 difference f6;
f9 := f8 njoin empleado;

g1 := select nombreCiu='CORDOBA' (ciudad);
g2 := g1 njoin empleado;
g3 := select nombDepto='CASEROS' (departamento);
g4 := g3 njoin trabajapara;
g5 := (project dni (g4)) njoin g2;

h1 := (project  dni (empleado)) product (project idDepto (departamento));
h2 := h1 difference  trabajapara;
h3 := project dni (h2);
h4 := project dni(empleado);
h5 := h4 difference h3;
h6 := h5 njoin empleado;

i1 := project idDepto, nombDepto (departamento);
i2 := prodepto njoin i1;
i3 := i2 njoin producto;
i4 := project nombreProd, nombDepto (i3);

j1 := project idProd (select nombreProd='CLAVO CABEZA PLANA 5MM' (producto));
j2 := j1 njoin prodepto;
j3 := j2 njoin departamento;
j4 := project nombDepto (j3);

k1 := (project idDepto (departamento)) product (project idProd (producto));
k2 := k1 difference prodepto;
k3 := project idDepto (k2);
k4 := project idDepto (departamento);
k5 := k4 difference k3;
k6 := k5 njoin departamento;

l1 := project idProd (select nombreProd='BARRA HIERRO 8MM' (producto));
l2 := l1 njoin prodepto;
l3 := l2 njoin departamento;
l4 := project nombDepto (l3);

m1 := select (fecha >= 20130101 and fecha <= 20130131) (produccion);
m2 := project idProd ( select (nombreProd='CLAVO CABEZA PLANA 5MM') (producto));
m3 := m1 njoin m2;

n1 := project idDepto (select (nombDepto='LA LINDA') (departamento));
n2 := select (fecha >= 20130101 and fecha<=20131231) (produccion);
n3 := n1 njoin n2;
 
o1 := project dni, salario (empleado);
o2(dni_copia, salario_copia) := o1 ;
o3 := o1 product o2;
o4 := select (salario < salario_copia and dni <> dni_copia) (o3); 
o5 := project dni (o4);
o6 := (project dni (empleado)) difference o5;
o7 := o6 njoin empleado;

p1 := project dni, salario (empleado);
p2(dni_copia, salario_copia) := o1 ;
p3 := o1 product o2;
p4 := select (salario > salario_copia and dni <> dni_copia) (o3); 
p5 := project dni (o4);
p6 := (project dni (empleado)) difference o5;
p7 := o6 njoin empleado;

