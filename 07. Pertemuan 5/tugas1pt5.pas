program tugas1;
uses crt;

var 

A,B,C : array[1..5 , 1..5] of integer;
baris1, kolom1, baris2, kolom2 : integer;
i, j : integer;

begin 
clrscr;

{Matriks 1}

repeat
    write('Masukkan jumlah baris matriks ke-1 : ');
    readln(baris1);
until (baris1>=1) and (baris1<=5);

repeat
    write('Masukkan jumlah kolom matriks ke-1 : ');
    readln(kolom1);
until (kolom1>=1) and (kolom1<=5);

{Matriks 2}
repeat
    write('Masukkan jumlah baris matriks ke-2 : ');
    readln(baris2);
until (baris2>=1) and (baris2<=5);

repeat
    write('Masukkan jumlah kolom matriks ke-2 : ');
    readln(kolom2);
until (kolom2>=1) and (kolom2<=5);

writeln;

if (baris1<>baris2) or (kolom1<>kolom2) then
begin
    writeln('Kedua Matriks tidak dapat dijumlahkan');
    writeln('karena ukuran (baris x kolom) keduanya berbeda');
end
else
begin
    writeln('Kedua Matriks dapat dijumlahkan');
    writeln;

   writeln('Masukkan elemen matriks A:');
    for i := 1 to baris1 do
      for j := 1 to kolom1 do
      begin
        write('A[', i, ',', j, '] = ');
        readln(A[i, j]);
      end;

    writeln;
    writeln('Masukkan elemen matriks B:');
    for i := 1 to baris2 do
      for j := 1 to kolom2 do
      begin
        write('B[', i, ',', j, '] = ');
        readln(B[i, j]);
      end;

{ Penjumlahan }
    for i := 1 to baris1 do
      for j := 1 to kolom1 do
        C[i, j] := A[i, j] + B[i, j];

    writeln;
    writeln('Matriks A:');
    for i := 1 to baris1 do
    begin
      for j := 1 to kolom1 do
        write(A[i, j]:5);
      writeln;
    end;
 
    writeln;
    writeln('Matriks B:');
    for i := 1 to baris2 do
    begin
      for j := 1 to kolom2 do
        write(B[i, j]:5);
      writeln;
    end;
 
    writeln;
    writeln('Hasil penjumlahan A + B:');
    for i := 1 to baris1 do
    begin
      for j := 1 to kolom1 do
        write(C[i, j]:5);
      writeln;
    end;
  end;
 
  writeln;
  readln;
end.