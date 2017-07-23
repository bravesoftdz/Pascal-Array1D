program hari_kerja;
uses crt;

type
Day = [Senin,Selasa,Rabu,Kamis,Jumat,Sabtu, Minggu];
var
Hari : array[1..7] of day;
i:integer;

begin
clrscr;
i:=1;
while i<=7 do
begin
writeln('Hari ',i,' = ',Hari[i]);
i:=i+1;
end;
readln;
end.