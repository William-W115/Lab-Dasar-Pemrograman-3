program tugas3;
uses crt;

var 

tugas, kuis, uts, uas, rata: array[1..5] of real;
n, i : integer;

begin 
clrscr;

repeat
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);
    if (n < 1) or (n > 5) then
      writeln('Input tidak valid, ulangi.');
until (n >= 1) and (n <= 5);

for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);

    repeat
      write('  Nilai Tugas : ');
      readln(tugas[i]);
      if (tugas[i] < 0) or (tugas[i] > 100) then
        writeln('  Nilai tidak valid! Masukkan nilai antara 0 sampai 100.');
    until (tugas[i] >= 0) and (tugas[i] <= 100);

    repeat
      write('  Nilai Kuis  : ');
      readln(kuis[i]);
      if (kuis[i] < 0) or (kuis[i] > 100) then
        writeln('  Nilai tidak valid! Masukkan nilai antara 0 sampai 100.');
    until (kuis[i] >= 0) and (kuis[i] <= 100);

    repeat
      write('  Nilai UTS   : ');
      readln(uts[i]);
      if (uts[i] < 0) or (uts[i] > 100) then
        writeln('  Nilai tidak valid! Masukkan nilai antara 0 sampai 100.');
    until (uts[i] >= 0) and (uts[i] <= 100);

    repeat
      write('  Nilai UAS   : ');
      readln(uas[i]);
      if (uas[i] < 0) or (uas[i] > 100) then
        writeln('  Nilai tidak valid! Masukkan nilai antara 0 sampai 100.');
    until (uas[i] >= 0) and (uas[i] <= 100);
 
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
  end;

writeln;
writeln('==================== HASIL ====================');
writeln('No  Tugas   Kuis    UTS    UAS   Rata-rata  Keterangan');
writeln('-----------------------------------------------------');
for i := 1 to n do
  begin
    write(i:2, tugas[i]:7:1, kuis[i]:7:1, uts[i]:7:1, uas[i]:7:1,
          rata[i]:10:2, '    ');
    if rata[i] >= 70 then
      writeln('LULUS')
    else
      writeln('TIDAK LULUS');
  end;
 
writeln;
readln;
end.