unit ifer;
interface
uses dos,graph,ifer2;

Procedure iet;
procedure siena;
{Procedure par;}
procedure parciet(xxyxc,yyxyc:integer);
procedure parciet3(xxyxc,yyxyc:integer);
Procedure ciet(xx,yy:integer);
procedure atpakal;
Procedure mvin(kordx,kordy:integer);
Procedure finv(xx,yy:integer);

implementation

procedure atpakal;
begin
if g=77 then tu:=tu-1;
if g=75 then tu:=tu+1;
if g=80 then tu2:=tu2-1;
if g=72 then tu2:=tu2+1;
end;

procedure atpakal2(x,y:integer);
begin
atpakal;
if g=77 then korxy[x-1,y]:=15;
if g=75 then korxy[x+1,y]:=15;
if g=80 then korxy[x,y-1]:=15;
if g=72 then korxy[x,y+1]:=15;
end;

procedure priek(x,y:integer);
begin

if g=77 then begin
             korxy[x-1,y]:=0;
             korxy[x,y]:=15;
             aizkr(x-1,y);
             zimak(x,y);
             tu:=tu+1;
             end;
if g=75 then begin
             korxy[x+1,y]:=0;
             korxy[x,y]:=15;
             aizkr(x+1,y);
             zimak(x,y);
             tu:=tu-1;
             end;
if g=80 then begin
             korxy[x,y-1]:=0;
             korxy[x,y]:=15;
             aizkr(x,y-1);
             zimak(x,y);
             tu2:=tu2+1;
             end;

if g=72 then begin
             korxy[x,y+1]:=0;
             korxy[x,y]:=15;
             aizkr(x,y+1);
             zimak(x,y);
             tu2:=tu2-1;
             end;
end;

procedure priek2(x,y:integer);
label 10;
begin
if korxy[x,y]<>0 then goto 10;
korxy[x,y-1]:=0;
korxy[x,y]:=15;
aizkr(x,y-1);
zimak(x,y);
10:
end;

Procedure ciet(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu< 1 then atpakal;
if tu > izmerx then atpakal;
if tu2< 1 then atpakal;
if tu2> izmery then atpakal;

if tu=xx then pirm:=true;
if pirm=true then
   begin
    if tu2=yy then otr:=true;
    if otr=true then atpakal;
    pirm:=false;
    otr:=false;
   end;

end;

Procedure cieted(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu< 1 then atpakal;
if tu > izmerx then atpakal;
if tu2< 1 then atpakal;
if tu2> izmery then atpakal;

if tu=xx then pirm:=true;
if pirm=true then
   begin
    if tu2=yy then otr:=true;
    if otr=true then atpakal;
    pirm:=false;
    otr:=false;
   end;

end;

procedure parciet3(xxyxc,yyxyc:integer);
label as,as2;
var x,y,xv,yv,zx:integer;
begin

if xxyxc<1 then goto as;
if xxyxc > izmerx then goto as;
if yyxyc<1 then goto as;
if yyxyc > izmery then goto as;
xv:=xxyxc;
yv:=yyxyc;

if korxy[xxyxc,yyxyc-1]=izmery+1 then begin
if korxy[xxyxc,yyxyc]=2 then goto as;
if korxy[xxyxc,yyxyc]=0 then begin priek2(xxyxc,yyxyc); goto as; end;

if korxy[xv,yv]=izmery+1 then
begin
  if korxy[xv-1,yv]=0 then
  begin
     if korxy[xv-1,yv-1]=0 then
     begin
      if korxy[xv+1,yv]=0 then
      begin
       if korxy[xv+1,yv-1]=0 then
       begin
       zx:=random(2)+1;
       if zx = 1 then zx:=-1;
       if zx = 2 then zx:=1;
       korxy[xv,yv-1]:=0;
       korxy[xv+zx,yv]:=15;
       aizkr(xv,yv-1);
       zimak(xv+zx,yv);
       goto as;
       end;
      end;
    end;
   end;

    if korxy[xv-1,yv]=0 then
    begin
    if korxy[xv-1,yv-1]=0 then
     begin
     korxy[xv,yv-1]:=0;
     korxy[xv-1,yv]:=15;
     aizkr(xv,yv-1);
     zimak(xv-1,yv);
     goto as;
     end;
    end;

    if korxy[xv+1,yv]=0 then
    begin
     if korxy[xv+1,yv-1]=0 then
     begin
      korxy[xv-1,yv-1]:=0;
      korxy[xv+1,yv]:=15;
      aizkr(xv,yv-1);
      zimak(xv+1,yv);
      end;
    goto as;
    end;

end;

{ist} end;
as:{atpakal2(xxyxc,yyxyc);}
end;

procedure parciet(xxyxc,yyxyc:integer);
var x,y:integer;
begin
if korxy[xxyxc,yyxyc]>0 then atpakal;
end;

procedure parciet2(xxyxc,yyxyc:integer);
label as,as2;
var xv,yv,zx:integer;
begin
xv:=xxyxc;
yv:=yyxyc;
if xxyxc < 1 then goto as;
if xxyxc > izmerx then goto as;
if yyxyc < 1 then goto as;
if yyxyc > izmery then goto as;
if korxy[xxyxc,yyxyc]=0 then begin priek(xxyxc,yyxyc); goto as2; end;

as:
as2: parciet(xxyxc,yyxyc);
end;

Procedure mvin(kordx,kordy:integer);
begin
naklim:=false;
levn2:=levn2+1;
if find(levn1+longstr(levn2)+levn3) then naklim:=true
else begin clearviewport;
setbkcolor(3);
setcolor(15);
SetTextJustify(LeftText, CenterText);
SetTextStyle(1, horizDir, 5);
OutTextXY(20,150,'TU VINNEJI VISUS LIMENUS !!!');
OutTextXY(180,230,'APSVEICU !!!');
repeat until keypressed; naklim2:=true; end;
ciet(kordx,kordy);
end;

Procedure finv(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;
   if otr=true then mvin(xx,yy);
   pirm:=false;
   otr:=false;
end;
end;

Procedure caur1(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;

   if otr=true then begin
      if g=77 then begin
      parciet(xx+1,yy);
      tu:=tu+1;
      end;
   end;

   pirm:=false;
   otr:=false;
end;
ciet(xx,yy);
end;

Procedure caur2(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;
   if otr=true then begin
      if g=75 then begin
      parciet(xx-1,yy);
      tu:=tu-1;
      end;
   end;
   pirm:=false;
   otr:=false;
end;
ciet(xx,yy);
end;

Procedure caur3(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;
   if otr=true then begin
      if g=80 then begin
      parciet(xx,yy+1);
      tu2:=tu2+1;
      end;
   end;
   pirm:=false;
   otr:=false;
end;
ciet(xx,yy);
end;

Procedure caur4(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;
   if otr=true then begin
      if g=72 then begin
      parciet(xx,yy-1);
      tu2:=tu2-1;
      end;
   end;
   pirm:=false;
   otr:=false;
end;
ciet(xx,yy);
end;

Procedure caur5(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;
   if otr=true then begin
      if g=77 then
         begin
         parciet(xx+1,yy);
         tu:=tu+1;
      end;
      if g=75 then
         begin
         parciet(xx-1,yy);
         tu:=tu-1;
      end;
   end;
   pirm:=false;
   otr:=false;
end;
ciet(xx,yy);
end;

Procedure caur6(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;
   if otr=true then begin
      if g=80 then
         begin
         parciet(xx,yy+1);
         tu2:=tu2+1;
      end;
      if g=72 then
         begin
         parciet(xx,yy-1);
         tu2:=tu2-1;
      end;
   end;
   pirm:=false;
   otr:=false;
end;
ciet(xx,yy);
end;

Procedure akmened(xx,yy:integer);
var pirm,otr,tres:boolean;
begin
pirm:=false;
otr:=false;
tres:=false;
if tu=xx then pirm:=true;
if pirm=true then begin
   if tu2=yy then otr:=true;
   if otr=true then begin
      if g=80 then
         begin
         atpakal;
      end;
      if g=72 then
         begin
         atpakal;
      end;
      if g=77 then
         begin
         parciet2(xx+1,yy);
      end;
      if g=75 then
         begin
         parciet2(xx-1,yy);
      end;
   end;
   pirm:=false;
   otr:=false;
end;
end;

{Procedure par;
var x,y:integer;
begin
for x:= 1 to izmerx do
for y:= 1 to izmery do
 begin
 if korxy[x,y]=15 then begin parciet3(x,y+1); end;
 end;

end;}

Procedure iet;
label beig,pbeig;
begin

aizkr(tu,tu2);
korxy[tu,tu2]:=0;

if g=72 then begin {if korxy[tu,tu2-1]=15 then goto pbeig;} tu2:=tu2-1; end;
if g=75 then begin tu:=tu-1; end;
if g=77 then begin tu:=tu+1; end;
if g=80 then begin tu2:=tu2+1; end;

pbeig: siena;
korxy[tu,tu2]:=2;
kurs (tu,tu2);

beig:
end;

Procedure siena;
var x,y:integer;

begin
{par;}

for x:= 0 to izmerx do
for y:= 0 to izmery do
begin
{A} if korxy[x,y]=1 then ciet(x,y);
{C} if korxy[x,y]=3 then finv(x,y);
{D} if korxy[x,y]=4 then caur1(x,y);
{E} if korxy[x,y]=5 then caur2(x,y);
{F} if korxy[x,y]=6 then caur3(x,y);
{G} if korxy[x,y]=7 then caur4(x,y);
{H} if korxy[x,y]=8 then begin end; {parasta zale}
{I} if korxy[x,y]=9 then ciet(x,y);
{J} if korxy[x,y]=10 then caur5(x,y);
{K} if korxy[x,y]=11 then caur6(x,y);
{L} {if korxy[x,y]=12 then caur7(x,y);}
{M} if korxy[x,y]=13 then ciet(x,y);
{N} if korxy[x,y]=14 then cieted(x,y);
{O} {if korxy[x,y]=15 then akmened(x,y);}
{p} if korxy[x,y]=16 then cieted(x,y);
end;
{par;}
end;


end.