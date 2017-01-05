 uses graph,dos,uifer,uifer2;
var a,b,c,bidk1,bidk2:integer;
k:char;
Label nlimen;

VAR
     Reg                              : Registers;

  time : LongInt Absolute $0040:$006C;
  regs : Registers;
  pelpog : boolean;

const
      KeyPort = $60;
          ESC = 01;
          KRE = 75;
          LAB = 77;
          AUG = 72;
          LEJ = 80;

Function Inkey : char;
   Var
      K : Word;
      T : integer;
   Begin
      Asm
         mov  ah, 10h
         int  16h
         mov  K, ax
      end;
      T := 0;
      If ((K and 255) = 0) or ((K and 255) = 224) then
         T := 0+Trunc ((K and 65280) / 256)
      else
         T := K and 255;
      Inkey := char(T);
   End;

FUNCTION LongStr( nNum: LONGINT): STRING;
VAR
   s: ^STRING;
BEGIN
ASM
  mov     sp, bp
  push    ss
  push    WORD PTR @RESULT
END;
STR( nNum:0, s^ );
END;

Function StrChar(qwert:string):char;

var a:string;
var izna:char;

begin
izna:=char(0);
a:=qwert;
if a='A' then izna:=char(1+64);
if a='B' then izna:=char(2+64);
if a='C' then izna:=char(3+64);
if a='D' then izna:=char(4+64);
if a='E' then izna:=char(5+64);
if a='F' then izna:=char(6+64);
if a='G' then izna:=char(7+64);
if a='H' then izna:=char(8+64);
if a='I' then izna:=char(9+64);
If a='J' then izna:=char(10+64);
if a='K' then izna:=char(11+64);
if a='L' then izna:=char(12+64);
if a='M' then izna:=char(13+64);
if a='N' then izna:=char(14+64);
if a='O' then izna:=char(15+64);
if a='P' then izna:=char(16+64);
if a='Q' then izna:=char(17+64);
if a='R' then izna:=char(18+64);
if a='S' then izna:=char(19+64);
if a='T' then izna:=char(20+64);
if a='U' then izna:=char(22+64);
if a='V' then izna:=char(22+64);
if a='W' then izna:=char(23+64);
if a='X' then izna:=char(24+64);
if a='Y' then izna:=char(25+64);
if a='Z' then izna:=char(26+64);

if a='a' then izna:=char(27+64);
if a='b' then izna:=char(28+64);
if a='c' then izna:=char(29+64);
if a='d' then izna:=char(30+64);
if a='e' then izna:=char(31+64);
if a='f' then izna:=char(32+64);
if a='g' then izna:=char(33+64);
if a='h' then izna:=char(34+64);
if a='i' then izna:=char(35+64);
If a='j' then izna:=char(36+64);
if a='k' then izna:=char(37+64);
if a='l' then izna:=char(38+64);
if a='m' then izna:=char(39+64);
if a='n' then izna:=char(40+64);
if a='o' then izna:=char(41+64);
if a='p' then izna:=char(42+64);
if a='q' then izna:=char(43+64);
if a='r' then izna:=char(44+64);
if a='s' then izna:=char(45+64);
if a='t' then izna:=char(46+64);
if a='u' then izna:=char(47+64);
if a='v' then izna:=char(48+64);
if a='w' then izna:=char(49+64);
if a='x' then izna:=char(50+64);
if a='y' then izna:=char(51+64);
if a='z' then izna:=char(52+64);
StrChar:=izna;
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

procedure nrind(asd:integer; var fil:text);
begin
if asd = 2 then begin readln(fil); end;
if asd = 3 then begin readln(fil); readln(fil); end;
if asd = 4 then begin readln(fil); readln(fil); readln(fil); end;
if asd = 5 then begin readln(fil); readln(fil); readln(fil); readln(fil); end;

if asd = 6 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); end;

if asd = 7 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); end;

if asd = 8 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); end;

if asd = 9 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); end;

if asd = 10 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); readln(fil); end;

if asd = 11 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); readln(fil); readln(fil); end;

if asd = 12 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); end;

if asd = 13 then begin readln(fil); readln(fil);readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); end;

if asd = 14 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil);readln(fil); readln(fil); end;

if asd = 15 then begin readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); readln(fil); readln(fil);
readln(fil); readln(fil); readln(fil); readln(fil); end;
end;

FUNCTION StrLong( cNum: STRING ): LONGINT;
VAR
   c: INTEGER;
   i: LONGINT;
BEGIN
     VAL( cNum, i, c );
     StrLong := i;
END;

function del(kur:integer; kas:string):longint;
var stry:string;
stri,y:longint;
begin
stry:=kas;
kur:=kur+1;
delete(stry,1,kur-1);
delete(stry,2,length(stry));
stri:=ord(StrChar(stry))-64;
if stri<=0 then stri:=0;
del:=stri;
end;

Function opens(kos:integer; fail:string):string;
var
  F: Text;
  Ch: string;
  teks:string;
begin
teks:='';
Assign(F,fail);
Reset(F);
nrind(kos+1,f);
Read(F, teks);
close(f);
opens:=teks;
end;

procedure apv;
var fa :string;
begin
fa:=levn1+longstr(levn2)+levn3;
x1y1:=del(1,opens(1,fa));
x2y1:=del(2,opens(1,fa));
x3y1:=del(3,opens(1,fa));
x4y1:=del(4,opens(1,fa));
x5y1:=del(5,opens(1,fa));
x6y1:=del(6,opens(1,fa));
x7y1:=del(7,opens(1,fa));
x8y1:=del(8,opens(1,fa));
x9y1:=del(9,opens(1,fa));
x10y1:=del(10,opens(1,fa));
x11y1:=del(11,opens(1,fa));
x12y1:=del(12,opens(1,fa));
x13y1:=del(13,opens(1,fa));
x14y1:=del(14,opens(1,fa));
x15y1:=del(15,opens(1,fa));
x16y1:=del(16,opens(1,fa));
x17y1:=del(17,opens(1,fa));
x18y1:=del(18,opens(1,fa));
x19y1:=del(19,opens(1,fa));

x1y2:=del(1,opens(2,fa));
x2y2:=del(2,opens(2,fa));
x3y2:=del(3,opens(2,fa));
x4y2:=del(4,opens(2,fa));
x5y2:=del(5,opens(2,fa));
x6y2:=del(6,opens(2,fa));
x7y2:=del(7,opens(2,fa));
x8y2:=del(8,opens(2,fa));
x9y2:=del(9,opens(2,fa));
x10y2:=del(10,opens(2,fa));
x11y2:=del(11,opens(2,fa));
x12y2:=del(12,opens(2,fa));
x13y2:=del(13,opens(2,fa));
x14y2:=del(14,opens(2,fa));
x15y2:=del(15,opens(2,fa));
x16y2:=del(16,opens(2,fa));
x17y2:=del(17,opens(2,fa));
x18y2:=del(18,opens(2,fa));
x19y2:=del(19,opens(2,fa));

x1y3:=del(1,opens(3,fa));
x2y3:=del(2,opens(3,fa));
x3y3:=del(3,opens(3,fa));
x4y3:=del(4,opens(3,fa));
x5y3:=del(5,opens(3,fa));
x6y3:=del(6,opens(3,fa));
x7y3:=del(7,opens(3,fa));
x8y3:=del(8,opens(3,fa));
x9y3:=del(9,opens(3,fa));
x10y3:=del(10,opens(3,fa));
x11y3:=del(11,opens(3,fa));
x12y3:=del(12,opens(3,fa));
x13y3:=del(13,opens(3,fa));
x14y3:=del(14,opens(3,fa));
x15y3:=del(15,opens(3,fa));
x16y3:=del(16,opens(3,fa));
x17y3:=del(17,opens(3,fa));
x18y3:=del(18,opens(3,fa));
x19y3:=del(19,opens(3,fa));

x1y4:=del(1,opens(4,fa));
x2y4:=del(2,opens(4,fa));
x3y4:=del(3,opens(4,fa));
x4y4:=del(4,opens(4,fa));
x5y4:=del(5,opens(4,fa));
x6y4:=del(6,opens(4,fa));
x7y4:=del(7,opens(4,fa));
x8y4:=del(8,opens(4,fa));
x9y4:=del(9,opens(4,fa));
x10y4:=del(10,opens(4,fa));
x11y4:=del(11,opens(4,fa));
x12y4:=del(12,opens(4,fa));
x13y4:=del(13,opens(4,fa));
x14y4:=del(14,opens(4,fa));
x15y4:=del(15,opens(4,fa));
x16y4:=del(16,opens(4,fa));
x17y4:=del(17,opens(4,fa));
x18y4:=del(18,opens(4,fa));
x19y4:=del(19,opens(4,fa));

x1y5:=del(1,opens(5,fa));
x2y5:=del(2,opens(5,fa));
x3y5:=del(3,opens(5,fa));
x4y5:=del(4,opens(5,fa));
x5y5:=del(5,opens(5,fa));
x6y5:=del(6,opens(5,fa));
x7y5:=del(7,opens(5,fa));
x8y5:=del(8,opens(5,fa));
x9y5:=del(9,opens(5,fa));
x10y5:=del(10,opens(5,fa));
x11y5:=del(11,opens(5,fa));
x12y5:=del(12,opens(5,fa));
x13y5:=del(13,opens(5,fa));
x14y5:=del(14,opens(5,fa));
x15y5:=del(15,opens(5,fa));
x16y5:=del(16,opens(5,fa));
x17y5:=del(17,opens(5,fa));
x18y5:=del(18,opens(5,fa));
x19y5:=del(19,opens(5,fa));

x1y6:=del(1,opens(6,fa));
x2y6:=del(2,opens(6,fa));
x3y6:=del(3,opens(6,fa));
x4y6:=del(4,opens(6,fa));
x5y6:=del(5,opens(6,fa));
x6y6:=del(6,opens(6,fa));
x7y6:=del(7,opens(6,fa));
x8y6:=del(8,opens(6,fa));
x9y6:=del(9,opens(6,fa));
x10y6:=del(10,opens(6,fa));
x11y6:=del(11,opens(6,fa));
x12y6:=del(12,opens(6,fa));
x13y6:=del(13,opens(6,fa));
x14y6:=del(14,opens(6,fa));
x15y6:=del(15,opens(6,fa));
x16y6:=del(16,opens(6,fa));
x17y6:=del(17,opens(6,fa));
x18y6:=del(18,opens(6,fa));
x19y6:=del(19,opens(6,fa));

x1y7:=del(1,opens(7,fa));
x2y7:=del(2,opens(7,fa));
x3y7:=del(3,opens(7,fa));
x4y7:=del(4,opens(7,fa));
x5y7:=del(5,opens(7,fa));
x6y7:=del(6,opens(7,fa));
x7y7:=del(7,opens(7,fa));
x8y7:=del(8,opens(7,fa));
x9y7:=del(9,opens(7,fa));
x10y7:=del(10,opens(7,fa));
x11y7:=del(11,opens(7,fa));
x12y7:=del(12,opens(7,fa));
x13y7:=del(13,opens(7,fa));
x14y7:=del(14,opens(7,fa));
x15y7:=del(15,opens(7,fa));
x16y7:=del(16,opens(7,fa));
x17y7:=del(17,opens(7,fa));
x18y7:=del(18,opens(7,fa));
x19y7:=del(19,opens(7,fa));

x1y8:=del(1,opens(8,fa));
x2y8:=del(2,opens(8,fa));
x3y8:=del(3,opens(8,fa));
x4y8:=del(4,opens(8,fa));
x5y8:=del(5,opens(8,fa));
x6y8:=del(6,opens(8,fa));
x7y8:=del(7,opens(8,fa));
x8y8:=del(8,opens(8,fa));
x9y8:=del(9,opens(8,fa));
x10y8:=del(10,opens(8,fa));
x11y8:=del(11,opens(8,fa));
x12y8:=del(12,opens(8,fa));
x13y8:=del(13,opens(8,fa));
x14y8:=del(14,opens(8,fa));
x15y8:=del(15,opens(8,fa));
x16y8:=del(16,opens(8,fa));
x17y8:=del(17,opens(8,fa));
x18y8:=del(18,opens(8,fa));
x19y8:=del(19,opens(8,fa));

x1y9:=del(1,opens(9,fa));
x2y9:=del(2,opens(9,fa));
x3y9:=del(3,opens(9,fa));
x4y9:=del(4,opens(9,fa));
x5y9:=del(5,opens(9,fa));
x6y9:=del(6,opens(9,fa));
x7y9:=del(7,opens(9,fa));
x8y9:=del(8,opens(9,fa));
x9y9:=del(9,opens(9,fa));
x10y9:=del(10,opens(9,fa));
x11y9:=del(11,opens(9,fa));
x12y9:=del(12,opens(9,fa));
x13y9:=del(13,opens(9,fa));
x14y9:=del(14,opens(9,fa));
x15y9:=del(15,opens(9,fa));
x16y9:=del(16,opens(9,fa));
x17y9:=del(17,opens(9,fa));
x18y9:=del(18,opens(9,fa));
x19y9:=del(19,opens(9,fa));

x1y10:=del(1,opens(10,fa));
x2y10:=del(2,opens(10,fa));
x3y10:=del(3,opens(10,fa));
x4y10:=del(4,opens(10,fa));
x5y10:=del(5,opens(10,fa));
x6y10:=del(6,opens(10,fa));
x7y10:=del(7,opens(10,fa));
x8y10:=del(8,opens(10,fa));
x9y10:=del(9,opens(10,fa));
x10y10:=del(10,opens(10,fa));
x11y10:=del(11,opens(10,fa));
x12y10:=del(12,opens(10,fa));
x13y10:=del(13,opens(10,fa));
x14y10:=del(14,opens(10,fa));
x15y10:=del(15,opens(10,fa));
x16y10:=del(16,opens(10,fa));
x17y10:=del(17,opens(10,fa));
x18y10:=del(18,opens(10,fa));
x19y10:=del(19,opens(10,fa));

x1y11:=del(1,opens(11,fa));
x2y11:=del(2,opens(11,fa));
x3y11:=del(3,opens(11,fa));
x4y11:=del(4,opens(11,fa));
x5y11:=del(5,opens(11,fa));
x6y11:=del(6,opens(11,fa));
x7y11:=del(7,opens(11,fa));
x8y11:=del(8,opens(11,fa));
x9y11:=del(9,opens(11,fa));
x10y11:=del(10,opens(11,fa));
x11y11:=del(11,opens(11,fa));
x12y11:=del(12,opens(11,fa));
x13y11:=del(13,opens(11,fa));
x14y11:=del(14,opens(11,fa));
x15y11:=del(15,opens(11,fa));
x16y11:=del(16,opens(11,fa));
x17y11:=del(17,opens(11,fa));
x18y11:=del(18,opens(11,fa));
x19y11:=del(19,opens(11,fa));

x1y12:=del(1,opens(12,fa));
x2y12:=del(2,opens(12,fa));
x3y12:=del(3,opens(12,fa));
x4y12:=del(4,opens(12,fa));
x5y12:=del(5,opens(12,fa));
x6y12:=del(6,opens(12,fa));
x7y12:=del(7,opens(12,fa));
x8y12:=del(8,opens(12,fa));
x9y12:=del(9,opens(12,fa));
x10y12:=del(10,opens(12,fa));
x11y12:=del(11,opens(12,fa));
x12y12:=del(12,opens(12,fa));
x13y12:=del(13,opens(12,fa));
x14y12:=del(14,opens(12,fa));
x15y12:=del(15,opens(12,fa));
x16y12:=del(16,opens(12,fa));
x17y12:=del(17,opens(12,fa));
x18y12:=del(18,opens(12,fa));
x19y12:=del(19,opens(12,fa));

x1y13:=del(1,opens(13,fa));
x2y13:=del(2,opens(13,fa));
x3y13:=del(3,opens(13,fa));
x4y13:=del(4,opens(13,fa));
x5y13:=del(5,opens(13,fa));
x6y13:=del(6,opens(13,fa));
x7y13:=del(7,opens(13,fa));
x8y13:=del(8,opens(13,fa));
x9y13:=del(9,opens(13,fa));
x10y13:=del(10,opens(13,fa));
x11y13:=del(11,opens(13,fa));
x12y13:=del(12,opens(13,fa));
x13y13:=del(13,opens(13,fa));
x14y13:=del(14,opens(13,fa));
x15y13:=del(15,opens(13,fa));
x16y13:=del(16,opens(13,fa));
x17y13:=del(17,opens(13,fa));
x18y13:=del(18,opens(13,fa));
x19y13:=del(19,opens(13,fa));

x1y14:=del(1,opens(14,fa));
x2y14:=del(2,opens(14,fa));
x3y14:=del(3,opens(14,fa));
x4y14:=del(4,opens(14,fa));
x5y14:=del(5,opens(14,fa));
x6y14:=del(6,opens(14,fa));
x7y14:=del(7,opens(14,fa));
x8y14:=del(8,opens(14,fa));
x9y14:=del(9,opens(14,fa));
x10y14:=del(10,opens(14,fa));
x11y14:=del(11,opens(14,fa));
x12y14:=del(12,opens(14,fa));
x13y14:=del(13,opens(14,fa));
x14y14:=del(14,opens(14,fa));
x15y14:=del(15,opens(14,fa));
x16y14:=del(16,opens(14,fa));
x17y14:=del(17,opens(14,fa));
x18y14:=del(18,opens(14,fa));
x19y14:=del(19,opens(14,fa));

end;

procedure akmens(x,y:integer);
var  FillIng: FillSettingsType;
begin
x:=x*30;
y:=y*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, black);
Bar (x,y,x+30,y+30);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 7);
fillellipse(x+15,y+15,14,14);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, yellow);
bar(x+2,y+13,x+28,y+17);
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

procedure kvadr2(tu,tu2:integer; mala,malb,malc,malD:boolean);
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

kvadr2(0,0,true,false,true,false);
kvadr2(20,0,true,false,false,true);
kvadr2(0,15,false,true,true,false);
kvadr2(20,15,false,true,false,true);
{kvadr(2,0,true,false,false,false);}
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

procedure es(numx,numy:integer);
begin
tu:=numx;
tu2:=numy;
end;

procedure eszim(cx,cy:integer);
begin
kurs(cx,cy);
end;

procedure ises;
begin
es(1,1);
if x1y1=2 then es(1,1);
if x2y1=2 then es(2,1);
if x3y1=2 then es(3,1);
if x4y1=2 then es(4,1);
if x5y1=2 then es(5,1);
if x6y1=2 then es(6,1);
if x7y1=2 then es(7,1);
if x8y1=2 then es(8,1);
if x9y1=2 then es(9,1);
if x10y1=2 then es(10,1);
if x11y1=2 then es(11,1);
if x12y1=2 then es(12,1);
if x13y1=2 then es(13,1);
if x14y1=2 then es(14,1);
if x15y1=2 then es(15,1);
if x16y1=2 then es(16,1);
if x17y1=2 then es(17,1);
if x18y1=2 then es(18,1);
if x19y1=2 then es(19,1);

if x1y2=2 then es(1,2);
if x2y2=2 then es(2,2);
if x3y2=2 then es(3,2);
if x4y2=2 then es(4,2);
if x5y2=2 then es(5,2);
if x6y2=2 then es(6,2);
if x7y2=2 then es(7,2);
if x8y2=2 then es(8,2);
if x9y2=2 then es(9,2);
if x10y2=2 then es(10,2);
if x11y2=2 then es(11,2);
if x12y2=2 then es(12,2);
if x13y2=2 then es(13,2);
if x14y2=2 then es(14,2);
if x15y2=2 then es(15,2);
if x16y2=2 then es(16,2);
if x17y2=2 then es(17,2);
if x18y2=2 then es(18,2);
if x19y2=2 then es(19,2);

if x1y3=2 then es(1,3);
if x2y3=2 then es(2,3);
if x3y3=2 then es(3,3);
if x4y3=2 then es(4,3);
if x5y3=2 then es(5,3);
if x6y3=2 then es(6,3);
if x7y3=2 then es(7,3);
if x8y3=2 then es(8,3);
if x9y3=2 then es(9,3);
if x10y3=2 then es(10,3);
if x11y3=2 then es(11,3);
if x12y3=2 then es(12,3);
if x13y3=2 then es(13,3);
if x14y3=2 then es(14,3);
if x15y3=2 then es(15,3);
if x16y3=2 then es(16,3);
if x17y3=2 then es(17,3);
if x18y3=2 then es(18,3);
if x19y3=2 then es(19,3);

if x1y4=2 then es(1,4);
if x2y4=2 then es(2,4);
if x3y4=2 then es(3,4);
if x4y4=2 then es(4,4);
if x5y4=2 then es(5,4);
if x6y4=2 then es(6,4);
if x7y4=2 then es(7,4);
if x8y4=2 then es(8,4);
if x9y4=2 then es(9,4);
if x10y4=2 then es(10,4);
if x11y4=2 then es(11,4);
if x12y4=2 then es(12,4);
if x13y4=2 then es(13,4);
if x14y4=2 then es(14,4);
if x15y4=2 then es(15,4);
if x16y4=2 then es(16,4);
if x17y4=2 then es(17,4);
if x18y4=2 then es(18,4);
if x19y4=2 then es(19,4);

if x1y5=2 then es(1,5);
if x2y5=2 then es(2,5);
if x3y5=2 then es(3,5);
if x4y5=2 then es(4,5);
if x5y5=2 then es(5,5);
if x6y5=2 then es(6,5);
if x7y5=2 then es(7,5);
if x8y5=2 then es(8,5);
if x9y5=2 then es(9,5);
if x10y5=2 then es(10,5);
if x11y5=2 then es(11,5);
if x12y5=2 then es(12,5);
if x13y5=2 then es(13,5);
if x14y5=2 then es(14,5);
if x15y5=2 then es(15,5);
if x16y5=2 then es(16,5);
if x17y5=2 then es(17,5);
if x18y5=2 then es(18,5);
if x19y5=2 then es(19,5);

if x1y6=2 then es(1,6);
if x2y6=2 then es(2,6);
if x3y6=2 then es(3,6);
if x4y6=2 then es(4,6);
if x5y6=2 then es(5,6);
if x6y6=2 then es(6,6);
if x7y6=2 then es(7,6);
if x8y6=2 then es(8,6);
if x9y6=2 then es(9,6);
if x10y6=2 then es(10,6);
if x11y6=2 then es(11,6);
if x12y6=2 then es(12,6);
if x13y6=2 then es(13,6);
if x14y6=2 then es(14,6);
if x15y6=2 then es(15,6);
if x16y6=2 then es(16,6);
if x17y6=2 then es(17,6);
if x18y6=2 then es(18,6);
if x19y6=2 then es(19,6);

if x1y7=2 then es(1,7);
if x2y7=2 then es(2,7);
if x3y7=2 then es(3,7);
if x4y7=2 then es(4,7);
if x5y7=2 then es(5,7);
if x6y7=2 then es(6,7);
if x7y7=2 then es(7,7);
if x8y7=2 then es(8,7);
if x9y7=2 then es(9,7);
if x10y7=2 then es(10,7);
if x11y7=2 then es(11,7);
if x12y7=2 then es(12,7);
if x13y7=2 then es(13,7);
if x14y7=2 then es(14,7);
if x15y7=2 then es(15,7);
if x16y7=2 then es(16,7);
if x17y7=2 then es(17,7);
if x18y7=2 then es(18,7);
if x19y7=2 then es(19,7);

if x1y8=2 then es(1,8);
if x2y8=2 then es(2,8);
if x3y8=2 then es(3,8);
if x4y8=2 then es(4,8);
if x5y8=2 then es(5,8);
if x6y8=2 then es(6,8);
if x7y8=2 then es(7,8);
if x8y8=2 then es(8,8);
if x9y8=2 then es(9,8);
if x10y8=2 then es(10,8);
if x11y8=2 then es(11,8);
if x12y8=2 then es(12,8);
if x13y8=2 then es(13,8);
if x14y8=2 then es(14,8);
if x15y8=2 then es(15,8);
if x16y8=2 then es(16,8);
if x17y8=2 then es(17,8);
if x18y8=2 then es(18,8);
if x19y8=2 then es(19,8);

if x1y9=2 then es(1,9);
if x2y9=2 then es(2,9);
if x3y9=2 then es(3,9);
if x4y9=2 then es(4,9);
if x5y9=2 then es(5,9);
if x6y9=2 then es(6,9);
if x7y9=2 then es(7,9);
if x8y9=2 then es(8,9);
if x9y9=2 then es(9,9);
if x10y9=2 then es(10,9);
if x11y9=2 then es(11,9);
if x12y9=2 then es(12,9);
if x13y9=2 then es(13,9);
if x14y9=2 then es(14,9);
if x15y9=2 then es(15,9);
if x16y9=2 then es(16,9);
if x17y9=2 then es(17,9);
if x18y9=2 then es(18,9);
if x19y9=2 then es(19,9);

if x1y10=2 then es(1,10);
if x2y10=2 then es(2,10);
if x3y10=2 then es(3,10);
if x4y10=2 then es(4,10);
if x5y10=2 then es(5,10);
if x6y10=2 then es(6,10);
if x7y10=2 then es(7,10);
if x8y10=2 then es(8,10);
if x9y10=2 then es(9,10);
if x10y10=2 then es(10,10);
if x11y10=2 then es(11,10);
if x12y10=2 then es(12,10);
if x13y10=2 then es(13,10);
if x14y10=2 then es(14,10);
if x15y10=2 then es(15,10);
if x16y10=2 then es(16,10);
if x17y10=2 then es(17,10);
if x18y10=2 then es(18,10);
if x19y10=2 then es(19,10);

if x1y11=2 then es(1,11);
if x2y11=2 then es(2,11);
if x3y11=2 then es(3,11);
if x4y11=2 then es(4,11);
if x5y11=2 then es(5,11);
if x6y11=2 then es(6,11);
if x7y11=2 then es(7,11);
if x8y11=2 then es(8,11);
if x9y11=2 then es(9,11);
if x10y11=2 then es(10,11);
if x11y11=2 then es(11,11);
if x12y11=2 then es(12,11);
if x13y11=2 then es(13,11);
if x14y11=2 then es(14,11);
if x15y11=2 then es(15,11);
if x16y11=2 then es(16,11);
if x17y11=2 then es(17,11);
if x18y11=2 then es(18,11);
if x19y11=2 then es(19,11);

if x1y12=2 then es(1,12);
if x2y12=2 then es(2,12);
if x3y12=2 then es(3,12);
if x4y12=2 then es(4,12);
if x5y12=2 then es(5,12);
if x6y12=2 then es(6,12);
if x7y12=2 then es(7,12);
if x8y12=2 then es(8,12);
if x9y12=2 then es(9,12);
if x10y12=2 then es(10,12);
if x11y12=2 then es(11,12);
if x12y12=2 then es(12,12);
if x13y12=2 then es(13,12);
if x14y12=2 then es(14,12);
if x15y12=2 then es(15,12);
if x16y12=2 then es(16,12);
if x17y12=2 then es(17,12);
if x18y12=2 then es(18,12);
if x19y12=2 then es(19,12);

if x1y13=2 then es(1,13);
if x2y13=2 then es(2,13);
if x3y13=2 then es(3,13);
if x4y13=2 then es(4,13);
if x5y13=2 then es(5,13);
if x6y13=2 then es(6,13);
if x7y13=2 then es(7,13);
if x8y13=2 then es(8,13);
if x9y13=2 then es(9,13);
if x10y13=2 then es(10,13);
if x11y13=2 then es(11,13);
if x12y13=2 then es(12,13);
if x13y13=2 then es(13,13);
if x14y13=2 then es(14,13);
if x15y13=2 then es(15,13);
if x16y13=2 then es(16,13);
if x17y13=2 then es(17,13);
if x18y13=2 then es(18,13);
if x19y13=2 then es(19,13);

if x1y14=2 then es(1,14);
if x2y14=2 then es(2,14);
if x3y14=2 then es(3,14);
if x4y14=2 then es(4,14);
if x5y14=2 then es(5,14);
if x6y14=2 then es(6,14);
if x7y14=2 then es(7,14);
if x8y14=2 then es(8,14);
if x9y14=2 then es(9,14);
if x10y14=2 then es(10,14);
if x11y14=2 then es(11,14);
if x12y14=2 then es(12,14);
if x13y14=2 then es(13,14);
if x14y14=2 then es(14,14);
if x15y14=2 then es(15,14);
if x16y14=2 then es(16,14);
if x17y14=2 then es(17,14);
if x18y14=2 then es(18,14);
if x19y14=2 then es(19,14);
eszim(tu,tu2);
end;

begin
bidk1:=10;
bidk2:=10;
levn2:=1;
nlimen: apv;
naklim:=false;
setgr;
clearviewport;
labir;
malas;
ises;
if naklim=true then goto nlimen;
repeat
if naklim=true then goto nlimen;
k:=inkey;
 if naklim=true then goto nlimen;
 if k = char(27) then halt;
 if k = char(72) then begin g:=72; aizkras; tu2:=tu2-1; siena; kurs (tu,tu2); end;
 if k = char(75) then begin g:=75; aizkras; tu:=tu-1; siena; kurs (tu,tu2); end;
 if k = char(77) then begin g:=77; aizkras; tu:=tu+1; siena; kurs (tu,tu2); end;
 if k = char(80) then begin g:=80; aizkras; tu2:=tu2+1; siena; kurs (tu,tu2); end;
until (k=char(27));
closegraph;
end.


