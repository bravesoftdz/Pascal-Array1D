Program mencari_bilangan_terbesar;
uses wincrt; 
var
   bil:array[1..100] of integer; 
   terbesar,terkecil,i,n :integer;
begin 
     write('Masukkan banyak bilangan =');readln(n);
     for i:= 1 to n do
         begin 
           write('Bilangan ke ',i,' = ');readln(bil[i]); 
         end; 
         terbesar:=bil[1]; 
         terkecil:=bil[1];
         for i:= 2 to n do 
           if bil[i] > terbesar then terbesar:=bil[i] 
           else 
             if bil[i]  < terkecil then terkecil:=bil[i];
         writeln('Bilangan terbesar =',terbesar); 
         writeln('Bilangan terkecil =',terkecil); 
end.