program SistemPemesananMakanan;
uses crt;
var
kode_makanan, jumlah_pesanan : integer;
harga_makanan, diskon, total_harga, total_bayar : real;
status_pelanggan : string;
valid : boolean;
begin
clrscr;
write('Masukkan kode makanan (1-4) : ');
readln(kode_makanan);
write('Masukkan jumlah pesanan : ');
readln(jumlah_pesanan);
write('Apakah Anda memiliki status pelanggan (ya/tidak) : ');
readln(status_pelanggan);
status_pelanggan := lowercase(status_pelanggan);
valid := true;
case kode_makanan of
1 : begin
writeln('Nasi Goreng (Rp 20000)');
harga_makanan := 20000;
end;
2 : begin
writeln('Mie Goreng (Rp 18000)');
harga_makanan := 18000;
end;
3 : begin
writeln('Ayam Geprek (Rp 25000)');
harga_makanan := 25000;
end;
4 : begin
writeln('Steak (Rp 50000)');
harga_makanan := 50000;
end;
else
begin
writeln('Kode makanan tidak valid');
valid := false;
end;
end;
if (kode_makanan=1) then 
begin
writeln('Harga makanan : 20000');
end
else if(kode_makanan=2) then
begin
writeln('Harga makanan : 18000');
end
else if(kode_makanan=3) then
begin
writeln('Harga makanan : 25000');
end
else if(kode_makanan=4) then
begin
writeln('Harga makanan : 50000');
end;
if valid then
begin
if (jumlah_pesanan <= 0) thenbegin
writeln('Jumlah pesanan tidak valid'); 
valid := false;
end
else if (jumlah_pesanan > 10) then
begin
writeln('Pesanan terlalu banyak');
valid := false;
end;
end;
if valid then
begin
total_harga := harga_makanan * jumlah_pesanan;
writeln('Total harga : Rp ', total_harga:0:2);
diskon := 0;
if (status_pelanggan = 'ya') then
begin
if (total_harga >= 100000) then
diskon := total_harga * 0.15
else if (total_harga >= 50000) then
diskon := total_harga * 0.10
else
diskon := total_harga * 0.05;
end
else if (status_pelanggan = 'tidak') then
begin
if (total_harga >= 100000) then
diskon := total_harga * 0.05;
end;
if diskon > 0 then
begin
total_bayar := total_harga - diskon;
writeln('Diskon : Rp ', diskon:0:2);
writeln('Total harga setelah diskon : Rp ', total_bayar:0:2);
end
else
writeln('Tidak ada diskon');
end;
readln;
end.