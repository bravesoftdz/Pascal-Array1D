program looping1;
uses winCrt;
var N,i,j,jum,pos,k,l,pot :integer; Rata,jumvar,varian,sd,med:real;
x:array[1..10] of integer; ans:char;  

begin
repeat
clrscr;
writeln('  DATA INPUT ');
Writeln(' =============================');
write(' The number of data : ');readln(N);
writeln(' =============================');
i:=1;
while i<=N do     
begin        
  write('       The ',i,'th data = ');readln(x[i]);
  jum:=jum+x[i];
  i:=i+1;  
end;
rata:=jum/N;
repeat
jumvar:=jumvar+sqr(x[i]-rata);
until i>N;
varian:=jumvar/N;
sd:=sqrt(varian);
clrscr;
writeln(' ============================');
writeln(' DATA HAVE BEEN ENTERED');
writeln(' ============================');
for i:=1 to N do writeln(' x[',i,'] = ',x[i]);
writeln(' ============================');
{data ordering process}
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
WRITELN('DATA AFTER ORDERING PROCESS : ');
writeln(' ============================');
for i:=1 to N do writeln(' x[',i,'] = ',x[i]);
writeln(' ============================');
write(' Input the ith data? ');Readln(j);
if j>N then writeln(' None of the data, the data number has only ',N)
   else writeln(' The ',j,'th is ',x[j]);
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
writeln('  Average     ',rata:4:2);
writeln('  Sum        ',Jum:4);
writeln('  Variance      ',varian:4:2);
writeln('  Dev Standart   ',sd:4:2);
writeln('  Median        ',med:4:2);
writeln('  Minimum value ',x[1]:4);
Writeln('  Maximum value ',x[N]:4);
write(' Do you want to repeat for the new data? (Y/T) ');
readln(ans);
until Upcase(ans)<>'Y';
readln;
end.