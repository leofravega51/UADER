a1 := project idInventario (prestamo);
a2 := project idInventario (ejemplar);
a3 := a2 difference a1;

b1 := project idCategoria (select categoria='Marketing' (categoria));
b2 := project isbn (b1 njoin categoriaLibro);
b3 := b2 njoin pedidoInsatisfecho;

c1 := project idLocalidad (select localidad='CONCEPCION DEL URUGUAY' (localidad));
c2 := project dni (c1 njoin usuario);
c3 := project dni (c2 njoin alumno); 
c4 := select (fechaPrestamo<='2001-12-31' and fechaPrestamo>='2001-01-01') (c3 njoin prestamo);
c5(dni_c, fechaPrestamo_c, idInventario_c) := project dni, fechaPrestamo, idInventario (c4);
c6 := select (dni=dni_c and (fechaPrestamo<>fechaPrestamo_c or idInventario<>idInventario_c)) (c4 product c5) ;
c7 := usuario njoin (project dni (c6));

d1 := project isbn (select editorial='Sudamericana' (libro));
d2 := project idInventario (d1 njoin ejemplar);
d3 := d2 njoin prestamo;
d4 := project dni (investigador);
d5 := d3 njoin d4;
d6 := project idProyecto (participa njoin (project dni (d5)));
d7 := d6 njoin proyecto;
d8 := departamento njoin (project idDepartamento (d7));

e1 := project isbn, dni (prestamo njoin ejemplar);
e2(isbn, dni_alumno, idMateriaAlumno) := (e1 njoin (project dni (alumno))) njoin cursa;
e3(isbn, dni_docente, idMateriaProfesor) := (e1 njoin (project dni (docente))) njoin (project idMateria, dni (dicta));
e4 := select idMateriaAlumno=idMateriaProfesor and dni_alumno<>dni_docente  (e2 njoin e3);
e5 := project titulo (e4 njoin libro);

f1 := select fechaDevolucion>fechaLimite or fechaDevolucion='0000-00-00' (prestamo);
f2 := prestamo difference f1;
f3(fechaLimiteCopia, dni) := project fechaLimite, dni (f1);
f4 := f3 njoin f2;
f5 := select fechaPrestamo>fechaLimiteCopia (f4);
f6 := project nombre (usuario njoin (project dni (f5)));

g1 := project idMateria, idCarrera (dicta);
g2 := (project dni (docente)) product g1;
g3 := project dni, idMateria (g2 difference dicta);
g4 := (project dni, idMateria (dicta)) difference g3;
g5 := (project dni (g4)) njoin usuario;

h1 := select fechaDevolucion<>'0000-00-00' (prestamo);
h2 := h1 njoin ejemplar;
h3 := project idInventario, isbn (h2);
h4(idInventario_c, isbn_c) := project idInventario, isbn(h3);
h5 := h3 product h4;
h6 := select isbn=isbn_c and idInventario<>idInventario_c  (h5);
h7 := project isbn, idInventario (h6);
h8 := project idInventario, isbn, fechaPrestamo, fechaDevolucion (prestamo njoin h7);
h9(idInventario_c, isbn_c, fechaPrestamo_c, fechaDevolucion_c) := project idInventario, isbn, fechaPrestamo, fechaDevolucion (prestamo njoin h7);
h10 := h8 product h9;
h11 := select isbn = isbn_c and idInventario<>idInventario_c (h10);
h12 := select fechaPrestamo<fechaDevolucion_c and fechaPrestamo_c<fechaDevolucion (h11);
h13 := (project idInventario, isbn, fechaPrestamo, fechaDevolucion (h12)) njoin libro;
