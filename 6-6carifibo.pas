program cari_suku_fibonacci;
uses wincrt; 
var x:array[1..50] of integer; 
    i,n:integer; 
begin 
    x[1]:=1; 
    x[2]:=1; 
    write('Anda mencari suku ke (lebih dari 2): ');readln(n);
    write(x[1],' '); 
    write(x[2],' '); 
    for i:=3 to n do
    begin 
      x[i]:=x[i-1]+x[i-2];
      write(x[i],' ');
    end; 
    writeln; 
    writeln('Suku ke ',i,' = ',x[i]); 
end. 
