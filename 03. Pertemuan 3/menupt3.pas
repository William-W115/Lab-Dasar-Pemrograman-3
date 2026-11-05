program Menu;
uses crt;
var 
pilih : integer;
begin 
writeln('Menu 1: Nasi Goreng ');
writeln('Menu 2: Nasi Ayam ');
writeln('Menu 3: Mie Ayam ');
writeln('Menu 4: Ayam Geprek ');
writeln('Menu 5: Ayam Penyet ');
writeln('Masukkan pilihan anda : ');
readln(pilih);
case pilih of 
1 : writeln('Nasi Goreng : Rp. 20000');
2 : writeln('Nasi Ayam : Rp. 20000');
3 : writeln('Mie Ayam : Rp. 20000');
4 : writeln('Ayam Geprek : Rp. 20000');
5 : writeln('Ayam Penyet : Rp. 20000');
else 
writeln('Menu tidak ada');
end;
end.