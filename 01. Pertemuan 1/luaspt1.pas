program luaspersegipanjang;
uses crt;
var
a, b, luas : integer ;
begin 
clrscr;
writeln('Masukkan panjang :');
readln(a);
writeln('Masukkan lebar: ');
readln(b);
luas := a*b;
writeln('Luas persegi panjang : ', luas);
end.