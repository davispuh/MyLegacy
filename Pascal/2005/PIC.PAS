unit pic;
interface
uses Crt,crtclone, Graph,windows,dos,menus;
Procedure kvadr (tu,tu2,biez:integer; mala,malb,malc,mald:boolean);
procedure nekvadr(mal1,mal2,mal3,mal4,biez:integer;laba:boolean);
procedure siena (kordx,kordy:integer);
procedure kurs(tu,tu2:integer);
IMPLEMENTATION
procedure kvadr(tu,tu2,biez:integer; mala,malb,malc,malD:boolean);
var  FillIng: FillSettingsType;
var detectesy, initisgrx: Integer;
begin
detectesy := Detect;
InitGraph(detectesy, initisgrx, ' ');
if GraphResult <> grOk then begin
WriteLn('Kluda nav palaists BGI.');
Halt(1);
end;
tu:=tu*30;
tu2:=tu2*30;
biez:=biez*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 7);
Bar (tu,tu2,tu+biez-1,tu2+biez-1);

if malA= true then begin
setcolor(31);
line(tu,tu2+1,tu+biez-1,tu2+1);
line(tu,tu2+2,tu+biez-1,tu2+2);
end;
end;
procedure nekvadr(mal1,mal2,mal3,mal4,biez:integer;laba:boolean);
var  FillIng: FillSettingsType;
var detectesy, initisgrx: Integer;
begin
detectesy := Detect;
InitGraph(detectesy, initisgrx, ' ');
if GraphResult <> grOk then begin
WriteLn('Kluda nav palaists BGI.');
Halt(1);
end;
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
procedure siena (kordx,kordy:integer);
var detectesy, initisgrx: Integer;
begin
detectesy := Detect;
InitGraph(detectesy, initisgrx, ' ');
if GraphResult <> grOk then begin
WriteLn('Kluda nav palaists BGI.');
Halt(1);
end;
if kordx=0 then kordx:=1;
if kordy=0 then kordy:=1;
if kordx=20 then kordx:=19;
if kordy=15 then kordy:=14;
end;
procedure kurs(tu,tu2:integer);
var  FillIng: FillSettingsType;
var detectesy, initisgrx: Integer;
begin
detectesy := Detect;
InitGraph(detectesy, initisgrx, ' ');
if GraphResult <> grOk then begin
WriteLn('Kluda nav palaists BGI.');
Halt(1);
end;
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
end.