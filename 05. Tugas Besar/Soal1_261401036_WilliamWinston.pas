program Totalbelanja;
uses crt;
var
N, i: integer;
harga: real;
total, persen, diskon, bayar: real;
begin
clrscr;
total := 0;
write('Masukkan jumlah barang (N): ');
readln(N);
{ Input harga tiap barang dengan for-to-do }
for i := 1 to N do
begin
write('Harga barang ke-', i, ' : Rp');
readln(harga);
total := total + harga;
end;
{ Penentuan diskon dengan if-else }
if total < 100000 then
persen := 0
else if total < 500000 then
persen := 10
else
persen := 20;
diskon := total * persen / 100; 
bayar  := total - diskon;
writeln;
writeln('===== RINCIAN BELANJA =====');
for i := 1 to N do
writeln('Barang ke-', i, ' : Rp', harga:0:0);
writeln('---------------------------');
writeln('Total Sebelum Diskon : Rp', total:0:0);
writeln('Diskon (', persen:0:0, '%)       : Rp', diskon:0:0);
writeln('Total Bayar Akhir    : Rp', bayar:0:0);
end.