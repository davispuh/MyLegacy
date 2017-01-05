uses crt,graph;
var a,b,c,tu,tu2,g,bidk1,bidk2,TOM,TOM2:integer;
var lej,augs:integer;
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

procedure nerkvadr(mal1,mal2,mal3,mal4:integer;laba:boolean);
var  FillIng: FillSettingsType;
begin
mal1:=mal1*30;
mal2:=mal2*30;
mal3:=mal3*30;
mal4:=mal4*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 7);
Bar (mal1,mal2,mal3+29,mal4+29);

if laba = true then begin
setcolor(31);
line(mal1,mal2+1,mal3+29,mal4+1);
line(mal1,mal2+2,mal3+29,mal4+2);
end;
if laba = false then begin
setcolor(31);
line(mal1+1,mal2,mal3+1,mal4+29);
line(mal1+2,mal2,mal3+2,mal4+29);
end;
if laba = true then begin
setcolor(8);
line(mal1,mal2+29,mal3+29,mal4+29);
line(mal1,mal2+28,mal3+29,mal4+28);
line(mal1,mal2+27,mal3+29,mal4+27);
end;
if laba = false then begin
setcolor(8);
line(mal1+29,mal2,mal3+29,mal4);
line(mal1+28,mal2,mal3+28,mal4);
line(mal1+27,mal2,mal3+27,mal4);
end;
mal1:=mal1 div 30;
mal2:=mal2 div 30;
mal3:=mal3 div 30;
mal4:=mal4 div 30;
end;
procedure fons(tub,tub2:integer);
var  FillIng: FillSettingsType;
begin
tub:=tub*30;
tub2:=tub2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,green);
Bar (tub,tub2,tub+30,tub2+30);
setcolor(lightgreen);
line(tub+10,tub2+20,tub+20,tub2+20);
line(tub+10,tub2+10,tub+20,tub2+10);
line(tub+10,tub2+20,tub+20,tub2+10);

tub:=tub div 30;
tub2:=tub2 div 30;
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
PROCEDURE AIZKRAS (SIEN,SIEN2:INTEGER);
var  FillIng: FillSettingsType;
begin
SIEN:=SIEN*30;
SIEN2:=SIEN2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, black);
Bar (SIEN,SIEN2,SIEN+29,SIEN2+29);
SIEN:=SIEN DIV 30;
SIEN2:=SIEN2 DIV 30;
END;

Procedure malas;
var  FillIng: FillSettingsType;
VAR I,I2 : INTEGER;
begin
nerkvadr(0+TU,1+TU2,0+TU,30+TU2,false);
nerkvadr(1+TU,0+TU2,40+TU,0+TU2,true);
nerkvadr(0+TU,1+TU2,40+TU,30+TU2,false);
nerkvadr(1+TU,0+TU2,40+TU,30+TU2,true);

kvadr(0+TU,0+TU2,true,false,true,false);
kvadr(40+TU,0+TU2,true,false,false,true);
kvadr(0+TU,15+TU2,false,true,true,false);

END;
PROCEDURE AIZB;
VAR F ,F2,KL,KL2 : INTEGER;
BEGIN
AIZKRAS (0+TU,0+TU2);
AIZKRAS (40+TU,0+TU2);
AIZKRAS (0+TU,15+TU2);
AIZKRAS (20+TU,15+TU2);
for f := 1 to 40 do
begin
AIZKRAS (f+TU,0+TU2);
end;
for f2 := 1 to 15 do
begin
AIZKRAS (0+TU,f2+TU2);
end;
end;
begin
TOM:=11;
TOM2:=7;
graphic;
malas;
for lej := 0 to 21 do
for augs := 0 to 15 do
begin
fons(2,augs);
end;
kurs(TOM,TOM2);
tu:=0;
tu2:=0;
repeat
k:=readkey;

if k = char(72) then begin
g:=72;
if tu2 >= 7 then begin
AIZB;
tu2:=tu2+1;
MALAS;
tom2:=tom2+1;
end;
tom2:=tom2-1;
kurs (TOM,TOM2);
end;

if k = char(75) then begin
g:=75;
AIZB;
tu:=tu+1;
MALAS;
kurs (TOM,TOM2);
end;

if k = char(77) then begin
g:=77;
AIZB;
tu:=tu-1;
MALAS;
kurs (TOM,TOM2);
end;

if k = char(80) then begin
g:=80;
if tu2 >= 1 then begin
AIZB;
tu2:=tu2-1;
MALAS;
tom2:=tom2-1;
end;
tom2:=tom2+1;
kurs (TOM,TOM2);
end;

until (k=char(27));
closegraph;
end.