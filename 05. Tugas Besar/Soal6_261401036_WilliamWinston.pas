program NilaiAkhir;
uses crt;
{ Nilai akhir: Tugas 30%, UTS 30%, UAS 40% }
var
tugas, uts, uas, hadir, akhir: real;
indeks: char;
begin
clrscr;
write('Masukkan nilai Tugas   : ');
readln(tugas);
write('Masukkan nilai UTS     : ');
readln(uts);
write('Masukkan nilai UAS     : ');
readln(uas);
write('Masukkan kehadiran (%) : ');
readln(hadir);
akhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);
{ Indeks huruf }
if akhir >= 85 then indeks := 'A'
else if akhir >= 75 then indeks := 'B'
else if akhir >= 60 then indeks := 'C'
else if akhir >= 50 then indeks := 'D'
else indeks := 'E';
writeln;
writeln('Nilai Akhir  : ', akhir:0:2);
writeln('Indeks Huruf : ', indeks);
{ Status lulus: nilai >= 60 DAN kehadiran >= 80% }
if (akhir >= 60) and (hadir >= 80) then
writeln('Status       : LULUS')
else
writeln('Status       : TIDAK LULUS');
end.