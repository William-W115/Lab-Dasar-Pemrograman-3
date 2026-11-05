program Faktorial;
uses crt;

var
n : integer;

function Fakt(x : integer) : longint;
begin
if x <= 1 then
Fakt := 1                 
else
Fakt := x * Fakt(x - 1); 
end;

begin
clrscr;
write('Nilai : ');
readln(n);
writeln('Hasil : ', Fakt(n));
readln;
end.