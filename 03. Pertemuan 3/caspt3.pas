program minggu;
uses crt;
var 
angka : integer ;

begin
clrscr;
writeln('Sebutkan angka ke : ');
readln(angka);

case angka of 
1: writeln('Ini Hari Senin');
2: writeln('Ini Hari Selasa');
3: writeln('Ini Hari Rabu');
4: writeln('Ini Hari Kamis');
5: writeln('Ini Hari Jumat');
6: writeln('Ini Hari Sabtu');
7: writeln('Ini Hari Minggu');
else 
writeln('Angka tidak valid');
end;
end.