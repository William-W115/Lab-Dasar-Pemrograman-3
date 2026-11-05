program KataSandi;
{ Verifikasi kata sandi: repeat-until + break, maksimal 3 percobaan }
uses crt;
const
SANDI_RAHASIA = 'william1234';
MAKS_PERCOBAAN = 3;
var
masukan: string;
percobaan: integer;
berhasil: boolean;
begin
clrscr;
percobaan := 0;
berhasil := false;
repeat
percobaan := percobaan + 1;
write('Masukkan kata sandi (percobaan ', percobaan, '/', MAKS_PERCOBAAN, '): ');
readln(masukan);
if masukan = SANDI_RAHASIA then
begin
writeln('Login Berhasil! Selamat Datang');
berhasil := true;
break; { hentikan loop }
end
else
writeln('Kata sandi salah!');
until percobaan >= MAKS_PERCOBAAN;
if not berhasil then
writeln('Akses Ditolak! Akun Terkunci.');
end.