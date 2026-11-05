program TahunKabisat;
uses crt;
var 
tahun : integer;
begin 
clrscr;
writeln('Masukkan Tahun : ');
readln(tahun);
if (tahun mod 4= 0 )
then 
begin
writeln('Tahun Kabisat');
end
else 
begin
writeln('Bukan Tahun Kabisat');
end;
end.