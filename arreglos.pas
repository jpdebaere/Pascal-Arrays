program arrays;
uses crt;
var
    personas: array [1..5, 1..3] of string;
    registrados,i: integer;

procedure registrar;
var
opc:char;
begin
    clrscr;
    repeat
    begin
        registrados:= registrados + 1;
        writeln('Ingrese el nombre de la persona ', registrados);
        readln(personas[registrados, 1]);
        writeln('Ingrese el apellido de la persona ', registrados);
        readln(personas[registrados, 2]);
        writeln('Ingrese la cedula de la persona ', registrados);
        readln(personas[registrados, 3]);
        writeln('Desea salir? S/N');
        readln(opc);
    end;
    until ((registrados >= 5) or (opc = #83) or (opc = #115));
end;

procedure listar;
var
opc:char;
begin
    clrscr;
    for i:=1 to registrados do
    begin
        writeln('Persona ', i);
        writeln('Nombre: ',personas[i, 1]);
        writeln('Apellido: ',personas[i, 2]);
        writeln('Cedula: ',personas[i, 3]);
        writeln();
    end;
end;

procedure mostrarDatos(indice:integer)
begin
        writeln('Persona ', i);
        writeln('Nombre: ',personas[indice, 1]);
        writeln('Apellido: ',personas[indice, 2]);
        writeln('Cedula: ',personas[indice, 3]);
        writeln();
end;

function buscarPersona(): integer
var
resp: string;
encontrado:boolean;
begin
    encontrado:=false;
    writeln('ingrese la cedula de la persona a buscar');
    readln(resp);
    for i:=1 to 5 do
    begin
        if resp = personas[i,3] then
        begin
            return i;
        end;
    end;
    if not encontrado then
    begin
        writeln('la cedula ', resp, 'no existe en el arreglo');
        return 0;
    end;
end;

procedure mostrarPersona(i:integer)
begin
   begin
       writeln('Nombre: ',personas[i, 1]);
       writeln('Apellido: ',personas[i, 2]);
       writeln('Cedula: ',personas[i, 3]);
       writeln();
   end;
end;

begin
    registrados:= 0;
    registrar();
    listar();
    readkey;
end.
