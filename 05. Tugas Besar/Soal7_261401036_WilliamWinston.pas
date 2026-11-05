program TarifParkir;
{ Tarif parkir berdasarkan kode kendaraan (case-of) }
uses crt;
var
kode: char;
jam: integer;
tarif: longint;
valid: boolean;
begin
clrscr;
write('Masukkan kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
readln(kode);
write('Masukkan lama parkir (jam): ');
readln(jam);
if jam < 1 then
begin
writeln('Lama parkir minimal 1 jam!');
exit;
end;
valid := true;
tarif := 0;
case upcase(kode) of
'M': if jam > 10 then tarif := 30000
else tarif := 5000 + (jam - 1) * 3000;
'K': if jam > 10 then tarif := 10000
else tarif := 2000 + (jam - 1) * 1000;
'B': if jam > 10 then tarif := 50000
else tarif := 10000 + (jam - 1) * 5000;
else
valid := false;
end;
if valid then
begin
writeln;
writeln('Lama parkir : ', jam, ' jam');
if jam > 10 then
writeln('(Berlaku tarif maksimal flat)');
writeln('Total tarif : Rp', tarif);
end
else
writeln('Kode kendaraan tidak valid!');
end.