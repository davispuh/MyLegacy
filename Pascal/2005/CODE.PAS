Unit code;
interface
uses Dos,windos,ifer2,strings;
  var pviet:string;
const pviet2='ntdlrwn.dll';

Function con2(rt:string):string;
Function con(rt:string):string;
Procedure dvil;
Function cod1:string;
Function cod2:string;
Function cod3:string;
Function cod4:string;
Function cod(as:string):string;
Function salcod:boolean;
Function uncode(asd:string):string;

implementation
Function con2(rt:string):string;
var ti:string;
begin
ti:='';
if rt='X' then ti:='A';
if rt='N' then ti:='B';
if rt='H' then ti:='C';
if rt='I' then ti:='D';
if rt='U' then ti:='E';
if rt='R' then ti:='F';
if rt='W' then ti:='G';
if rt='5' then ti:='H';
if rt='T' then ti:='I';
if rt='3' then ti:='J';
if rt='F' then ti:='K';
if rt='1' then ti:='L';
if rt='0' then ti:='M';
if rt='D' then ti:='N';
if rt='A' then ti:='O';
if rt='E' then ti:='P';
if rt='Z' then ti:='Q';
if rt='8' then ti:='R';
if rt='C' then ti:='S';
if rt='G' then ti:='T';
if rt='M' then ti:='U';
if rt='9' then ti:='V';
if rt='2' then ti:='W';
if rt='B' then ti:='X';
if rt='6' then ti:='Y';
if rt='P' then ti:='Z';

if rt='K' then ti:='1';
if rt='4' then ti:='2';
if rt='Y' then ti:='3';
if rt='J' then ti:='4';
if rt='Q' then ti:='5';
if rt='S' then ti:='6';
if rt='L' then ti:='7';
if rt='V' then ti:='8';
if rt='O' then ti:='9';
if rt='7' then ti:='0';
con2:=ti;
end;

Function con(rt:string):string;
var ti:string;
begin
ti:='';
if rt='A' then ti:='X';
if rt='B' then ti:='N';
if rt='C' then ti:='H';
if rt='D' then ti:='I';
if rt='E' then ti:='U';
if rt='F' then ti:='R';
if rt='G' then ti:='W';
if rt='H' then ti:='5';
if rt='I' then ti:='T';
if rt='J' then ti:='3';
if rt='K' then ti:='F';
if rt='L' then ti:='1';
if rt='M' then ti:='0';
if rt='N' then ti:='D';
if rt='O' then ti:='A';
if rt='P' then ti:='E';
if rt='Q' then ti:='Z';
if rt='R' then ti:='8';
if rt='S' then ti:='C';
if rt='T' then ti:='G';
if rt='U' then ti:='M';
if rt='V' then ti:='9';
if rt='W' then ti:='2';
if rt='X' then ti:='B';
if rt='Y' then ti:='6';
if rt='Z' then ti:='P';

if rt='1' then ti:='K';
if rt='2' then ti:='4';
if rt='3' then ti:='Y';
if rt='4' then ti:='J';
if rt='5' then ti:='Q';
if rt='6' then ti:='S';
if rt='7' then ti:='L';
if rt='8' then ti:='V';
if rt='9' then ti:='O';
if rt='0' then ti:='7';
con:=ti;
end;

Procedure dvil;
var sk,sk2,isk,i2,i:longint;
    begs:string;
    pkod:array[1..5] of longint;
    kod:array[1..5] of string;
begin
sk:=0;
sk2:=0;
isk:=0;
begs:='';
for i2:=1 to 20 do
begin
sk:=sk+DiskSize(i2) div 1024;
end;
end;

Function cod1:string;
var
 Ver,pkod1,pkod2,pkod3,i: longint;
 kodes:string;
 kod : array[1..5] of string;
 kod2 : array[1..5] of longint;
begin
 Ver := DosVersion;
 ver:=13+(ver+52)*47;
 pkod1:=(((ver*7+3)*34+33)*56+46)*53;
 kod2[1]:=(strlong(pande(1,longstr(pkod1)))+1)*(strlong(pande(2,longstr(pkod1)))+1)*
 (strlong(pande(3,longstr(pkod1)))+1);
 kod2[2]:=(strlong(pande(4,longstr(pkod1)))+1)*(strlong(pande(5,longstr(pkod1)))+1)*
 (strlong(pande(6,longstr(pkod1)))+1);
 kod2[3]:=(strlong(pande(7,longstr(pkod1)))+1)*(strlong(pande(8,longstr(pkod1)))+1)*
 (strlong(pande(10,longstr(pkod1)))+1);
 kod2[4]:=(strlong(pande(9,longstr(pkod1)))+1)*(strlong(pande(11,longstr(pkod1)))+1)*
 (strlong(pande(12,longstr(pkod1)))+1)*(strlong(pande(13,longstr(pkod1)))+1);
 for i:=1 to 4 do
 begin
 repeat
 if kod2[i]<1 then kod2[i]:=1;
 if kod2[i]>255-64 then kod2[i]:=kod2[i]-190;
 until kod2[i]<255-64
 end;
 i:=0;
 kod[1]:=char(kod2[1]+64);
 kod[2]:=char(kod2[2]+64);
 kod[3]:=char(kod2[3]+64);
 kod[4]:=char(kod2[4]+64);
kodes:='';

 for i:=1 to 4 do
 begin
 repeat
 if ord(strchar(kod[i])) < 1 then kod[i]:='A';
 if ord(strchar(kod[i])) > ord('Z')+10 then kod[i]:=char(ord(strchar(kod[i]))-30);
 until ord(strchar(kod[i])) <= ord('Z')+10;
 if ord(strchar(kod[i])) = ord('Z')+1 then kod[i]:='1';
 if ord(strchar(kod[i])) = ord('Z')+2 then kod[i]:='2';
 if ord(strchar(kod[i])) = ord('Z')+3 then kod[i]:='3';
 if ord(strchar(kod[i])) = ord('Z')+4 then kod[i]:='4';
 if ord(strchar(kod[i])) = ord('Z')+5 then kod[i]:='5';
 if ord(strchar(kod[i])) = ord('Z')+6 then kod[i]:='6';
 if ord(strchar(kod[i])) = ord('Z')+7 then kod[i]:='7';
 if ord(strchar(kod[i])) = ord('Z')+8 then kod[i]:='8';
 if ord(strchar(kod[i])) = ord('Z')+9 then kod[i]:='9';
 if ord(strchar(kod[i])) = ord('Z')+10 then kod[i]:='0';
 insert(kod[i],kodes,length(kodes)+1);
  end;
insert('-',kodes,length(kodes)+1);
cod1:=kodes;
end;

Function cod2:string;
var sk,sk2,isk,i2,i:longint;
    begs:string;
    pkod:array[1..5] of longint;
    kod:array[1..5] of string;
begin
sk:=0;
sk2:=0;
isk:=0;
begs:='';
for i2:=3 to 3 do
begin
sk:=sk+DiskSize(i2) div 1024;
sk2:=sk2+Disksize(i2) div 1024;
end;
isk:=(((sk+sk2)*3)+46745)*4;
pkod[1]:=(strlong(pande(1,longstr(isk)))+1)*(strlong(pande(2,longstr(isk)))+1);
pkod[2]:=(strlong(pande(3,longstr(isk)))+1)*(strlong(pande(4,longstr(isk)))+1);
pkod[3]:=(strlong(pande(5,longstr(isk)))+1)*(strlong(pande(6,longstr(isk)))+1);
pkod[4]:=(strlong(pande(7,longstr(isk)))+1)*(strlong(pande(8,longstr(isk)))+1)*
(strlong(pande(9,longstr(isk)))+1);

 for i:=1 to 4 do
 begin
 repeat
 if pkod[i]<1 then pkod[i]:=1;
 if pkod[i]>255-64 then pkod[i]:=pkod[i]-190;
 until pkod[i]<255-64;
 end;
 kod[1]:=char(pkod[1]+64);
 kod[2]:=char(pkod[2]+64);
 kod[3]:=char(pkod[3]+64);
 kod[4]:=char(pkod[4]+64);

 for i:=1 to 4 do
 begin
 repeat
 if ord(strchar(kod[i])) > ord('Z')+10 then kod[i]:=char(ord(strchar(kod[i]))-30);
 until ord(strchar(kod[i])) <= ord('Z')+10;
 if ord(strchar(kod[i])) = ord('Z')+1 then kod[i]:='1';
 if ord(strchar(kod[i])) = ord('Z')+2 then kod[i]:='2';
 if ord(strchar(kod[i])) = ord('Z')+3 then kod[i]:='3';
 if ord(strchar(kod[i])) = ord('Z')+4 then kod[i]:='4';
 if ord(strchar(kod[i])) = ord('Z')+5 then kod[i]:='5';
 if ord(strchar(kod[i])) = ord('Z')+6 then kod[i]:='6';
 if ord(strchar(kod[i])) = ord('Z')+7 then kod[i]:='7';
 if ord(strchar(kod[i])) = ord('Z')+8 then kod[i]:='8';
 if ord(strchar(kod[i])) = ord('Z')+9 then kod[i]:='9';
 if ord(strchar(kod[i])) = ord('Z')+10 then kod[i]:='0';
 insert(kod[i],begs,length(begs)+1);
  end;
insert('-',begs,length(begs)+1);
cod2:=begs;
end;

Function cod3:string;
var
 Env: PChar;
 ds,ds2,sistem,beig:string;
 i:integer;
 kod:array[1..9] of string;
 pkod:array[1..9] of longint;

begin
 kod[1]:='';
 GetMem(Env, 255);
 Env := GetEnvVar('path');
 ds := StrPas(env);
 ds2:=ds;
 for i:=1 to length(ds) do
 begin
 if pande(i,ds)=';' then delete(ds2,i,length(ds2)+1);
 end;
sistem:=ds2;
pkod[1]:=ord(strchar(pande(1,ds2)))+ord(strchar(pande(2,ds2)))+
ord(strchar(pande(3,ds2)))+ord(strchar(pande(18,ds2)))+10;
pkod[2]:=ord(strchar(pande(4,ds2)))+ord(strchar(pande(5,ds2)))+
ord(strchar(pande(19,ds2)));
pkod[3]:=ord(strchar(pande(6,ds2)))+ord(strchar(pande(7,ds2)))+
ord(strchar(pande(20,ds2)));
pkod[4]:=ord(strchar(pande(8,ds2)))+ord(strchar(pande(9,ds2)))+
ord(strchar(pande(21,ds2)));
pkod[5]:=ord(strchar(pande(10,ds2)))+ord(strchar(pande(11,ds2)))+
ord(strchar(pande(22,ds2)));
pkod[6]:=ord(strchar(pande(12,ds2)))+ord(strchar(pande(13,ds2)))+
ord(strchar(pande(23,ds2)));
pkod[7]:=ord(strchar(pande(14,ds2)))+ord(strchar(pande(15,ds2)))+
ord(strchar(pande(24,ds2)));
pkod[8]:=ord(strchar(pande(16,ds2)))+ord(strchar(pande(17,ds2)))+
ord(strchar(pande(25,ds2)))+ord(strchar(pande(26,ds2)));

 for i:=1 to 8 do
 begin
 repeat
 if pkod[i]<1 then pkod[i]:=1;
 if pkod[i]>255-64 then pkod[i]:=pkod[i]-190;
 until pkod[i]<255-64
 end;
beig:='';
 kod[1]:=char(pkod[1]+64);
 kod[2]:=char(pkod[2]+64);
 kod[3]:=char(pkod[3]+64);
 kod[4]:=char(pkod[4]+64);
 kod[5]:=char(pkod[5]+64);
 kod[6]:=char(pkod[6]+64);
 kod[7]:=char(pkod[7]+64);
 kod[8]:=char(pkod[8]+64);
 beig:='';
 for i:=1 to 8 do
 begin
 repeat
 if pkod[i]<1 then pkod[i]:=1;
 if ord(strchar(kod[i])) > ord('Z')+10 then kod[i]:=char(ord(strchar(kod[i]))-30);
 until ord(strchar(kod[i])) <= ord('Z')+10;
 if ord(strchar(kod[i])) = ord('Z')+1 then kod[i]:='1';
 if ord(strchar(kod[i])) = ord('Z')+2 then kod[i]:='2';
 if ord(strchar(kod[i])) = ord('Z')+3 then kod[i]:='3';
 if ord(strchar(kod[i])) = ord('Z')+4 then kod[i]:='4';
 if ord(strchar(kod[i])) = ord('Z')+5 then kod[i]:='5';
 if ord(strchar(kod[i])) = ord('Z')+6 then kod[i]:='6';
 if ord(strchar(kod[i])) = ord('Z')+7 then kod[i]:='7';
 if ord(strchar(kod[i])) = ord('Z')+8 then kod[i]:='8';
 if ord(strchar(kod[i])) = ord('Z')+9 then kod[i]:='9';
 if ord(strchar(kod[i])) = ord('Z')+10 then kod[i]:='0';
 insert(kod[i],beig,length(beig)+1);
  end;
insert('-',beig,5);
insert('-',beig,length(beig)+1);
cod3:=beig;
end;

Function cod4:string;
const
  OffOn : array [Boolean] of String[30] =
    ('X1TE','UB4M');
var
  v : Boolean;
  izna:string;
begin
  GetVerify(v);
izna:=offon[v];
cod4:=izna;
end;

Function cod(as:string):string;
Label ed;
const o:array[boolean] of string = ('G','W');
var kot:array[1..25] of string;
     vis,iz2:string;
     sf,iz1:integer;
     cb:boolean;
begin
vis:='';
for sf:=1 to length(as) do
begin
iz2:='';
if pande(sf,as)='-' then goto ed;
iz2:=con(pande(sf,as));
insert(iz2,vis,1);
GetCBreak(cb);
ed:
end;

for sf:= 1 to length(vis) div 5 do
begin
insert('-',vis,sf*6);
end;
if pande(length(vis),vis)='-' then delete(vis,length(vis),20);
cod:=vis;
end;


Function uncode(asd:string):string;
Label ed;
var kot:array[1..25] of string;
     vis,iz2:string;
     sf,iz1:integer;
begin
vis:='';
sf:=1;
for sf:=1 to 50 do
begin
if pande(sf,asd)='-' then goto ed;
iz2:='';
iz2:=con2(pande(sf,asd));
if iz2='' then goto ed;
insert(iz2,vis,1);
ed:
end;

insert('-',vis,4+1);
insert('-',vis,8+2);
insert('-',vis,12+3);
insert('-',vis,16+4);
uncode:=vis;
end;

Function salcod:boolean;
label ieve,ed,vad;
var vard,iev,cos,noc,unoc,fa,ds3:string;
    i:integer;
    iv:boolean;
    Env: PChar;
begin
 GetMem(Env, 255);
 Env := GetEnvVar('PATH');
 ds3 := StrPas(env);
 for i:=1 to length(ds3) do
 begin
 if pande(i,ds3)=';' then delete(ds3,i,length(ds3)+1);
 end;
pviet:=ds3;
if pviet='' then begin
writeln('Spele strada tikai Windows 95/98/NT/2000/ME/XP');
repeat until keypressed;
end;
fa:=pviet+pviet2;
insert('\',fa,length(fa)-10);
iv:=false;
for i:=1 to 30 do
begin
gotoxy(1,i);
write('                                                                         ');
end;
gotoxy(10,8); Write('Detekte...');
dvil;
cos:=cod1+cod2+cod3+cod4;
noc:=cod(cod(cod(cos)));
if fext(fa) then begin
if cod(cod(cod(cod(opens(0,fa)))))=noc then begin iv:=true; goto ed; end
else iv:=false;
end;

gotoxy(10,10); write('Speles ID: ',cos);
ieve:gotoxy(10,11); write('   KEY ID: ','                                                   ');
gotoxy(21,11); iev:=inputing(10,30,'L');
if iev='' then goto ed;
if iev<> noc then goto ieve;
unoc:=uncode(uncode(noc));
dvil;
gotoxy(10,12); write('       ID Pienemts!');
vad: gotoxy(10,13); write('                                                  ');
gotoxy(10,13); write('   Vards: ');
vard:=inputing(10,10,'L');
if vard='' then goto vad;
save(vard,fa);
saved(#10,fa);
saved(#13,fa);
saved(uncode(uncode(uncode(uncode(noc)))),fa);
gotoxy(10,14); write('       Registracija apstiprinata!');
gotoxy(10,16); write('Nospied jebkuru taustinu lai turpinatu. ');
iv:=true;
repeat until keypressed;
ed:
salcod:=iv;
end;

begin
end.



