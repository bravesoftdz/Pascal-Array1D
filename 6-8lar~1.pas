Program Larik2;
Uses Wincrt; 
Var nama : array [1..100] of string;
    nilai : array [1..100] of integer;
    n,i,max,min : integer; 
Begin 
  Writeln('Nilai Mahasiswa '); 
  Writeln('==============='); 
  Writeln; 
  Write('Masukkan Jumlah Mahasiswa: ');readln(n); 
  Writeln;Writeln('Pemasukan Data Nilai Mata kuliah ProKom 1'); 
  For i:= 1 to n do 
    begin
    write('Nama Mahasiswa ke-',i,' = ');readln(nama[i]);
    write('Nilai mahasiswa ke-',i,' = ');readln(nilai[i]);
    writeln;
    end;
  Writeln;
  clrscr; 
  writeln;
  Writeln('DAFTAR NILAI MAHASISWA MATA KULIAH PROKOM 1 ');
  max:=nilai[1]; 
  min:=nilai[1];
  Writeln('-----------------------------------------------------------');
  gotoxy(2,4);write(' NO ');
  gotoxy(10,4);write(' NAMA ');
  gotoxy(30,4);writeln(' NILAI ');
  gotoxy(1,5);Writeln('-----------------------------------------------------------');
  For i:= 1 to n do 
    Begin 
      gotoxy(2,5+i);Write(i);
      gotoxy(12,5+i);Write(nama[i]);
      gotoxy(32,5+i);Writeln(nilai[i]);
      if max<nilai[i] then max:=nilai[i];
         
      if min > nilai[i] then min:=nilai[i];
    End;
  Writeln('-----------------------------------------------------------');
  Writeln;
  Writeln('Nilai Maximal: ',max); 
  Writeln('Nilai Minimal: ',min); 
End.