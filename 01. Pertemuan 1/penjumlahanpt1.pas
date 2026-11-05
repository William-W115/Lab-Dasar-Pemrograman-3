program penjumlahan;
uses crt;
var
a, b, hasil : integer ;
begin 
clrscr;
writeln('Masukkan bilangan pertama :');
readln(a);
writeln('Masukkan bilangan kedua:');
readln(b);
hasil := a+b;
writeln('Hasil penjumlahan dua bilangan : ', hasil);
end.
