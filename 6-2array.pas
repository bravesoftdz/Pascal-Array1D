program looping1;
uses winCrt;
var N,i,j,jum,k,l,pot,pos :integer; Rata,jumvar,varian,sd,med:real;
x:array[1..50] of integer;
 
begin       
clrscr;
writeln('  PROGRAM INPUT DATA');
Writeln(' =============================');
write(' Banyak data : ');readln(N);
writeln(' =============================');
i:=1;
while i<=N do     
begin        
  write('       Data ke ',i,' = ');readln(x[i]);
  jum:=jum+x[i];
  i:=i+1;  
end;
rata:=jum/N;
repeat
jumvar:=jumvar+sqr(x[i]-rata);
i:=i+1;
until i>N;
varian:=jumvar/N;
sd:=sqrt(varian);
writeln(' ============================');
clrscr;
writeln('DATA YANG TELAH DIMASUKKAN ');
writeln(' ============================');
for i:=1 to N do writeln(' x[',i,'] = ',x[i]);
{Proses Pengurutan data}
FOR k := 1 TO N-1 DO
 BEGIN 
 FOR l := k+1 TO N DO
  BEGIN
  IF x[k] > x[l] THEN
   BEGIN 
   Pot := x[l];
   x[l] := x[k];
   x[k] := Pot
   END;
  END;
END;
WRITELN;
writeln(' ============================');
WRITELN('DATA SETELAH DIURUTKAN : ');
writeln(' ============================');
for i:=1 to N do writeln(' x[',i,'] = ',x[i]);
writeln(' ============================');
write(' DATA KE BERAPA? ');Readln(j);
if j>N then writeln(' Data tidak ada, banyak data hanya ',N)
else writeln(' Data ke ',j,' adalah ',x[j]);
writeln(' ============================');
if N mod 2 = 1 then
begin
pos:= (N div 2)+1;
med:=x[pos];
end else
begin
pos:=N div 2 ;
med:=1/2*(x[pos]+x[pos+1]);
end;
{=========================================}
writeln('  Rata-rata     ',rata:4:2);
writeln('  Jumlah        ',Jum:4);
writeln('  Variansi      ',varian:4:2);
writeln('  Standar dev   ',sd:4:2);
writeln('  Median        ',med:4:2);
writeln('  Nilai Minimum ',x[1]:4);
Writeln('  Nilai Maximum ',x[N]:4);
end.