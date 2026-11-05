program DeretFibonacci;
uses crt;

procedure Fibonacci(jumlah : integer);
var
a, b, c, i : longint;
begin
a := 1;
b := 1;
write('Deret Fibonacci : ');
for i := 1 to jumlah do
begin
    write(a, ' ');
    c := a + b;
    a := b;
    b := c;
end;
writeln;
end;

var 
n : integer;

begin
clrscr;
write('Nilai : ');
readln(n);
Fibonacci(n);
readln;
end.