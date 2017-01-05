uses dos,graph;

TYPE
     MouseType = RECORD
                   x, y, Button     : Word;
                   RButton, LButton : Boolean;
                 END;
VAR
     Reg                              : Registers;
     Mouse                            : Mousetype;

  time : LongInt Absolute $0040:$006C;
  regs : Registers;
  pelpog : boolean;

const burt: array[1..95] of char = ('1','2','3','4','5','6','7','8','9','0',
'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
' ','`','-','=','\','[',']',';',char(39),',','.','/','*','~','!','@','#','$','%','^','&','(',')','_','+','|','{',
'}',':','"','<','>','?');

var i1,i2,i3,i4,i5,i6,i7,i8,i9,j1,j2,j3,j4,j5,j6,j7,j8,j9,x1,x2,x3,x4,x5,x6,x7,x8,x9,k1,k2,k3,k4,k5,k6,k7,k8,k9,
l1,l2,l3,l4,l5,l6,l7,l8,l9,m1,m2,m3,m4,m5,m6,m7,m8,m9,n1,n2,n3,n4,n5,n6,n7,n8,n9,o1,o2,o3,o4,o5,o6,p1,p2,p3,p4:integer;
var as1,as2,as3,as4,as5,as6,as7,as8,as9,as10:string;
var stunda,minute,sekunde,uhund:word;
var kop:longint;
var tav:string;

Function KeyPressed: Boolean;
Var   head : Word    Absolute $0040:$001A;
      tail : Word    Absolute $0040:$001C;

begin
    keypressed:=false;
    KeyPressed:= (tail <> head);
  end;

procedure setgr;
var
 Gd, Gm: Integer;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 if GraphResult <> grOk then begin writeln('Nav faila EGAVGA.BGI'); repeat until keypressed; Halt; end;
end;

Function KeyWord : Word;
    Inline  ($B4/$00/$CD/$16);

Procedure GotoXY(x,y : Byte);
  begin
    With regs do begin
      ah := $02;
      bh := 0;
      dh := pred(y);
      dl := pred(x);
      intr($10,regs);
    end;
  end;

Function ReadKey : Char;
  Var
    Key : Byte;
  begin
    Key := lo(KeyWord);
    ReadKey := Char(Key);
  end;

Function  WhereX : Byte;  Assembler;
Asm
  MOV     AH,3
  MOV     BH,0
  INT     10h
  INC     DL
  MOV     AL, DL
end;

Function WhereY : Byte; Assembler;
Asm
  MOV     AH,3
  MOV     BH,0
  INT     10h
  INC     DH
  MOV     AL, DH
end;

PROCEDURE SM;
BEGIN
  Reg.AX := 1;
  Intr($33,Reg);
END;

PROCEDURE HM;
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

PROCEDURE InM;
BEGIN
  Reg.AX := 0;
  Intr($33,Reg);
  SetMouseArea(0,0,GetMaxX,GetMaxY);
  Reg.AX := 4;
  Reg.CX := 400;
  Reg.DX := 400;
  Intr($33,Reg);
END;

function Mch:integer;
BEGIN
  Reg.AX := 5;
  Reg.BX := 1;
  Intr($33,Reg);
  Mouse.RButton := Reg.BX > 0;
  Mouse.Button := Reg.AX;
  IF Mouse.RButton THEN Mouse.Button := 2;
  Mouse.X := Reg.CX;
  Mouse.Y := Reg.DX;

  IF NOT Mouse.RButton
    THEN Begin
           Reg.AX := 5;
           Reg.BX := 0;
           Intr($33,Reg);
           Mouse.LButton := Reg.BX > 0;
           Mouse.Button := Reg.AX;
           IF Mouse.LButton THEN Mouse.Button := 1;
           Mouse.X := Reg.CX;
           Mouse.Y := Reg.DX;
         End;
mch:=mouse.button;
END;

Procedure ClrScr;
begin
 Inline($B4/$06/$B0/$19/$B7/$07/$B5/$00/$B1/$00/$B6/$19/$B2/$4F/$CD/$10/$B4/$02/$B7/$00/$B2/$00/$B6/$00/$CD/$10); end;

procedure Gzim(x,y:integer);
begin
line(x,y-6+0,x+9,y-6+0);
line(x,y-6+1,x+9,y-6+1);
line(x,y-6+2,x+9,y-6+2);
end;

FUNCTION LongStr( nNum: LONGINT): STRING;
VAR
   s: ^STRING;
BEGIN
ASM
  mov     sp, bp
  push    ss
  push    WORD PTR @RESULT
END;
STR(nNum:0, s^);
End;

function pul(stund,min,sek:word):string;
var st,sti:integer;
var su,mn,se,ud:word;
begin
GetTime(su,mn,se,ud);
st:=min*60+sek+stund*3600;
sti:=mn*60+se+su*3600;
pul:=LongStr(sti-st);
end;

procedure Vzim(x,y:integer);
begin
line(x+1,y-6,x+1+3,y+3-6);
line(x+2,y-6,x+1+3+1,y+3-6);
line(x+3,y-6,x+1+3+2,y+3-6);
line(x+4,y-6,x+1+3+3,y+3-6);

line(x+1+6,y+3-6,x-1+12-1,y-6);
line(x+1+6+1,y+3-6,x+12-1,y-6);
line(x+1+6+2,y+3-6,x+1+12-1,y-6);
line(x+1+6+3,y+3-6,x+2+12-1,y-6);
end;

procedure zim2;
var x,y:integer;
begin
clearviewport;
x:=50;
y:=50;
setfillstyle(1,red);
bar(getmaxx-30,0,getmaxx,30);
setfillstyle(1,9);
setcolor(7);
SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
OutTextXY(getmaxx-23,11,'X');


vzim(50+36,50+80);
gzim(50+110,50+80);
vzim(50+74,50);
gzim(50+123,50);
gzim(50+59,50);

SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
OutTextXY(x,y,'Izmeginati: ');
OutTextXY(x,y+40,'Laiks: ');
OutTextXY(x,y+80,'Pasreizejais variants: ');

end;

Procedure zim(az1:longint; az2:string);
var x,y:integer;
begin
x:=50;
y:=50;

setcolor(9);
setbkcolor(9);
SetFillStyle(1, 9);
bar(x+2+8*23,y-10,getmaxx-100,y+30);
bar(x+2+4*23,y+40-10,getmaxx-100,y+40+30);
bar(x+2+15*23,y+80-10,getmaxx,y+80+30);
setcolor(7);

SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
OutTextXY(x+3+8*23,y,longstr(az1));
OutTextXY(x+3+4*23,y+40,pul(stunda,minute,sekunde));
OutTextXY(x+3+15*23,y+80,az2);
end;

function atrx:integer;
begin
atrx:=reg.cx;
end;

function atry:integer;
begin
atry:=reg.dx;
end;

procedure pel;
var zxc:char;
begin
zxc:=char(0);
if mch>0 then begin

if atry < 30 then begin
if atrx> getmaxx-30 then halt; end;

SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
OutTextXY(70,260,'Nospied jebkuru pogu');

OutTextXY(50,430,'Programmas autors: ');
setcolor(15);
gzim(402,430-1);
gzim(531,430-1);
OutTextXY(50+330,430,'Davis Mosans');
if pelpog=false then begin repeat until keypressed; end;
hm; closegraph; halt; end;

end;

procedure p(qw:string);
begin
setcolor(7);
setbkcolor(9);
SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
OutTextXY(50,190,'UZMINETS!');
OutTextXY(50,190+30,'KODS: ');
OutTextXY(50+80+10,190+30,'"');
OutTextXY(50+80+30,190+30,qw);
OutTextXY(50+80+30+length(qw)*20,190+30,'"');
gzim(50+100,185);

OutTextXY(50,430,'Programmas autors: ');
setcolor(15);
gzim(402,430-1);
gzim(531,430-1);
OutTextXY(50+330,430,'Davis Mosans');

repeat pel; until keypressed;
hm; closegraph;
halt;
end;

Procedure kvd(xxx,yyy,unk:integer);
var Fil: FillSettingsType;
begin
setcolor(9);
setbkcolor(9);
SetFillStyle(0, 0);
bar(xxx,yyy-10,xxx+unk,yyy+22);
setcolor(7);
end;

function input(xx,yy:integer):string;
label z10,z11,z12,z13,z14,z15,z16,z17,z18,z19,ed;
label z20,z21,z22,z23,z24,z25,z26,z27,z28,z29,z30,z31,z32,z33,z34,z35,z36,z37,z38,z39;
label z40,z41,z42,z43,z44,z45,z46,z47,z48,z49,z70,z71,z72,z73,z74;
label z50,z51,z52,z53,z54,z55,z56,z57,z58,z59,z60,z61,z62,z63,z64,z65,z66,z67,z68,z69;
var o:char;
var z:string;
var n,n2,liel,xx2,yy2:integer;
begin
z:='';
liel:=30;

setcolor(7);
SetFillStyle(1,7);
SetTextJustify(leftText, centerText);
SetTextStyle(TriplexFont, horizDir, 4);
n:=wherex;
n2:=wherey;
xx2:=xx+35;
yy2:=yy;
repeat
pel;
o:=readkey;
pel;
if o=char(27) then begin hm; closegraph; pel; halt; end;
pel;
if o=char(8) then begin if length(z) <= 0 then goto z10; if xx2<xx+35 then xx2:=xx+35;
kvd(xx2,yy2,liel);xx2:=xx2-liel; delete(z,length(z),1); pel; end;
pel;
if length(z) > 8 then goto z10;
pel;
if o=char(ord('1')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'1'); insert('1',z,length(z)+1); pel; end;
if o=char(ord('2')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'2'); insert('2',z,length(z)+1); pel; end;
if o=char(ord('3')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'3'); insert('3',z,length(z)+1); pel; end;
if o=char(ord('4')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'4'); insert('4',z,length(z)+1); pel; end;
if o=char(ord('5')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'5'); insert('5',z,length(z)+1); pel; end;
if o=char(ord('6')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'6'); insert('6',z,length(z)+1); pel; end;
if o=char(ord('7')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'7'); insert('7',z,length(z)+1); pel; end;
if o=char(ord('8')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'8'); insert('8',z,length(z)+1); pel; end;
if o=char(ord('9')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'9'); insert('9',z,length(z)+1); pel; end;
if o=char(ord('0')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'0'); insert('0',z,length(z)+1); pel; end;
if o=char(ord('a')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'a'); insert('a',z,length(z)+1); pel; end;
if o=char(ord('b')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'b'); insert('b',z,length(z)+1); pel; end;
if o=char(ord('c')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'c'); insert('c',z,length(z)+1); pel; end;
if o=char(ord('d')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'d'); insert('d',z,length(z)+1); pel; end;
if o=char(ord('e')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'e'); insert('e',z,length(z)+1); pel; end;
if o=char(ord('f')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'f'); insert('f',z,length(z)+1); pel; end;
if o=char(ord('g')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'g'); insert('g',z,length(z)+1); pel; end;
if o=char(ord('h')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'h'); insert('h',z,length(z)+1); pel; end;
if o=char(ord('i')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'i'); insert('i',z,length(z)+1); pel; end;
if o=char(ord('j')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'j'); insert('j',z,length(z)+1); pel; end;
if o=char(ord('k')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'k'); insert('k',z,length(z)+1); pel; end;
if o=char(ord('l')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'l'); insert('l',z,length(z)+1); pel; end;
if o=char(ord('m')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'m'); insert('m',z,length(z)+1); pel; end;
if o=char(ord('n')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'n'); insert('n',z,length(z)+1); pel; end;
if o=char(ord('o')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'o'); insert('o',z,length(z)+1); pel; end;
if o=char(ord('p')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'p'); insert('p',z,length(z)+1); pel; end;
if o=char(ord('q')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'q'); insert('q',z,length(z)+1); pel; end;
if o=char(ord('r')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'r'); insert('r',z,length(z)+1); pel; end;
if o=char(ord('s')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'s'); insert('s',z,length(z)+1); pel; end;
if o=char(ord('t')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'t'); insert('t',z,length(z)+1); pel; end;
if o=char(ord('u')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'u'); insert('u',z,length(z)+1); pel; end;
if o=char(ord('w')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'w'); insert('w',z,length(z)+1); pel; end;
if o=char(ord('x')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'x'); insert('x',z,length(z)+1); pel; end;
if o=char(ord('y')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'y'); insert('y',z,length(z)+1); pel; end;
if o=char(ord('v')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'v'); insert('v',z,length(z)+1); pel; end;
if o=char(ord('z')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'z'); insert('z',z,length(z)+1); pel; end;
if o=char(ord('A')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'A'); insert('A',z,length(z)+1); pel; end;
if o=char(ord('B')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'B'); insert('B',z,length(z)+1); pel; end;
if o=char(ord('C')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'C'); insert('C',z,length(z)+1); pel; end;
if o=char(ord('D')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'D'); insert('D',z,length(z)+1); pel; end;
if o=char(ord('E')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'E'); insert('E',z,length(z)+1); pel; end;
if o=char(ord('F')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'F'); insert('F',z,length(z)+1); pel; end;
if o=char(ord('G')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'G'); insert('G',z,length(z)+1); pel; end;
if o=char(ord('H')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'H'); insert('H',z,length(z)+1); pel; end;
if o=char(ord('I')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'I'); insert('I',z,length(z)+1); pel; end;
if o=char(ord('J')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'J'); insert('J',z,length(z)+1); pel; end;
if o=char(ord('K')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'K'); insert('K',z,length(z)+1); pel; end;
if o=char(ord('L')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'L'); insert('L',z,length(z)+1); pel; end;
if o=char(ord('M')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'M'); insert('M',z,length(z)+1); pel; end;
if o=char(ord('N')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'N'); insert('N',z,length(z)+1); pel; end;
if o=char(ord('O')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'O'); insert('O',z,length(z)+1); pel; end;
if o=char(ord('P')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'P'); insert('P',z,length(z)+1); pel; end;
if o=char(ord('Q')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'Q'); insert('Q',z,length(z)+1); pel; end;
if o=char(ord('R')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'R'); insert('R',z,length(z)+1); pel; end;
if o=char(ord('S')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'S'); insert('S',z,length(z)+1); pel; end;
if o=char(ord('T')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'T'); insert('T',z,length(z)+1); pel; end;
if o=char(ord('U')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'U'); insert('U',z,length(z)+1); pel; end;
if o=char(ord('W')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'W'); insert('W',z,length(z)+1); pel; end;
if o=char(ord('X')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'X'); insert('X',z,length(z)+1); pel; end;
if o=char(ord('Y')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'Y'); insert('Y',z,length(z)+1); pel; end;
if o=char(ord('V')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'V'); insert('V',z,length(z)+1); pel; end;
if o=char(ord('Z')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'Z'); insert('Z',z,length(z)+1); pel; end;

if o=char(ord(' ')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,' '); insert(' ',z,length(z)+1); pel; end;
if o=char(ord('`')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'`'); insert('`',z,length(z)+1); pel; end;
if o=char(ord('~')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'~'); insert('~',z,length(z)+1); pel; end;
if o=char(ord('!')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'!'); insert('!',z,length(z)+1); pel; end;
if o=char(ord('@')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'@'); insert('@',z,length(z)+1); pel; end;
if o=char(ord('#')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'#'); insert('#',z,length(z)+1); pel; end;
if o=char(ord('$')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'$'); insert('$',z,length(z)+1); pel; end;
if o=char(ord('%')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'%'); insert('%',z,length(z)+1); pel; end;
if o=char(ord('^')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'^'); insert('^',z,length(z)+1); pel; end;
if o=char(ord('&')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'&'); insert('&',z,length(z)+1); pel; end;
if o=char(ord('*')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'*'); insert('*',z,length(z)+1); pel; end;
if o=char(ord('(')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'('); insert('(',z,length(z)+1); pel; end;
if o=char(ord(')')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,')'); insert(')',z,length(z)+1); pel; end;
if o=char(ord('-')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'-'); insert('-',z,length(z)+1); pel; end;
if o=char(ord('_')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'_'); insert('_',z,length(z)+1); pel; end;
if o=char(ord('=')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'='); insert('=',z,length(z)+1); pel; end;
if o=char(ord('+')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'+'); insert('+',z,length(z)+1); pel; end;
if o=char(ord('\')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'\'); insert('\',z,length(z)+1); pel; end;
if o=char(ord('|')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'|'); insert('|',z,length(z)+1); pel; end;
if o=char(ord('[')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'['); insert('[',z,length(z)+1); pel; end;
if o=char(ord(']')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,']'); insert(']',z,length(z)+1); pel; end;
if o=char(ord('{')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'{'); insert('{',z,length(z)+1); pel; end;
if o=char(ord('}')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'}'); insert('}',z,length(z)+1); pel; end;
if o=char(ord(';')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,';'); insert(';',z,length(z)+1); pel; end;
if o=char(39) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,char(39)); insert(char(39),z,length(z)+1); pel; end;
if o=char(ord(':')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,':'); insert(':',z,length(z)+1); pel; end;
if o=char(ord('"')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'"'); insert('"',z,length(z)+1); pel; end;
if o=char(ord(',')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,','); insert(',',z,length(z)+1); pel; end;
if o=char(ord('<')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'<'); insert('<',z,length(z)+1); pel; end;
if o=char(ord('.')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'.'); insert('.',z,length(z)+1); pel; end;
if o=char(ord('>')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'>'); insert('>',z,length(z)+1); pel; end;
if o=char(ord('/')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'/'); insert('/',z,length(z)+1); pel; end;
if o=char(ord('?')) then begin  liel:=30; xx2:=xx2+liel; outtextxy(xx2,yy2,'?'); insert('?',z,length(z)+1); pel; end;
pel;
z10: pel;
until o=char(13);
ed: input:=z;
end;

begin
setgr;
clearviewport;
setbkcolor(9);
inm;
sm;
pelpog:=true;
setcolor(7);
setbkcolor(9);
SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
OutTextXY(100,100,'"KODS" :'); tav:=input(199,100);
pelpog:=false;
if tav='' then p(tav);
clearviewport;
zim2;
kop:=0;
GetTime(stunda,minute,sekunde,uhund);

for I1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as1:=burt[i1];
zim(kop,as1);
if as1=tav then p(as1);
pel;
end;

for i2 := 1 to 95 do
for j1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as2:=burt[i2];
insert(burt[j1],as2,length(as2)+1);
if as2=tav then p(as2);
zim(kop,as2);
pel;
end;

for i3 := 1 to 95 do
for j2 := 1 to 95 do
for x1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as3:=burt[i3];
insert(burt[j2],as3,length(as3)+1);
insert(burt[x1],as3,length(as3)+1);
if as3=tav then p(as3);
zim(kop,as3);
pel;
end;

for i4 := 1 to 95 do
for j3 := 1 to 95 do
for x2 := 1 to 95 do
for k1 := 1 to 95 do
begin
kop:=kop+1;
pel;
as4:=burt[i4];
insert(burt[j3],as4,length(as4)+1);
insert(burt[x2],as4,length(as4)+1);
insert(burt[k1],as4,length(as4)+1);
if as4=tav then p(as4);
zim(kop,as4);
pel;
end;

for i5 := 1 to 95 do
for j4 := 1 to 95 do
for x3 := 1 to 95 do
for k2 := 1 to 95 do
for l1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as5:=burt[i5];
insert(burt[j4],as5,length(as5)+1);
insert(burt[x3],as5,length(as5)+1);
insert(burt[k2],as5,length(as5)+1);
insert(burt[l1],as5,length(as5)+1);
if as5=tav then p(as5);
zim(kop,as5);
end;

for i6 := 1 to 95 do
for j5 := 1 to 95 do
for x4 := 1 to 95 do
for k3 := 1 to 95 do
for l2 := 1 to 95 do
for m1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as6:=burt[i6];
insert(burt[j5],as6,length(as6)+1);
insert(burt[x4],as6,length(as6)+1);
insert(burt[k3],as6,length(as6)+1);
insert(burt[l2],as6,length(as6)+1);
insert(burt[m1],as6,length(as6)+1);
if as6=tav then p(as6);
zim(kop,as6);
end;

for i7 := 1 to 95 do
for j6 := 1 to 95 do
for x5 := 1 to 95 do
for k4 := 1 to 95 do
for l3 := 1 to 95 do
for m2 := 1 to 95 do
for n1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as7:=burt[i7];
insert(burt[j6],as7,length(as7)+1);
insert(burt[x5],as7,length(as7)+1);
insert(burt[k4],as7,length(as7)+1);
insert(burt[l3],as7,length(as7)+1);
insert(burt[m2],as7,length(as7)+1);
insert(burt[n1],as7,length(as7)+1);
if as7=tav then p(as7);
zim(kop,as7);
end;

for i8 := 1 to 95 do
for j7 := 1 to 95 do
for x6 := 1 to 95 do
for k5 := 1 to 95 do
for l4 := 1 to 95 do
for m3 := 1 to 95 do
for n2 := 1 to 95 do
for o1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as8:=burt[i8];
insert(burt[i7],as8,length(as8)+1);
insert(burt[x6],as8,length(as8)+1);
insert(burt[k5],as8,length(as8)+1);
insert(burt[l4],as8,length(as8)+1);
insert(burt[m3],as8,length(as8)+1);
insert(burt[n2],as8,length(as8)+1);
insert(burt[o1],as8,length(as8)+1);
if as8=tav then p(as8);
zim(kop,as8);
end;

for i9 := 1 to 95 do
for j8 := 1 to 95 do
for x7 := 1 to 95 do
for k6 := 1 to 95 do
for l5 := 1 to 95 do
for m4 := 1 to 95 do
for n3 := 1 to 95 do
for o2 := 1 to 95 do
for p1 := 1 to 95 do
begin
pel;
kop:=kop+1;
as9:=burt[i9];
insert(burt[i8],as9,length(as9)+1);
insert(burt[x7],as9,length(as9)+1);
insert(burt[k6],as9,length(as9)+1);
insert(burt[l5],as9,length(as9)+1);
insert(burt[m4],as9,length(as9)+1);
insert(burt[n3],as9,length(as9)+1);
insert(burt[o2],as9,length(as9)+1);
insert(burt[p1],as9,length(as9)+1);
if as9=tav then p(as9);
zim(kop,as9);
end;

setcolor(7);
setbkcolor(9);
SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
OutTextXY(50,300,'PABEIGTS!');

OutTextXY(50,430,'Programmas autors: ');
setcolor(15);
gzim(402,430-1);
gzim(531,430-1);
OutTextXY(50+330,430,'Davis Mosans');

repeat pel; until keypressed;

hm;
closegraph;
end.
