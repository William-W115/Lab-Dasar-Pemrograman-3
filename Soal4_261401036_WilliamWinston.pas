program KalkulatorSederhana;
{ Kalkulator sederhana menggunakan case-of dan repeat-until }
uses crt;
var
pilihan: integer;
a, b: real;
ulang: char;
begin
clrscr;
repeat
writeln;
writeln('===== KALKULATOR SEDERHANA =====');
writeln('1. Penjumlahan');
writeln('2. Pengurangan');
writeln('3. Perkalian');
writeln('4. Pembagian Real');
writeln('5. DIV & MOD');
write('Pilih operasi (1-5): ');
readln(pilihan);
write('Masukkan angka pertama : ');
readln(a);
write('Masukkan angka kedua   : ');
readln(b);
case pilihan of
1: writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', (a + b):0:2);
2: writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', (a - b):0:2);
3: writeln('Hasil: ', a:0:2, ' x ', b:0:2, ' = ', (a * b):0:2);
4: if b = 0 then
writeln('Error: pembagian dengan nol!')
else
writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', (a / b):0:2);
5: if trunc(b) = 0 then
writeln('Error: pembagi tidak boleh nol!')
else
begin
writeln('Hasil: ', trunc(a), ' DIV ', trunc(b), ' = ', trunc(a) div trunc(b));
writeln('Hasil: ', trunc(a), ' MOD ', trunc(b), ' = ', trunc(a) mod trunc(b));
end;
else
writeln('Pilihan operasi tidak valid!');
end;
write('Apakah ingin melakukan perhitungan lagi?(Y/T) ');
readln(ulang);
until (ulang = 'T') or (ulang = 't');
writeln('Perhitungan selesai')
end.