{
(The Procedure Mouse_Check can be done shorter, but this one "remembers" a
mouseclick, so you can click the mouse, and at a later time call this
procedure and it will tell you the mouse-information!)

>-----------------------------            }

PROGRAM Mouse_on_the_screen;

USES DOS,Graph,crt;

TYPE
     MouseType = RECORD
                   x, y, Button     : Word;
                   RButton, LButton : Boolean;
                 END;
VAR
     Reg                              : Registers;
     Mouse                            : Mousetype;

PROCEDURE Show_Mouse;
BEGIN
  Reg.AX := 1;
  Intr($33,Reg);
END;

PROCEDURE Hide_Mouse;
BEGIN
  Reg.AX := 2;
  Intr($33,Reg);
END;

PROCEDURE SetMouseArea(XMin,YMin,XMax,YMax :Word);
BEGIN
  Reg.AX := 7;
  Reg.CX := XMin;
  Reg.DX := XMax;
  Intr($33,Reg);
  Reg.AX := 8;
  Reg.CX := YMin;
  Reg.DX := YMax;
  Intr($33,Reg);
END;

PROCEDURE Init_Mouse;
BEGIN
  Reg.AX := 0;
  Intr($33,Reg);
  SetMouseArea(0,0,GetMaxX,GetMaxY);
  Reg.AX := 4;
  Reg.CX := 100;
  Reg.DX := 100;
  Intr($33,Reg);
END;

function Mouse_Check : integer;
BEGIN
  Reg.AX := 5;
  Reg.BX := 1;
  Intr($33,Reg);
  Mouse.RButton := Reg.BX > 0;
  Mouse.Button := Reg.AX;
  Mouse.X := Reg.CX;
  Mouse.Y := Reg.DX;
  IF Mouse.RButton THEN Mouse.Button := 2;

  IF NOT Mouse.RButton
    THEN Begin
           Reg.AX := 5;
           Reg.BX := 0;
           Intr($33,Reg);
           Mouse.LButton := Reg.BX > 0;
           Mouse.Button := Reg.AX;
           Mouse.X := Reg.CX;
           Mouse.Y := Reg.DX;
           IF Mouse.LButton THEN Mouse.Button := 1;
    End;
mouse_check:=mouse.button;
END;

function atrx:integer;
begin
atrx:=reg.cx;
end;

function atry:integer;
begin
atry:=reg.dx;
end;

procedure setgraph;
var
 Gd, Gm: Integer;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 if GraphResult <> grOk then begin writeln('Nav faila: EGAVGA.BGI'); readln; Halt(1); end;
end;

label st,s1;
var ch,x,xx,yy:integer;

BEGIN
randomize;
setgraph;
setbkcolor(9);
Init_Mouse;
Show_Mouse;
x:=4;
s1: clearviewport;
xx:=random(200)+200;
yy:=random(150)+200;
setcolor(x); circle(xx,yy,10); setcolor(14);

  repeat
  ch:=0;
  ch:=mouse_check;
  if ch=1 then begin
  if atrx = xx then begin if atry = yy then goto st; end; gotoxy(10,10); write('LOSE'); goto s1; end;
  if ch=2 then halt;
  until ch=2;

st: if ch=1 then begin ClearViewPort; gotoxy(10,10); write('WIN'); ch:=0; goto s1; end;
Hide_Mouse;
CloseGraph;
END.
