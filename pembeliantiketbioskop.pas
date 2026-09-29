program PembelianTiketBioskop;
uses crt;
var 
jenis_film, hari, jumlah_tiket : integer;
total_harga : real;
begin 
clrscr;
writeln('Masukkan jenis film : ');
readln(jenis_film);
writeln('Masukkan hari : ');
readln(hari);
writeln('Masukkan jumlah tiket : ');
readln(jumlah_tiket);
writeln;
case jenis_film of 
1: writeln('Reguler (Rp 30000)');
2: writeln('3D (Rp 45000)');
3: writeln('IMAX (Rp 60000)');
end;
case hari of 
1: writeln('Senin-Kamis');
2: writeln('Jumat');
3: writeln('Sabtu-Minggu');
end;
if (jenis_film = 1) and (hari = 1) then 
begin 
total_harga := jumlah_tiket * 30000;
writeln('Total harga tiket : Rp ', total_harga:0:2);
end 
else if (jenis_film = 1) and (hari = 2) then 
begin 
total_harga := jumlah_tiket * (30000 + 5000);
writeln('Total harga tiket : Rp ', total_harga:0:2);
end 
else if (jenis_film = 1) and (hari = 3) then 
begin 
total_harga := jumlah_tiket * (30000 + 10000);
writeln('Total harga tiket : Rp ', total_harga:0:2);
end 
else if(jenis_film = 2) and (hari = 1) then
begin 
total_harga := jumlah_tiket*45000;
writeln('Total harga tiket : Rp ', total_harga:0:2);
end
else if(jenis_film = 2) and (hari = 2) then
begin 
total_harga := jumlah_tiket*(45000 + 5000);
writeln('Total harga tiket : Rp ', total_harga:0:2);
end
else if(jenis_film = 2) and (hari = 3) then
begin 
total_harga := jumlah_tiket*(45000 + 10000);
writeln('Total harga tiket : Rp ', total_harga:0:2);
end
else if(jenis_film = 3) and (hari = 1) then
begin 
total_harga := jumlah_tiket*(60000);
writeln('Total harga tiket : Rp ', total_harga:0:2);
end
else if(jenis_film = 3) and (hari = 2) then
begin 
total_harga := jumlah_tiket*(60000 + 5000);
writeln('Total harga tiket : Rp ', total_harga:0:2);
end
else if(jenis_film = 3) and (hari = 3) then
begin 
total_harga := jumlah_tiket*(60000+10000);
writeln('Total harga tiket : Rp ', total_harga:0:2);
end;
if (total_harga >= 200000) then
begin 
writeln('Harga awal : Rp ', total_harga:0:2);
writeln('Diskon 10% : Rp ', total_harga*0.1:0:2);
total_harga := total_harga - (total_harga*0.1);
writeln('Total harga setelah diskon : Rp ', total_harga:0:2);
end 
else if (total_harga >= 100000) then 
begin 
writeln('Harga awal : Rp ', total_harga:0:2);
writeln('Diskon 5% : Rp ', total_harga*0.05:0:2);
total_harga :=total_harga - (total_harga*0.05);
writeln('Total harga setelah diskon : Rp ', total_harga:0:2);
end 
else 
begin 
writeln('Tidak ada diskon');
end;
end.