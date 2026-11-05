program StatusTubuh;
uses crt;
var 
suhu_tubuh : real;
begin 
clrscr;
writeln('Masukkan suhu tubuh : ');
readln(suhu_tubuh);
if (suhu_tubuh<36) then 
begin
writeln('Suhu Rendah');
end 
else if (suhu_tubuh >=36) AND (suhu_tubuh <=37.5) then 
begin
writeln('Suhu Normal');
end 
else if (suhu_tubuh >37.5) then 
begin
writeln('Demam');
end ;
end.