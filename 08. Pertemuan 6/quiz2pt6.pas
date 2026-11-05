program BilanganPrima;
uses crt;

function CekPrima(n : integer) : boolean;
var
i : integer;
prima : boolean;
begin
if n < 2 then begin
prima := false
end
else
begin
prima := true;
for i := 2 to n - 1 do 
begin
if n mod i = 0 then begin
prima := false;
end;
end;
end;
CekPrima := prima;
end;

var 
angka : integer;

begin
clrscr;
write('Masukkan angka : ');
readln(angka);
if CekPrima(angka) then begin
writeln(angka, ' adalah bilangan prima')
end
else begin
writeln(angka, ' bukan bilangan prima');
end;
readln;
end.