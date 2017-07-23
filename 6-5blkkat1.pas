Program membalik_kata;
Uses wincrt;

var kata : string[50];
var i,k : integer;


Begin
writeln(' Masukkan Kalimat yang akan dibalik! ');
gotoxy(5,2);readln(kata);
k := length(kata);
Writeln('====================================');
writeln('    KATA SETELAH DI BALIK ');
writeln('====================================');
write('      ');
for i := k downto 1 do Write(kata[i]);


End.
