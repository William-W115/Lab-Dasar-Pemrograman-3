program hitung_sisa_uang;
uses crt;
var 
nama_mahasiswa : string;
uang_awal, harga_makanan, harga_minuman, total_pengeluaran, sisa_uang: integer;
begin 
clrscr;
writeln('Nama mahasiswa: ');
readln(nama_mahasiswa);
writeln('Uang awal: ');
readln(uang_awal);
writeln('Harga makanan: ');
readln(harga_makanan);
writeln('Harga minuman: ');
readln(harga_minuman);
total_pengeluaran := harga_makanan + harga_minuman;
writeln('Total pengeluaran : ', total_pengeluaran);
sisa_uang := uang_awal - total_pengeluaran;
writeln('Sisa uang : ', sisa_uang);
end.