program arraywilliam;
uses crt;

var 
kursi : array[1..1000] of integer;
i,n : integer;

begin 
clrscr;

write('Masukkan batas index : ');
readln(n);

// ini untuk input data tidak secara manual
for i := 1 to n do 
begin
    write('Masukkan index ke-', i, ' : ');
    readln(kursi[i]);
end;

// akses data ascending (turun ke naik)
for i := 1 to n do 
begin
    write(kursi[i], ' ');
end;
writeln;

// akses data (naik ke turun)
for i := 1 downto n do 
begin
    write(kursi[i], ' ');
end;

end.