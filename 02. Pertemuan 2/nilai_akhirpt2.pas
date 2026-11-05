program Hitung_Nilai_Akhir;
uses crt;
var 
nama_mahasiswa : string;
nilai_tugas, nilai_UTS, nilai_UAS, nilai_akhir : real;
begin 
clrscr;
writeln('Nama mahasiswa: ');
readln(nama_mahasiswa);
writeln('Nilai tugas: ');
readln(nilai_tugas);
writeln('Nilai UTS: ');
readln(nilai_UTS);
writeln('Nilai UAS: ' );
readln(nilai_UAS);

nilai_tugas := nilai_tugas*0.3;
writeln('Nilai tugas : ', nilai_tugas:0:2);
nilai_UTS := nilai_UTS*0.3;
writeln('Nilai UTS : ', nilai_UTS:0:2);
nilai_UAS := nilai_UAS*0.4;
writeln('Nilai UAS : ', nilai_UAS:0:2);
nilai_akhir := nilai_tugas + nilai_UTS + nilai_UAS;
writeln('Nilai akhir : ', nilai_akhir:0:2);
end.