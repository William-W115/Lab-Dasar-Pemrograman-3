program GajiKaryawan;
{ Gaji karyawan berdasarkan golongan, lembur, dan bonus }
uses crt;
var
gol: char;
jam: integer;
pokok, lembur, bonus, total: longint;
valid: boolean;
begin
clrscr;
write('Masukkan golongan (A/B/C): ');
readln(gol);
write('Masukkan total jam kerja per minggu: ');
readln(jam);
valid := true;
pokok := 0;
case upcase(gol) of
'A': pokok := 1500000;
'B': pokok := 2000000;
'C': pokok := 2500000;
else
valid := false;
end;
if not valid then
begin
writeln('Golongan tidak valid!');
exit;
end;
{ Lembur: kelebihan dari 40 jam }
if jam > 40 then
lembur := (jam - 40) * 20000
else
lembur := 0;
{ Bonus khusus golongan C dengan jam kerja > 50 }
if (upcase(gol) = 'C') and (jam > 50) then
bonus := 100000
else
bonus := 0;
total := pokok + lembur + bonus;
writeln;
writeln('===== RINCIAN GAJI =====');
writeln('Gaji Pokok : Rp', pokok);
writeln('Lembur     : Rp', lembur);
writeln('Bonus      : Rp', bonus);
writeln('------------------------');
writeln('Total Gaji : Rp', total);
end.