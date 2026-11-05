program RekapitulasiNilai;
{ Rekapitulasi nilai M mahasiswa dengan N tugas (nested loop) }
uses crt;
var
M, N, i, j: integer;
nilai, jumlah, rata: real;
lulus, tidakLulus: integer;
begin
clrscr;
lulus := 0;
tidakLulus := 0;
write('Masukkan jumlah mahasiswa (M): ');
readln(M);
write('Masukkan jumlah tugas (N)    : ');
readln(N);
if (M < 1) or (N < 1) then
begin
writeln('M dan N harus lebih dari 0!');
exit;
end;
for i := 1 to M do
begin
writeln;
writeln('--- Mahasiswa ke-', i, ' ---');
jumlah := 0;
for j := 1 to N do
begin
write('Nilai tugas ke-', j, ': ');
readln(nilai);
jumlah := jumlah + nilai;
end;
rata := jumlah / N;
write('Rata-rata mahasiswa ke-', i, ': ', rata:0:2, ' -> ');
if rata >= 65 then
begin
writeln('LULUS');
lulus := lulus + 1;
end
else
begin
writeln('TIDAK LULUS');
tidakLulus := tidakLulus + 1;
end;
end;
writeln;
writeln('===== REKAPITULASI =====');
writeln('Total mahasiswa LULUS       : ', lulus);
writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.