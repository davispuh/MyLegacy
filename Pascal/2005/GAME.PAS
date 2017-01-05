uses graph,dos,ifer2,ifer,code;

Label nlimen,dne,dne2,ni,ni2;

var
a,b,ki,ki2,iziet,zs,zim : integer;
         tri : array[1..150] of string[20];
           k : char;
    tues,izv,varde : string;
       versi : boolean;
   Int1CSave : Pointer;

Procedure vers(sk,auf:integer);
begin
autors;
SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
setcolor(7);
OutTextXY(90,430,'Versija:');
setcolor(9);
outtextxy(20,6,Varde);
OutTextXY(210,430,'6.5');
setcolor(6);
if sk=1 then gzim(140,129+auf,8);
if sk=1 then gzim(250,129+auf,8);
if sk=1 then gzim(259,99+auf,8);
if sk=1 then gzim(177,159+auf,6);
if sk=1 then mzim(218,174+auf);
if sk=3 then gzim(234,69+auf,7);
if sk=3 then gzim(123,69+auf,9);
if sk=4 then gzim(179,87+auf,6);
if sk=4 then mzim(219,101+auf);
if sk=4 then gzim(297,186+auf,6);
if sk=6 then gzim(179,87+auf,6);
if sk=7 then gzim(332,69+auf,7);

setcolor(7);
if sk=2 then gzim(127,147+auf,10);
if sk=2 then gzim(152,147+auf,6);
if sk=5 then gzim(125,86+auf,9);
if sk=5 then gzim(147,86+auf,9);
if sk=5 then gzim(172,86+auf,8);
if sk=6 then gzim(280,153+auf,8);
if sk=6 then gzim(144,173+auf,6);
if sk=6 then mzim(185,188+auf);
if sk=7 then gzim(167,142+auf,7);
if sk=7 then gzim(200,142+auf,7);
if sk=10 then gzim(140,79+auf,8);
setcolor(4);
if sk=2 then gzim(216,249+auf,9);
end;

Function del(kur:integer; kas:string):longint;
var
    stry : string;
  stri,y : longint;

begin
stry:=kas;

kur:=kur+1;
delete(stry,1,kur-1);
delete(stry,2,length(stry));
stri:=ord(StrChar(stry))-64;
if stri <= 0 then stri:=0;
if stri > 16 then stri:=0;
if stri = 12 then stri:=0;
if stri = 15 then stri:=0;

del:=stri;
end;

Function del2(kur:integer; kas:string):longint;
var
    stry : string;
  stri,y : longint;

begin
stry:=kas;
kur:=kur;
delete(stry,1,kur-1);
delete(stry,2,length(stry));
stri:=ord(StrChar(stry))-100;
if stri <= 0 then stri:=1;
if stri > 250 then stri:=1;
del2:=stri;
end;

Function del3(kur:integer; kas:string):string;
var
    stry : string;
  stri,y : longint;

begin
stry:=kas;
kur:=kur;
delete(stry,1,20*kur-19-kur);
delete(stry,20,length(stry)+1);
del3:=stry;
end;

Function numStr(as:string) : string;
Label 10;
var qw:String;
begin
qw:='';
qw:=as;
if StrLong(as) < 10 then begin insert ('00000000',qw,1); goto 10; end;
if StrLong(as) < 100 then begin insert ('0000000',qw,1); goto 10; end;
if StrLong(as) < 1000 then begin insert ('000000',qw,1); goto 10; end;
if StrLong(as) < 10000 then begin insert ('00000',qw,1); goto 10; end;
if StrLong(as) < 100000 then begin insert ('0000',qw,1); goto 10; end;
if StrLong(as) < 1000000 then begin insert ('000',qw,1); goto 10; end;
if StrLong(as) < 10000000 then begin insert ('00',qw,1); goto 10; end;
if StrLong(as) < 100000000 then begin insert ('0',qw,1); goto 10; end;

10: numStr:=qw;
end;

procedure apv;
var fa :string;
var x,y :integer;
begin
fa:=levn1+longstr(levn2)+levn3;
for x:= 1 to izmerx do
for y:= 1 to izmery do

begin
 korxy[x,y]:=del(x,opens(y,fa));
end;

end;

Procedure malas;
var  FillIng: FillSettingsType;
viens,divs:integer;
begin
nerkvadr(0,1,0,15,1,false);
nerkvadr(1,0,20,0,1,true);
nerkvadr(20,0,20,15,1,false);
nerkvadr(0,15,20,15,1,true);

kvadr2(0,0,true,false,true,false);
kvadr2(20,0,true,false,false,true);
kvadr2(0,15,false,true,true,false);
kvadr2(20,15,false,true,false,true);
end;

{procedure akbid;
var  FillIng: FillSettingsType;
begin
if g=77 then begin
bidk1:=bidk1+1;
if bidk1 >=19 then bidk1:=bidk1-1;
akmens(bidk1,bidk2);
end;
if g=75 then begin
bidk1:=bidk1-1;
if bidk1 <=0 then bidk1:=bidk1+1;
akmens(bidk1,bidk2);
end;
if g=80 then begin
bidk2:=bidk2+1;
if bidk2 >=13 then bidk2:=bidk2-1;
akmens(bidk1,bidk2);
end;
if g=72 then begin
bidk2:=bidk2-1;
if bidk2 <=0 then bidk2:=bidk2+1;
akmens(bidk1,bidk2);
end
end; }

Procedure aiz(xxx,yyy:integer);
var  FillIng: FillSettingsType;
begin
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 0);
Bar (xxX-10,yyY-30,xxX+400,yyY+35);
end;

procedure ises;
var x,y:integer;
begin
tu:=0;
tu2:=0;

for x:= 0 to izmerx-1 do
for y:= 0 to izmery-1 do
begin
 if korxy[x,y]=2 then begin tu:=x; tu2:=y; end;
end;

if tu=0 then begin tu:=1; tu2:=1; korxy[1,1]:=2; end;
if tu2=0 then begin tu:=1; tu2:=1; korxy[1,1]:=2; end;

kurs(tu,tu2);
end;

procedure eras(fn:string);
var
 F:  file;
label 20;
begin
 Assign(F, fn);
 FileMode:=2;
 SetFAttr(F, Archive);
 if IOResult <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if exitcode <> 0 then goto 20;
  Reset(F,1);
 if DosError <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if IOResult <> 0 then goto 20;
 if exitcode <> 0 then goto 20;
 close(F);
 Erase(F);
 if DosError <> 0 then goto 20;
 if IOResult <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if exitcode <> 0 then goto 20;

20:
end;

Procedure saglab(viets:string);
label be;
var dfd2,df2,kl:integer;
begin
iziet:=del2(147,open(izv));
if iziet>levn2 then goto be;
save('',viets);
for dfd2:= 1 to 146 do
 begin
 df2:=random(155)+100;
 saved(char(df2),viets);
end;
dfd2:=0;

saved(char(levn2+100),viets);

for dfd2:= 1 to 53 do
 begin
 df2:=random(155)+100;
 saved(char(df2),viets);
 end;
be:
end;

Procedure rt(ko:integer);
begin
if ki<=0 then ki:=ko+3;
if ki>ko+3 then ki:=1;
end;

Procedure izkra(sd:integer);
var skai:integer;
begin
if sd=18 then skai:=1
else if sd=38 then skai:=2
else if sd=58 then skai:=3
else if sd=78 then skai:=4
else if sd=98 then skai:=5
else if sd=118 then skai:=6
else if sd=138 then skai:=7
else if sd=158 then skai:=8
else if sd=178 then skai:=9
else if sd=198 then skai:=10
else skai:=0;
if skai>=1 then begin
fons(3+skai,7);
kurs(4+skai,7); end;
end;

Procedure jaun;
    label beg,velre;
var di:searchrec;
    iv:string;
    df,dfd,z:integer;
    s:array[1..50] of string[15];
begin
clearviewport;
iv:='';
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
setcolor(6);
outtextxy(60+38,120-18-30,'IZVEIDOT JAUNU LIETOTAJU');
setcolor(7);
outtextxy(100,145,'LIETOTAJVARDS :  ');
vers(7,0);
velre: gotoxy(35,10); write('          ');
gotoxy(35,10);
iv:=inputing(3,8,'M');
if iv='' then goto beg;
z:=0;
FindFirst('*.vpl', anyfile, Di);
while DosError = 0 do
begin
  z:=z+1;
  s[z]:=di.name;
  delete(di.name,length(di.name)-3,5);
  if iv=di.name then goto velre;
  if z>=8 then
  begin
    gotoxy(25,13); write('Par dauz lietot'+char(160)+'ju.');
    gotoxy(25,14); write('Nospied jebkuru tausti'+char(238)+'u lai turpin'+char(160)+'tu...');
    repeat until KeyPressed;
    goto beg;
  end;
  FindNext(Di);
end;

insert('.vpl',iv,length(iv)+1);
writeln;
writeln;
for dfd:=1 to 10 do
begin
zale(4+dfd,7);
end;

dfd:=1;
save('',iv);
for dfd:= 1 to 146 do
 begin
 df:=random(155)+100;
 saved(char(df),iv);
 izkra(dfd);
 end;
dfd:=0;

saved(char(101),iv);

for dfd:= 1 to 53 do
 begin
 df:=random(155)+100;
 saved(char(df),iv);
 izkra(dfd+147);
end;

beg:
end;

Procedure dzes;
label mekbad,beg;
var di:searchrec;
    xx,yy,z:integer;
    e:char;
    izv:string;
    s:array[1..50] of string[15];

begin
clearviewport;
xx:=2;
yy:=4;
setbkcolor(0);
setcolor(6);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
outtextxy(xx*30+38,yy*30-18-30,'DZEST LIETOTAJU');
setbkcolor(0);
setcolor(7);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
z:=0;
FindFirst('*.vpl', anyfile, Di);
while DosError = 0 do
begin
  z:=z+1;
  s[z]:=di.name;
  delete(di.name,length(di.name)-3,5);
  outtextxy(xx*30+38,yy*30-18+z*30,di.name);
  if z>10 then goto mekbad;
  FindNext(Di);
end;
mekbad:
if z<=0 then goto beg;
ki:=1;
kurs(xx,yy);
izv:=s[1];
vers(3,0);
repeat
e:=inkey;

 if e = char(27) then goto beg;

 if e = char(72) then begin aizkr(xx,yy+ki-1); ki:=ki-1; ki:=pav(ki,z); kurs(xx,yy+ki-1); izv:=s[ki]; end;

 if e = char(80) then begin aizkr(xx,yy+ki-1); ki:=ki+1; ki:=pav(ki,z); kurs(xx,yy+ki-1); izv:=s[ki]; end;

until e=char(13);
eras(izv);
beg:
end;

Procedure rt32(ko:integer);
label pal,pale;
begin
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);

if ki2<=0 then begin
ki2:=1;
zim:=pav2(zim,1);
goto pale;
end;

if zim < 1 then begin
zim:=1;
if tri[ko]='' then begin zim:=1; ki2:=ki2+1; goto pale; end;
aiz(210,180);
aiz(210,210);
aiz(210,240);
aiz(210,270);
aiz(210,300);
if ko < iziet  then setcolor(2) else setcolor(4);
if ko = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+00+9,tri[ko]);
if ko+1 < iziet  then setcolor(2) else setcolor(4);
if ko+1 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+30+9,tri[ko+1]);
if ko+2 < iziet  then setcolor(2) else setcolor(4);
if ko+2 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+60+9,tri[ko+2]);
if ko+3 < iziet  then setcolor(2) else setcolor(4);
if ko+3 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+90+9,tri[ko+3]);
if ko+4 < iziet  then setcolor(2) else setcolor(4);
if ko+4 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+120+9,tri[ko+4]);

end;

pale:kurs(7-1,6+zim-1);

end;

Procedure rtx32(ko:integer);
label pal,pale;
begin
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
if ki2<=0 then begin ki2:=1;
zim:=pav2(zim,1);
goto pale;
end;

if zim < 1 then begin
zim:=1;
if tri[ko]='' then begin zim:=1; ki2:=ki2+1; goto pale; end;
aiz(210,180);
aiz(210,210);
aiz(210,240);
aiz(210,270);
aiz(210,300);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
setcolor(7);

if ko=1 then begin vers(4,0); setcolor(6); end;
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
outtextxy(210+7,6*30+00+9,tri[ko]);
setcolor(7);

SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
if ko+1=1 then setcolor(6);
outtextxy(210+7,6*30+30+9,tri[ko+1]);
setcolor(7);
if ko+2=1 then setcolor(6);
outtextxy(210+7,6*30+60+9,tri[ko+2]);
setcolor(7);
if ko+3=1 then setcolor(6);
outtextxy(210+7,6*30+90+9,tri[ko+3]);
setcolor(7);
if ko+4=1 then setcolor(6);
outtextxy(210+7,6*30+120+9,tri[ko+4]);
end;

pale:kurs(7-1,6+zim-1);

end;

function limek(nu:longint):string;
label mekbad;
var nosa,iznakl,izna:string;
    s:array[1..50] of string[15];
    z:integer;
    di:searchrec;

begin
z:=0;
iznakl:='';
nosa:='';
insert(levn3,nosa,1);
insert(longstr(nu),nosa,1);
insert(levn1,nosa,1);

FindFirst(nosa, anyfile, Di);
while DosError = 0 do
begin
  izna:=di.name;
  if di.name='' then goto mekbad;
  FindNext(Di);
end;
if izna='' then goto mekbad;
insert('levels\',izna,1);
if fext(izna)=false then goto mekbad;
iznakl:=opr(izna);
mekbad:
limek:=iznakl;
end;

Procedure rt3(ko:integer);
label pal;
begin
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);

zim:=pav2(zim,5);

if zim=5 then begin
zim:=5;
if tri[ko]='' then begin ki2:=ki2-1; goto pal; end;
aiz(210,180);
aiz(210,210);
aiz(210,240);
aiz(210,270);
aiz(210,300);
setcolor(4);
if ko-4 < iziet  then setcolor(2) else setcolor(4);
if ko-4 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+00+9,tri[ko-4]);
if ko-3 < iziet  then setcolor(2) else setcolor(4);
if ko-3 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+30+9,tri[ko-3]);
if ko-2 < iziet  then setcolor(2) else setcolor(4);
if ko-2 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+60+9,tri[ko-2]);
if ko-1 < iziet  then setcolor(2) else setcolor(4);
if ko-1 = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+90+9,tri[ko-1]);
if ko < iziet  then setcolor(2) else setcolor(4);
if ko = iziet  then setcolor(yellow);
outtextxy(210+7,6*30+120+9,tri[ko]);

end;

pal:kurs(7-1,6+zim-1);
end;

Procedure rtx3(ko:integer);
label pal;
begin
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);

if zim >= 6 then begin
zim:=5;
end;

if zim=5 then begin
zim:=5;
if tri[ko]='' then begin ki2:=ki2-1; goto pal; end;
aiz(210,180);
aiz(210,210);
aiz(210,240);
aiz(210,270);
aiz(210,300);
setcolor(7);
if ko-4=1 then begin vers(4,0); setcolor(6); end;
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);

outtextxy(210+7,6*30+00+9,tri[ko-4]);
setcolor(7);
if ko-3=1 then setcolor(6);
outtextxy(210+7,6*30+30+9,tri[ko-3]);
setcolor(7);
if ko-2=1 then setcolor(6);
outtextxy(210+7,6*30+60+9,tri[ko-2]);
setcolor(7);
if ko-1=1 then setcolor(6);
outtextxy(210+7,6*30+90+9,tri[ko-1]);
setcolor(7);
if ko=1 then begin vers(4,0); setcolor(6); end;
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);

outtextxy(210+7,6*30+120+9,tri[ko]);

end;

pal:kurs(7-1,6+zim-1);
end;

Procedure kus(x,y,da:integer);
label beij,vid;
var pi1,pi2,x2,y2:integer;
begin
x2:=x;
y2:=y;
if x=20 then begin
x:=1; y:=y+1;
if y>=13 then begin goto beij; end;
x:=x*30;
y:=y*30;
goto vid;
end;

x:=x*30;
y:=y*30;

if da=1 then begin
pi1:=30;
pi2:=0;
end

else if da=2 then begin
pi1:=-30;
pi2:=0;
end

else if da=3 then begin
pi1:=0;
pi2:=30;
end

else if da=4 then begin
pi1:=0;
pi2:=-30;
end

else if da=6 then begin
y2:=y2-1;
x2:=19;
x2:=x2*30;
y2:=y2*30;

setcolor(0);
line(x2,y2+27,x2+29,y2+27);
line(x2,y2+28,x2+29,y2+28);
line(x2,y2+29,x2+29,y2+29);
goto vid;
end

else if da=7 then begin
y2:=y2+1;
x2:=1;
x2:=x2*30;
y2:=y2*30;

setcolor(0);
line(x2,y2+27,x2+29,y2+27);
line(x2,y2+28,x2+29,y2+28);
line(x2,y2+29,x2+29,y2+29);
goto vid;
end

else if da=8 then begin
x2:=x2-1;
y2:=14;
x2:=x2*30;
y2:=y2*30;

setcolor(0);
line(x2,y2+27,x2+29,y2+27);
line(x2,y2+28,x2+29,y2+28);
line(x2,y2+29,x2+29,y2+29);
goto vid;
end
else if da=9 then begin
x2:=x2+1;
y2:=1;
x2:=x2*30;
y2:=y2*30;

setcolor(0);
line(x2,y2+27,x2+29,y2+27);
line(x2,y2+28,x2+29,y2+28);
line(x2,y2+29,x2+29,y2+29);
goto vid;
end

else begin pi1:=0; pi2:=0; end;


setcolor(0);
line(x+pi1,y+pi2+27,x+29+pi1,y+pi2+27);
line(x+pi1,y+pi2+28,x+29+pi1,y+pi2+28);
line(x+pi1,y+pi2+29,x+29+pi1,y+pi2+29);

vid:
setcolor(white);
line(x+10,y+27,x+20,y+27);
line(x+10,y+28,x+20,y+28);
line(x+10,y+29,x+20,y+29);
beij:
end;

Procedure sim(x,y:integer; pat:string);
begin
{A} if pat='A' then zimkva(x,y);
{B} if pat='B' then kurs(x,y);
{C} if pat='C' then zimfi(x,y);
{D} if pat='D' then zimc1(x,y);
{E} if pat='E' then zimc2(x,y);
{F} if pat='F' then zimc3(x,y);
{G} if pat='G' then zimc4(x,y);
{H} if pat='H' then zale(x,y);
{I} if pat='I' then begin fons(x,y); iks(x,y); end; {neredzama siena}
{J} if pat='J' then zimc5(x,y);
{K} if pat='K' then zimc6(x,y);
{L} {if pat='L' then zimc7(x,y);}
{M} if pat='M' then begin zale(x,y); iks(x,y); end;
{N} if pat='N' then udens(x,y);
{O} {if pat='O' then akmens(x,y);}
{P} if pat='P' then begin zimfi(x,y); iks(x,y); end;
{ } if pat=' ' then begin fons(x,y); end;
end;

Procedure savl(ku:string;df:boolean);
label bezs,bezs2,bez,ed;
var  hj,fg:integer;
     gald,gald2: string;
     i,i2,x,r,pd:integer;
     chr  : char;
     tkur : array[1..19,1..14] of char;
     ina  : array[0..16] of string;

begin
clearviewport;
x:=1;
r:=1;
pd:=0;

for i:=0 to 16 do
begin
ina[i]:='';
end;
i:=0;
i2:=0;
for i:=1 to 19 do
for i2:=1 to 14 do
begin
tkur[i,i2]:=' ';
end;
i:=0;
i2:=0;
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);

if df=true then begin
  setcolor(6);
  outtextxy(100,90,'JAUNS LIMENIS');
  setcolor(7);
  outtextxy(152,157,'        PIEMERAM : ');
  gotoxy(45,11); write('---- LEVEL NAME ----');
  outtextxy(134,177,'LIMENA NOSAUKUMS : ');
  gotoxy(45,12);
  vers(6,0);
  ina[0]:=inputing(10,20,'L');
  if ina[0]='' then goto ed;
end;

clearviewport;
malas;

gotoxy(7,7);

if df=false then begin
  ina[0]:=opr(ku);
  for i2:=1 to 14 do
  for i:=1 to 19 do
  begin
  tkur[i,i2]:=char(del(i,opens(i2,ku))+64);
  if tkur[i,i2]=char(64) then tkur[i,i2]:=' ';
  sim(i,i2,tkur[i,i2]);
  end;
end;

repeat
kus(x,r,pd);
chr:=inkey;
if chr= char(27) then begin goto bezs2; end;

if x=20 then begin
x:=1; r:=r+1;
if r=15 then begin r:=14; x:=19; goto bez; end;
end;
if chr= 'A' then begin x:=x+1; zimkva(x-1,r); tkur[x-1,r]:='A'; pd:=5; end;
if chr= 'B' then begin x:=x+1; kurs(x-1,r); tkur[x-1,r]:='B'; end;
if chr= 'C' then begin x:=x+1; zimfi(x-1,r); tkur[x-1,r]:='C'; pd:=5; end;
if chr= 'D' then begin x:=x+1; zimc1(x-1,r); tkur[x-1,r]:='D'; pd:=5; end;
if chr= 'E' then begin x:=x+1; zimc2(x-1,r); tkur[x-1,r]:='E'; pd:=5; end;
if chr= 'F' then begin x:=x+1; zimc3(x-1,r); tkur[x-1,r]:='F'; pd:=5; end;
if chr= 'G' then begin x:=x+1; zimc4(x-1,r); tkur[x-1,r]:='G'; pd:=5; end;
{*if chr= 'H' then begin x:=x+1; zale(x-1,r); tkur[x-1,r]:='H'; pd:=5; end;}
if chr= 'I' then begin x:=x+1; fons(x-1,r); iks(x-1,r); tkur[x-1,r]:='I' end;
if chr= 'J' then begin x:=x+1; zimc5(x-1,r); tkur[x-1,r]:='J'; pd:=5; end;
{*if chr= 'K' then begin x:=x+1; zimc6(x-1,r); tkur[x-1,r]:='K'; pd:=5; end;
{if chr= 'L' then begin x:=x+1; zimc1(x-1,r); tkur[x-1,r]:='L'; pd:=5; end;}

{*if chr= 'M' then begin x:=x+1; zale(x-1,r); tkur[x-1,r]:='M'; pd:=5; end;*}
if chr= 'N' then begin x:=x+1; udens(x-1,r); tkur[x-1,r]:='N'; pd:=5; end;
{if chr= 'O' then begin x:=x+1; zimc1(x-1,r); tkur[x-1,r]:='O'; pd:=5; end;}
{*if chr= 'P' then begin x:=x+1; zimfi(x-1,r); tkur[x-1,r]:='P'; pd:=5; end;}

if chr= 'a' then begin x:=x+1; zimkva(x-1,r); tkur[x-1,r]:='A'; pd:=5; end;
if chr= 'b' then begin x:=x+1; kurs(x-1,r); tkur[x-1,r]:='B'; pd:=5; end;
if chr= 'c' then begin x:=x+1; zimfi(x-1,r); tkur[x-1,r]:='C'; pd:=5; end;
if chr= 'd' then begin x:=x+1; zimc1(x-1,r); tkur[x-1,r]:='D'; pd:=5; end;
if chr= 'e' then begin x:=x+1; zimc2(x-1,r); tkur[x-1,r]:='E'; pd:=5; end;
if chr= 'f' then begin x:=x+1; zimc3(x-1,r); tkur[x-1,r]:='F'; pd:=5; end;
if chr= 'g' then begin x:=x+1; zimc4(x-1,r); tkur[x-1,r]:='G'; pd:=5; end;
if chr= 'h' then begin x:=x+1; zale(x-1,r); tkur[x-1,r]:='H'; pd:=5; end;
if chr= 'i' then begin x:=x+1; fons(x-1,r); iks(x-1,r); tkur[x-1,r]:='I'; pd:=5; end;
if chr= 'j' then begin x:=x+1; zimc5(x-1,r); tkur[x-1,r]:='J'; pd:=5; end;
if chr= 'k' then begin x:=x+1; zimc6(x-1,r); tkur[x-1,r]:='K'; pd:=5; end;
{if chr= 'l' then begin x:=x+1; zimc1(x-1,r); tkur[x-1,r]:='L'; pd:=5; end;}
if chr= 'm' then begin x:=x+1; zale(x-1,r); iks(x-1,r); tkur[x-1,r]:='M'; pd:=5; end;
if chr= 'n' then begin x:=x+1; udens(x-1,r); tkur[x-1,r]:='N'; pd:=5; end;
{if chr= 'o' then begin x:=x+1; zimc1(x-1,r); tkur[x-1,r]:='O'; pd:=5; end;}
if chr= 'p' then begin x:=x+1; zimfi(x-1,r); iks(x-1,r); tkur[x-1,r]:='P'; pd:=5; end;
if chr= ' ' then begin x:=x+1; fons(x-1,r); tkur[x-1,r]:=' '; pd:=5; end;

bez:

if chr=#77 then begin
if x<=19 then begin pd:=2; x:=x+1; end;
    if r<14 then begin
      if x=20 then begin x:=1; r:=r+1; pd:=6; end;
    end;
x:=pav2(x,19);
r:=pav2(r,14);
end;

if chr=#75 then begin
if x>=1 then begin pd:=1; x:=x-1; end;

    if r>1 then begin
      if x=0 then begin x:=19; r:=r-1; pd:=7; end;
    end;
x:=pav2(x,19);
r:=pav2(r,14);
end;

if chr=#80 then begin
if r<=14 then begin pd:=4; r:=r+1; end;
    if x<19 then begin
      if r=15 then begin r:=1; x:=x+1; pd:=8; end;
    end;
x:=pav2(x,19);
r:=pav2(r,14);
end;

if chr=#72 then begin
if r>=1 then begin pd:=3; r:=r-1; end;
    if x>1 then begin
      if r=0 then begin r:=14; x:=x-1; pd:=9; end;
    end;

x:=pav2(x,19);
r:=pav2(r,14);
end;

bezs:
until (chr=#13);
ina[1]:='AAAAAAAAAAAAAAAAAAAAA';
ina[16]:='AAAAAAAAAAAAAAAAAAAAA';

for i2:=1 to 14 do
begin
ina[i2+1]:='A';
for i:=1 to 19 do
begin
insert(tkur[i,i2],ina[i2+1],length(ina[i2+1])+1);
end;
insert('A',ina[i2+1],length(ina[i2+1])+1);
end;
i:=0;
save2(ina[0],ku);
for i:=1 to 16 do
begin
saved2(ina[i],ku);
end;
bezs2:
ed:
end;

procedure radlim;
label beg,pal,pal2,rty,uio;

var xx,x3,yy,i:integer;
    tues2,izn:string;
    e:char;
    boo:boolean;
begin
clearviewport;
boo:=false;
xx:=7;
yy:=6;
x3:=0;
i:=1;
for i:= 1 to 150 do
 begin
 tri[i]:='';
 end;
tues2:=tues;
delete(tues2,length(tues2)-3,6);
setbkcolor(0);
setcolor(6);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
outtextxy(100,90,'LABOT LIMENUS');
tri[1]:='JAUNS LIMENIS';
for x3:= 1 to 150 do
begin
 tri[x3+1]:=limek(x3);
 if tri[x3]='' then goto pal;
end;
goto pal2;
pal: x3:=x3-1;
pal2:
ki2:=1;
kurs(xx-1,yy);
setcolor(7);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
setcolor(6);
outtextxy(xx*30+7,yy*30+00+9,tri[1]);
setcolor(7);
outtextxy(xx*30+7,yy*30+30+9,tri[2]);
outtextxy(xx*30+7,yy*30+60+9,tri[3]);
outtextxy(xx*30+7,yy*30+90+9,tri[4]);
outtextxy(xx*30+7,yy*30+120+9,tri[5]);
uio:
zs:=1;
zim:=1;
vers(4,0);
rty: repeat
e:=inkey;
 if e = char(27) then begin goto beg; end;

 if e = char(72) then begin aizkr(xx-1,yy+zim-1); ki2:=ki2-1; zim:=zim-1; rtx32(ki2); end;

if e = char(80) then begin aizkr(xx-1,yy+zim-1); ki2:=ki2+1; zim:=zim+1; rtx3(ki2); end;

until e=char(13);
izn:='.dat';
if ki2=1 then begin insert(LongStr(x3),izn,1); boo:=true; end;
if ki2<>1 then begin insert(LongStr(ki2-1),izn,1); end;
insert('levels\level',izn,1);
savl(izn,boo);
beg:
end;

Procedure mekl;
label 6,7,8,9,10,12,mekbad,starts;
var Di: SearchRec;
    z,xx,yy:integer;
    e:char;
    s:array[1..50] of string[15];
const nam = 'LIETOTAJS ';
begin
starts:xx:=2;
yy:=2;
clearviewport;
setbkcolor(0);
setcolor(7);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
z:=0;
FindFirst('*.vpl', anyfile, Di);
while DosError = 0 do
begin
  z:=z+1;
  s[z]:=di.name;
  delete(di.name,length(di.name)-3,5);
{  setcolor(7);}
  outtextxy(xx*30+38,yy*30-18+z*30,nam+di.name);
  gzim(164,69+(30*(z-1)),8);
  if z>=9 then goto mekbad;
  FindNext(Di);
end;
mekbad:
ki:=1;
kurs(xx,yy);
izv:=s[1];
setcolor(6);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
setcolor(6);
outtextxy(xx*30+38,yy*30-18+z*30+30,'IZVEIDOT LIETOTAJU');
outtextxy(xx*30+38,yy*30-18+z*30+60,'IZDZEST LIETOTAJU');
outtextxy(xx*30+38,yy*30-18+z*30+90,'LABOT LIMENUS');
if versi=false then begin
setcolor(4);
outtextxy(xx*30+38+230,yy*30-18+z*30+30,'-- NAV PIEEJAMS DEMO --');
outtextxy(xx*30+38+230,yy*30-18+z*30+60,'-- NAV PIEEJAMS DEMO --');
outtextxy(xx*30+38+230,yy*30-18+z*30+90,'-- NAV PIEEJAMS DEMO --');
end;
setcolor(6);
vers(1,30*(z-1));
repeat
e:=inkey;
 if e = char(27) then halt;

 if e = char(72) then begin aizkr(xx,yy+ki-1); ki:=ki-1; rt(z); kurs(xx,yy+ki-1); izv:=s[ki]; end;

 if e = char(80) then begin aizkr(xx,yy+ki-1); ki:=ki+1; rt(z); kurs(xx,yy+ki-1); izv:=s[ki]; end;

until e=char(13);
if ki=z+1 then goto 9;
if ki=z+2 then goto 8;
if ki=z+3 then goto 7;
goto 10;
7: if versi=false then goto starts;
radlim;
goto starts;
8: if versi=false then goto starts;
dzes;
goto starts;
9: if versi=false then goto starts;
jaun;
goto starts;
10: levn2:=del2(147,open(izv));
iziet:=levn2;
tues:=izv;
end;

Procedure grut;
label ef;
var xx,yy,iz:integer;
   e:char;
begin
clearviewport;
xx:=5;
yy:=7;
ki:=1;
setcolor(7);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
outtextxy(100,150,'GRUTIBA');
setcolor(green);
outtextxy(xx*30+38,yy*30-18+30,'VIEGLA ');
setcolor(4);
outtextxy(xx*30+38,yy*30-18+60,'GRUTA');
iz:=1;
kurs(xx,yy+iz-1);
vers(2,0);
repeat
e:=inkey;

 if e = char(27) then begin naklim2:=true; goto ef; end;

 if e = char(72) then begin aizkr(xx,yy+iz-1); iz:=iz-1; iz:=pav(iz,2); kurs(xx,yy+iz-1); end;

 if e = char(80) then begin aizkr(xx,yy+iz-1); iz:=iz+1; iz:=pav(iz,2); kurs(xx,yy+iz-1); end;
until e=char(13);
if iz=1 then grutiba:=false;
if iz=2 then grutiba:=true;
ef:
end;


procedure izvel;
label beg,pal,pal2,rty,uio,sak;
var xx,x3,yy,i:integer;
    tues2:string;
    e:char;

begin
sak:
xx:=7;
yy:=6;
x3:=0;
i:=1;
for i:= 1 to 150 do
 begin
 tri[i]:='';
 end;
iziet:=del2(147,open(izv));
tues2:=tues;
delete(tues2,length(tues2)-3,6);
setbkcolor(0);
setcolor(7);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
outtextxy(100,90,'SPELETAJS :  ');
outtextxy(230,90,tues2);
vers(5,0);
repeat
  x3:=x3+1;
  tri[x3]:=limek(x3);
  if tri[x3]='' then goto pal;
until x3=150;
goto pal2;
pal: x3:=x3-1;
pal2:
ki2:=1;
kurs(xx-1,yy);
setcolor(7);
SetTextStyle(triplexfont, HorizDir, 2);
SetTextJustify(lefttext, CenterText);
if tri[1]='' then halt;
if 1 < iziet  then setcolor(2) else setcolor(4);
if 1 = iziet  then setcolor(yellow);
outtextxy(xx*30+7,yy*30+00+9,tri[1]);
if tri[2]='' then goto uio;
if 2 < iziet  then setcolor(2) else setcolor(4);
if 2 = iziet  then setcolor(yellow);
outtextxy(xx*30+7,yy*30+30+9,tri[2]);
if tri[3]='' then goto uio;
if 3 < iziet  then setcolor(2) else setcolor(4);
if 3 = iziet  then setcolor(yellow);
outtextxy(xx*30+7,yy*30+60+9,tri[3]);
if tri[4]='' then goto uio;
if 4 < iziet  then setcolor(2) else setcolor(4);
if 4 = iziet  then setcolor(yellow);
outtextxy(xx*30+7,yy*30+90+9,tri[4]);
if tri[5]='' then goto uio;
if 5 < iziet  then setcolor(2) else setcolor(4);
if 5 = iziet  then setcolor(yellow);
outtextxy(xx*30+7,yy*30+120+9,tri[5]);
uio:
zs:=1;
zim:=1;
rty: repeat
e:=inkey;
 if e = char(27) then begin naklim2:=true; goto beg; end;

 if e = char(72) then begin aizkr(xx-1,yy+zim-1); ki2:=ki2-1; zim:=zim-1; rt32(ki2); end;

 if e = char(80) then begin aizkr(xx-1,yy+zim-1); ki2:=ki2+1; zim:=zim+1; rt3(ki2); end;

until e=char(13);
if ki2>iziet then goto rty;
if versi=false then if ki2>4 then goto rty;
levn2:=ki2;
beg:
end;

Procedure regi;
label ve;
begin

if ( ParamCount > 0 ) then
begin
  if (ParamStr(1) = '-noreg') then begin
    versi:=false;
    varde:='NEREGISTRETS';
    if fext('trial.vpl')=false then save('','trial.vpl');
  end else if ( ParamStr(1) = '-registred' ) then begin
    versi:=true;
    if (   ParamCount > 1 ) then varde:='REGISTRETS UZ '+ ParamStr(2)
    else  varde:='REGISTRETS';
  end;
end
else begin
  versi:=salcod;
  if versi=true then varde:='REGISTRETS UZ '+open(pviet+'/'+pviet2);
  if varde='' then varde:='NEREGISTRETS';
  if versi=false then begin
    if fext('trial.vpl')=false then save('','trial.vpl');
    if fext(pviet+'/'+pviet2)=true then goto ve
    else begin
      save(longstr(73*60+1),pviet+'/'+pviet2);
    end;
  end;
end;

ve:
end;

label ba;
{--------------------------------------------------------------------------}

begin
randomize;
regi;
setgr;
tstart;
naklim:=false;
ba: naklim2:=false;
ni2: levn2:=1;
ni: grutiba:=false;
clearviewport;
mekl;
grut;
if naklim2=true then goto ba;
nlimen: clearviewport;
izvel;
if naklim2=true then goto ba;
naklim:=false;
naklim2:=false;
clearviewport;
setbkcolor(0);
setcolor(0);
apv;
fon;
ises;
malas;
labir;
kurs(tu,tu2);
{par;}
if naklim=true then begin saglab(tues); goto nlimen; end;
if grutiba=false then
begin
labir;
repeat
{par;}
g:=0;
if naklim=true then begin saglab(tues); goto nlimen; end;
if naklim2=true then goto ni2;
k:=inkey;
{par;}
 if naklim=true then begin saglab(tues); goto nlimen; end;
 if naklim2=true then goto ni2;
 if k = char(27) then goto nlimen;

 if k = char(72) then begin g:=72; iet;  end;

 if k = char(75) then begin g:=75; iet; end;

 if k = char(77) then begin g:=77; iet; end;

 if k = char(80) then begin g:=80; iet; end;
{par;}
until (k=char(27));
end;

if grutiba=true then
begin
repeat
{par;}
g:=0;
if naklim=true then begin saglab(tues); goto nlimen; end;
if naklim2=true then goto ni2;
k:=inkey;
{par;}
 if naklim=true then begin saglab(tues); goto nlimen; end;
 if naklim2=true then goto ni2;
 if k = char(27) then goto nlimen;

 if k = char(72) then begin g:=72; iet; labir; end;

 if k = char(75) then begin g:=75; iet; labir; end;

 if k = char(77) then begin g:=77; iet; labir; end;

 if k = char(80) then begin g:=80; iet; labir; end;
{par;}

until (k=char(27));
end;

dne2: closegraph;
end.


