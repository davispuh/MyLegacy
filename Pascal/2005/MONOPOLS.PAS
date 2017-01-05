uses graph,ifer,ifer2;

Procedure bline(x,y,tal,biez:integer; vert:char);
var s:integer;
begin
if vert='H' then begin
for s:=1 to biez+1 do
line(x,y+s-1,tal+x,y+s-1);
end;

if vert='V' then begin
for s:=1 to biez+1 do
line(x+s-1,y,x+s-1,tal+y);
end;

end;

Procedure fons;
var FillInfo : FillSettingsType;
  tern : FillPatternType;
  rei,rei2:integer;
begin
clearviewport;
setcolor(brown);
bline(0,0,470,2,'H');
bline(0,0,470,2,'V');
bline(0,470,472,2,'H');
bline(470,0,470,2,'V');

bline(47,47,470-94,2,'H');
bline(47,47,470-94,2,'V');
bline(470-47,47,470-94,2,'V');
bline(47,470-47,472-94,2,'H');

for rei:=1 to 9 do
begin
rei2:=rei*47;
bline(47+rei2-47,0,47,2,'V');
end;
for rei:=1 to 9 do
begin
rei2:=rei*47;
bline(47+rei2-47,470-47,47,2,'V');
end;

for rei:=1 to 9 do
begin
rei2:=rei*47;
bline(0,47+rei2-47,47,2,'H');
end;

for rei:=1 to 9 do
begin
rei2:=rei*47;
bline(470-47,47+rei2-47,47,2,'H');
end;

end;

begin
setgr;
fons;
repeat
until keypressed;
closegraph;
end.