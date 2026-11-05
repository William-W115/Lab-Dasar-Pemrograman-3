program tugas2;
uses crt;

var  
nilai: array[1..10] of real;
n, i, j: integer;
temp: real;

begin 
clrscr;

writeln('=== PROGRAM NILAI UAS MAHASISWA ===');

repeat
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
    if (n < 1) or (n > 10) then
    writeln('Input tidak valid, ulangi.');
until (n >= 1) and (n <= 10);

writeln;

for i := 1 to n do
begin
  repeat
      write('Nilai UAS mahasiswa ke-', i, ': ');
      readln(nilai[i]);
      if (nilai[i] < 0) or (nilai[i] > 100) then
        writeln('Nilai tidak valid! Masukkan nilai antara 0 sampai 100.');
    until (nilai[i] >= 0) and (nilai[i] <= 100);
  end;

{ Urut dari terendah ke tertinggi }
for i := 1 to n - 1 do
 for j := 1 to n - i do
      if nilai[j] > nilai[j + 1] then
      begin
        temp := nilai[j];
        nilai[j] := nilai[j + 1];
        nilai[j + 1] := temp;
      end;

writeln;

writeln('Nilai UAS setelah diurutkan (terendah ke tertinggi):');
for i := 1 to n do
    writeln(i:2, '. ', nilai[i]:0:2);

writeln;
readln;
end.