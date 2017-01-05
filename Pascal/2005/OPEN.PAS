Function open(fail:string):string;
var
  F: Text;
  Ch: string;
  teks:string;
begin
teks:='';
Assign(F,fail);
Reset(F);
Read(F, teks);
open:=teks;
end;

begin
writeln('Start');
writeln('');
writeln(open('Spele.sav'));
readln;
end.

