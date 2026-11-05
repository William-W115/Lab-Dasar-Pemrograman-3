program penentuanbeasiswa;
uses crt;
var 
ipk, penghasilan_orang_tua : real;
jumlah_prestasi : integer;
begin 
clrscr;
writeln('Masukkan IPK : ');
readln(ipk);
writeln('Masukkan penghasilan orang tua : ');
readln(penghasilan_orang_tua);
writeln('Masukkan jumlah prestasi : ');
readln(jumlah_prestasi);
if (ipk>=3.75) and (penghasilan_orang_tua<=5000000) and (jumlah_prestasi>=2) then 
begin 
writeln('Selamat, Anda mendapatkan beasiswa penuh!');
end 
else if (ipk>=3.5) and (penghasilan_orang_tua<=7000000) and (jumlah_prestasi>=1) then 
begin 
writeln('Selamat, Anda mendapatkan beasiswa sebagian!');
end 
else
begin 
writeln('Maaf, Anda tidak mendapatkan beasiswa');
end;
if (ipk<2.75) then
begin 
writeln('IPK tidak memenuhi syarat');
end 
else if (ipk>=3.5) and (penghasilan_orang_tua>7000000) then 
begin 
writeln('Penghasilan tidak memenuhi syarat');
end;
end.