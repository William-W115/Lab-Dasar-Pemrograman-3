program DeretAngka;
{ Deret angka 1..N dengan while loop dan continue }
uses crt;
var
N, pilihan, i: integer;
begin
clrscr;
write('Masukkan nilai N: ');
readln(N);
write('Pilih kategori deret (1: Ganjil, 2: Genap): ');
readln(pilihan);
if (pilihan <> 1) and (pilihan <> 2) then
begin
writeln('Pilihan tidak valid!');
exit;
end;
writeln('Hasil deret:');
i := 0;
while i < N do
begin
i := i + 1; { increment di awal agar continue tidak membuat loop tak berhenti }
{ lewati angka yang tidak sesuai kategori }
if (pilihan = 1) and (i mod 2 = 0) then continue;
if (pilihan = 2) and (i mod 2 <> 0) then continue;
{ lewati kelipatan 5 }
if i mod 5 = 0 then continue;
write(i, ' ');
end;
writeln;
end.