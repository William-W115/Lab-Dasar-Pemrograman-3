program Tugas2 ;
var
i, hasil: integer;
begin
for i := 1 to 100 do
begin
hasil := 1 * i;
if (hasil mod 3 <> 0) and (hasil mod 5 <> 0)) then
begin
writeln('1 x ', i, ' = ', hasil);
end;
end;
end.
