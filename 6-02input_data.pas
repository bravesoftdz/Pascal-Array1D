program larik1D_1;
uses Crt;
var N,i,jum,pos,k,l,bantuan:integer;
jumvar,med:real;
Rata,varian,SD:real;
data:array[1..100] of integer;
jaw:char;

begin
repeat;
clrscr;
writeln('  PROGRAM INPUT DATA (TIDAK HARUS URUT)');
Writeln(' =======================================');
write(' Banyak data : ');readln(N);
writeln(' =======================================');
i:=1;
while i<=N do
 begin
  write('       Data ke ',i,' = ');readln(data[i]);
  jum:=jum+data[i];
  i:=i+1;
 end;
rata:=jum/N;
jumvar:=0;
for i:=1 to N do  jumvar:=jumvar+sqr(data[i]-rata);
varian:=jumvar/N;
SD:=sqrt(varian);

if N mod 2 = 1 then
 begin
  pos:= (N div 2)+1;
  med:=data[POS];
 end else
begin
 pos:=N div 2 ;
 med:=1/2*(data[pos]+data[pos+1]);
end;

clrscr;
writeln('  TAMPILAN DATA SEBELUM DIURUTKAN');
Writeln(' =======================================');
for i:=1 to N do writeln('  ',data[i],' ');
writeln;
{Proses pengurutan}
FOR k := 1 TO N-1 DO
 BEGIN
 FOR l := k+1 TO N DO
  BEGIN
  IF data[k] > data[l] THEN
   BEGIN
   bantuan := data[l];
   data[l] := data[k];
   data[k] := bantuan
   END;
  END;
 END;
Writeln(' =======================================');
writeln('  TAMPILAN DATA SETELAH DIURUTKAN');
Writeln(' =======================================');
for i:=1 to N do writeln('  ',data[i],' ');
writeln;
Writeln(' =======================================');
writeln('  Banyak data     ',N);
writeln('  Jumlah data     ',Jum:4);
writeln('  Rata-rata       ',rata:4:2);
writeln('  Variansi        ',varian:4:2);
writeln('  Standar Dev     ',SD:4:2);
writeln('  Median          ',med:4:2);
writeln('  Minimum         ',data[1]:4);
writeln('  Maximum         ',data[N]:4);
Writeln(' =======================================');
write(' Mau diulang input datanya (Y/T)? ');readln(jaw);
until upcase(jaw)<>'Y';
end.
