program logis;
uses crt;
var 
x,y: boolean;
begin 
clrscr;
x:= true;
y:=false;
writeln('x AND y: ', x AND y);
writeln('x OR y: ', x OR y);
writeln('Not x: ', Not x);
writeln('x XOR y: ', x XOR y);
writeln('Not y: ', Not y);
end.