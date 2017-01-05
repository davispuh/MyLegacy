uses crt,graph;
var a,b,c,tu,tu2,g,bidk1,bidk2:integer;
k:char;

procedure graphic;
var
 Gd, Gm: Integer;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 if GraphResult <> grOk then
   Halt(1);
end;

procedure akmens(x,y:integer);
var  FillIng: FillSettingsType;
begin
x:=x*30;
y:=y*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 7);
fillellipse(x+14,y+14,14,14);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, yellow);
bar(x+1,y+12,x+26,y+16);
x:=x div 30;
y:=y div 30;
end;
procedure nerkvadr(mal1,mal2,mal3,mal4,biez:integer;laba:boolean);
var  FillIng: FillSettingsType;
begin
mal1:=mal1*30;
mal2:=mal2*30;
mal3:=mal3*30;
mal4:=mal4*30;
biez:=biez*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 7);
Bar (mal1,mal2,mal3+biez-1,mal4+biez-1);

if laba = true then begin
setcolor(31);
line(mal1,mal2+1,mal3+biez-1,mal4+1);
line(mal1,mal2+2,mal3+biez-1,mal4+2);
end;
if laba = false then begin
setcolor(31);
line(mal1+1,mal2,mal3+1,mal4+biez-1);
line(mal1+2,mal2,mal3+2,mal4+biez-1);
end;
if laba = true then begin
setcolor(8);
line(mal1,mal2+biez-1,mal3+biez-1,mal4+biez-1);
line(mal1,mal2+biez-2,mal3+biez-1,mal4+biez-2);
line(mal1,mal2+biez-3,mal3+biez-1,mal4+biez-3);
end;
if laba = false then begin
setcolor(8);
line(mal1+biez-1,mal2,mal3+biez-1,mal4);
line(mal1+biez-2,mal2,mal3+biez-2,mal4);
line(mal1+biez-3,mal2,mal3+biez-3,mal4);
end;
mal1:=mal1 div 30;
mal2:=mal2 div 30;
mal3:=mal3 div 30;
mal4:=mal4 div 30;
biez:=biez div 30;
end;
procedure kvadr(tu,tu2:integer; mala,malb,malc,malD:boolean);
var  FillIng: FillSettingsType;
begin
tu:=tu*30;
tu2:=tu2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 7);
Bar (tu,tu2,tu+29,tu2+29);

if malA= true then begin
setcolor(31);
line(tu,tu2+1,tu+29,tu2+1);
line(tu,tu2+2,tu+29,tu2+2);
end;

if malC= true then begin
setcolor(31);
line(tu+1,tu2,tu+1,tu2+29);
line(tu+2,tu2,tu+2,tu2+29);
end;


if malB= true then begin
setcolor(8);
line(tu,tu2+29,tu+29,tu2+29);
line(tu,tu2+28,tu+29,tu2+28);
line(tu,tu2+27,tu+29,tu2+27);
end;

if malD= true then begin
setcolor(8);
line(tu+29,tu2,tu+29,tu2+29);
line(tu+28,tu2,tu+28,tu2+29);
line(tu+27,tu2,tu+27,tu2+29);
end;
tu:=tu div 30;
tu2:=tu2 div 30;
end;

Procedure malas;
var  FillIng: FillSettingsType;
viens,divs:integer;
begin
nerkvadr(0,1,0,15,1,false);
nerkvadr(1,0,20,0,1,true);
nerkvadr(20,0,20,15,1,false);
nerkvadr(0,15,20,15,1,true);

kvadr(0,0,true,false,true,false);
kvadr(20,0,true,false,false,true);
kvadr(0,15,false,true,true,false);
kvadr(20,15,false,true,false,true);
kvadr(2,0,true,false,false,false);
end;

procedure kurs(tu,tu2:integer);
var  FillIng: FillSettingsType;
begin
tu:=tu*30;
tu2:=tu2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, black);
Bar (tu,tu2,tu+30,tu2+30);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, red);
FillEllipse(tu+15,tu2+15,15,15);
setcolor(red);
circle(tu+15,tu2+15,15);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, black);
FillEllipse(tu+7,tu2+10,1,1);
fillellipse(tu+20,tu2+10,1,1);
GetFillSettings(FillIng);
with FillIng do
setFillStyle(Pattern, white);
FillEllipse(tu+8,tu2+8,1,1);
fillellipse(tu+21,tu2+8,1,1);
setcolor(black);
Arc(tu+15,tu2+15,200,340,10);

end;

procedure aizkras;
var  FillIng: FillSettingsType;
begin
tu:=tu*30;
tu2:=tu2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, black);
Bar (tu,tu2,tu+30,tu2+30);
tu:=tu div 30;
tu2:=tu2 div 30;
end;
procedure fons(tu,tu2:integer);
var  FillIng: FillSettingsType;
begin
tu:=tu*30;
tu2:=tu2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,green);
Bar (tu,tu2,tu+30,tu2+30);
setcolor(lightgreen);
line(tu+10,tu2+20,tu+20,tu2+20);
line(tu+10,tu2+10,tu+20,tu2+10);
line(tu+10,tu2+20,tu+20,tu2+10);

tu:=tu div 30;
tu2:=tu2 div 30;
end;
procedure atpakal;
begin
if g=77 then tu:=tu-1;
if g=75 then tu:=tu+1;
if g=80 then tu2:=tu2-1;
if g=72 then tu2:=tu2+1;
end;
procedure labir;
var lej,augs:integer;
begin
for lej := 1 to 19 do
for augs := 1 to 14 do
begin
fons(lej,augs);
end;
kvadr(2,1,false,false,true,true);
kvadr(2,2,false,false,true,true);
kvadr(2,3,false,true,true,true);
akmens(bidk1,bidk2);
end;

procedure akbid;
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
end;
procedure siena;
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=0 then tu:=1;
if tu2=0 then tu2:=1;
if tu=20 then tu:=19;
if tu2=15 then tu2:=14;

if tu=2 then pirm:=true;
if pirm=true then begin
if tu2=1 then otr:=true;
if otr=true then atpakal;
pirm:=false;
otr:=false;
end;
if tu=2 then pirm:=true;
if pirm=true then begin
if tu2=2 then otr:=true;
if otr=true then atpakal;
pirm:=false;
otr:=false;
end;
if tu=2 then pirm:=true;
if pirm=true then begin
if tu2=3 then otr:=true;
if otr=true then atpakal;
pirm:=false;
otr:=false;
end;
if tu=bidk1 then pirm:=true;
if pirm=true then begin
if tu2=bidk2 then otr:=true;
if otr=true then akbid;
pirm:=false;
otr:=false;
end;
end;
begin
bidk1:=10;
bidk2:=10;
graphic;
labir;
malas;
kurs(1,1);
tu:=1;
tu2:=1;
repeat
k:=readkey;
if k = char(72) then begin g:=72; aizkras; tu2:=tu2-1; siena; kurs (tu,tu2); end;
if k = char(75) then begin g:=75; aizkras; tu:=tu-1; siena; kurs (tu,tu2); end;
if k = char(77) then begin g:=77; aizkras; tu:=tu+1; siena; kurs (tu,tu2); end;
if k = char(80) then begin g:=80; aizkras; tu2:=tu2+1; siena; kurs (tu,tu2); end;
until (k=char(27));
closegraph;
end.