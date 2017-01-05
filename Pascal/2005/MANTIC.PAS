uses ifer2,graph;
const kr : array[1..9] of string = ('Sarkana','OranØa','Dzeltena','Zaëa','GaiÕizila','TumÕizila','Violeta','Rozƒ','Zelta');
var vards,inv,dzs,trkr:string;
    sas,dfg:longint;
var krasa: array[1..9] of integer;

Function saska(df:string):string;
var sf:integer;
var iel,inc:string;
begin
iel:='';
inc:='';
for sf:=1 to 9 do
begin
krasa[sf]:=0;
end;

for sf:=1 to length(df) do
begin
     if pande(sf,df) = 'A' then begin iel:='1'; krasa[1]:=krasa[1]+1; end
else if pande(sf,df) = ' ' then begin iel:='2'; krasa[2]:=krasa[2]+1; end
else if pande(sf,df) = 'B' then begin iel:='3'; krasa[3]:=krasa[3]+1; end
else if pande(sf,df) = 'C' then begin iel:='4'; krasa[4]:=krasa[4]+1; end
else if pande(sf,df) = '¶' then begin iel:='5'; krasa[5]:=krasa[5]+1; end
else if pande(sf,df) = 'D' then begin iel:='6'; krasa[6]:=krasa[6]+1; end
else if pande(sf,df) = 'E' then begin iel:='7'; krasa[7]:=krasa[7]+1; end
else if pande(sf,df) = 'í' then begin iel:='8'; krasa[8]:=krasa[8]+1; end
else if pande(sf,df) = 'F' then begin iel:='9'; krasa[9]:=krasa[9]+1; end
else if pande(sf,df) = 'G' then begin iel:='1'; krasa[1]:=krasa[1]+1; end
else if pande(sf,df) = '•' then begin iel:='2'; krasa[2]:=krasa[2]+1; end
else if pande(sf,df) = 'H' then begin iel:='3'; krasa[3]:=krasa[3]+1; end
else if pande(sf,df) = 'I' then begin iel:='4'; krasa[4]:=krasa[4]+1; end
else if pande(sf,df) = '¡' then begin iel:='5'; krasa[5]:=krasa[5]+1; end
else if pande(sf,df) = 'J' then begin iel:='6'; krasa[6]:=krasa[6]+1; end
else if pande(sf,df) = 'K' then begin iel:='7'; krasa[7]:=krasa[7]+1; end
else if pande(sf,df) = 'è' then begin iel:='8'; krasa[8]:=krasa[8]+1; end
else if pande(sf,df) = 'L' then begin iel:='9'; krasa[9]:=krasa[9]+1; end
else if pande(sf,df) = 'ê' then begin iel:='1'; krasa[1]:=krasa[1]+1; end
else if pande(sf,df) = 'M' then begin iel:='2'; krasa[2]:=krasa[2]+1; end
else if pande(sf,df) = 'N' then begin iel:='3'; krasa[3]:=krasa[3]+1; end
else if pande(sf,df) = 'î' then begin iel:='4'; krasa[4]:=krasa[4]+1; end
else if pande(sf,df) = 'O' then begin iel:='5'; krasa[5]:=krasa[5]+1; end
else if pande(sf,df) = 'P' then begin iel:='6'; krasa[6]:=krasa[6]+1; end
else if pande(sf,df) = 'R' then begin iel:='7'; krasa[7]:=krasa[7]+1; end
else if pande(sf,df) = 'S' then begin iel:='8'; krasa[8]:=krasa[8]+1; end
else if pande(sf,df) = '¾' then begin iel:='9'; krasa[9]:=krasa[9]+1; end
else if pande(sf,df) = 'T' then begin iel:='1'; krasa[1]:=krasa[1]+1; end
else if pande(sf,df) = 'U' then begin iel:='2'; krasa[2]:=krasa[2]+1; end
else if pande(sf,df) = 'Ç' then begin iel:='3'; krasa[3]:=krasa[3]+1; end
else if pande(sf,df) = 'V' then begin iel:='4'; krasa[4]:=krasa[4]+1; end
else if pande(sf,df) = 'Z' then begin iel:='5'; krasa[5]:=krasa[5]+1; end
else if pande(sf,df) = 'Ï' then begin iel:='6'; krasa[6]:=krasa[6]+1; end
else iel:=pande(sf,df);
insert(iel,inc,length(inc)+1);
end;
saska:=inc;
end;

function kopa(as:string):integer;
var sd,kl:integer;
label beig;
begin
kl:=0;
sd:=0;
sd:=0;
for sd:=1 to length(as) do
begin
if pande(sd,as) = ' ' then goto beig;
if pande(sd,as) = '' then goto beig;
kl:=kl+strlong(pande(sd,as));
beig:
end;
if kl<0 then halt;
kopa:=kl;
end;

begin
vards:='';
inv:='';
for dfg:=1 to 25 do
begin
writeln;
end;

gotoxy(1,1); write('Vƒrds: '); vards:=ievad;
if vards='' then halt;
if vards=' ' then halt;
writeln;
vards:=parvt(vards);
inv:=saska(vards);
write('Vƒrds ciparos : ',inv);
writeln;
trkr:=kr[kopa(longstr(kopa(longstr(kopa(inv)))))];
write('Vƒrda un uzvƒrda krƒsa ir ',trkr);
writeln;
writeln;
for dfg:=1 to 9 do
begin
writeln(krasa[dfg],'   ',kr[dfg]);
end;
writeln;
writeln;
writeln('Piemeram 23 08 1989');
write('Dzimsanas diena : ');
dzs:='';
dzs:=ievadc;
if dzs='' then halt;
writeln;
write('Tava dzimÕanas dienas krasa ir ',kr[kopa(longstr(kopa(longstr(kopa(dzs)))))]);
writeln;
repeat until keypressed;
end.