uses dos,ifer2;

Label 5,10,20,30,40,50,100;
var ac,a,b,c,d,e,g,m,f1,f2,f3,f4,f5,f6,f7,f8,f9,r1,r2,r3,r4,r5,r6,r7,r8,r9,t1,t2,t3,t4,t5,t6,t7,t8,t9,
u1,u2,u3,u4,u5,u6,u7,u8,u9:longint; v:boolean; z,w,op:char;
Var
  head : Word    Absolute $0040:$001A;
  tail : Word    Absolute $0040:$001C;
  time : LongInt Absolute $0040:$006C;
  regs : Registers;

Procedure ClrScr;
begin
 Inline($B4/$06/$B0/$19/$B7/$07/$B5/$00/$B1/$00/$B6/$19/$B2/$4F/$CD/$10/$B4/$02/$B7/$00/$B2/$00/$B6/$00/$CD/$10); end;


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
    end; { With }
  end;   { GotoXY }

Function ReadKey : Char;
  Var
    Key : Byte;
  begin
    Key := lo(KeyWord);
    ReadKey := Char(Key);
  end;

Function  WhereX : Byte;  Assembler;
Asm
  MOV     AH,3      {Ask For current cursor position}
  MOV     BH,0      { On page 0 }
  INT     10h       { Return inFormation in DX }
  INC     DL        { Bios Assumes Zero-based. Crt.WhereX Uses 1 based }
  MOV     AL, DL    { Return X position in AL For use in Byte Result }
end;

Function WhereY : Byte; Assembler;
Asm
  MOV     AH,3     {Ask For current cursor position}
  MOV     BH,0     { On page 0 }
  INT     10h      { Return inFormation in DX }
  INC     DH       { Bios Assumes Zero-based. Crt.WhereY Uses 1 based }
  MOV     AL, DH   { Return Y position in AL For use in Byte Result }
end;

Function KeyPressed: Boolean;
  begin
    KeyPressed := (tail <> head);
  end;

function inputing:string;
label z10,z11,z12,z13,z14,z15,z16,z17,z18,z19,ed;
label z20,z21,z22,z23,z24,z25,z26,z27,z28,z29,z30,z31,z32,z33,z34,z35,z36,z37,z38,z39;
label z40,z41,z42,z43,z44,z45,z46,z47,z48,z49,z70,z71,z72,z73,z74;
label z50,z51,z52,z53,z54,z55,z56,z57,z58,z59,z60,z61,z62,z63,z64,z65,z66,z67,z68,z69;
var o:char;
var z:string;
var n,n2:integer;
begin
z:='';
n:=wherex;
n2:=wherey;
repeat
o:=readkey;
if o=char(27) then begin gotoxy(n,n2); write('              '); halt; end;
if o=char(8) then begin if wherex=n then goto z10; write(char(8),' ',char(8)); delete(z,length(z),1); z10: end;
if o=char(ord('1')) then begin if wherex>n+7 then goto z11; write('1'); insert('1',z,length(z)+1); z11: end;
if o=char(ord('2')) then begin if wherex>n+7 then goto z12; write('2'); insert('2',z,length(z)+1); z12: end;
if o=char(ord('3')) then begin if wherex>n+7 then goto z13; write('3'); insert('3',z,length(z)+1); z13: end;
if o=char(ord('4')) then begin if wherex>n+7 then goto z14; write('4'); insert('4',z,length(z)+1); z14: end;
if o=char(ord('5')) then begin if wherex>n+7 then goto z15; write('5'); insert('5',z,length(z)+1); z15: end;
if o=char(ord('6')) then begin if wherex>n+7 then goto z16; write('6'); insert('6',z,length(z)+1); z16: end;
if o=char(ord('7')) then begin if wherex>n+7 then goto z17; write('7'); insert('7',z,length(z)+1); z17: end;
if o=char(ord('8')) then begin if wherex>n+7 then goto z18; write('8'); insert('8',z,length(z)+1); z18: end;
if o=char(ord('9')) then begin if wherex>n+7 then goto z19; write('9'); insert('9',z,length(z)+1); z19: end;
if o=char(ord('0')) then begin if wherex>n+7 then goto z20; write('0'); insert('0',z,length(z)+1); z20: end;
if o=char(ord('a')) then begin if wherex>n+7 then goto z63; write('A'); insert('a',z,length(z)+1); z63: end;
if o=char(ord('b')) then begin if wherex>n+7 then goto z64; write('B'); insert('b',z,length(z)+1); z64: end;
if o=char(ord('c')) then begin if wherex>n+7 then goto z65; write('C'); insert('c',z,length(z)+1); z65: end;
if o=char(ord('d')) then begin if wherex>n+7 then goto z66; write('D'); insert('d',z,length(z)+1); z66: end;
if o=char(ord('e')) then begin if wherex>n+7 then goto z67; write('E'); insert('e',z,length(z)+1); z67: end;
if o=char(ord('f')) then begin if wherex>n+7 then goto z68; write('F'); insert('f',z,length(z)+1); z68: end;
if o=char(ord('g')) then begin if wherex>n+7 then goto z69; write('G'); insert('g',z,length(z)+1); z69: end;
if o=char(ord('h')) then begin if wherex>n+7 then goto z70; write('H'); insert('h',z,length(z)+1); z70: end;
if o=char(ord('i')) then begin if wherex>n+7 then goto z71; write('I'); insert('i',z,length(z)+1); z71: end;
if o=char(ord('j')) then begin if wherex>n+7 then goto z72; write('J'); insert('j',z,length(z)+1); z72: end;
if o=char(ord('k')) then begin if wherex>n+7 then goto z21; write('K'); insert('k',z,length(z)+1); z21: end;
if o=char(ord('l')) then begin if wherex>n+7 then goto z22; write('L'); insert('l',z,length(z)+1); z22: end;
if o=char(ord('m')) then begin if wherex>n+7 then goto z23; write('M'); insert('m',z,length(z)+1); z23: end;
if o=char(ord('n')) then begin if wherex>n+7 then goto z24; write('N'); insert('n',z,length(z)+1); z24: end;
if o=char(ord('o')) then begin if wherex>n+7 then goto z25; write('O'); insert('o',z,length(z)+1); z25: end;
if o=char(ord('p')) then begin if wherex>n+7 then goto z26; write('P'); insert('p',z,length(z)+1); z26: end;
if o=char(ord('q')) then begin if wherex>n+7 then goto z27; write('Q'); insert('q',z,length(z)+1); z27: end;
if o=char(ord('r')) then begin if wherex>n+7 then goto z28; write('R'); insert('r',z,length(z)+1); z28: end;
if o=char(ord('s')) then begin if wherex>n+7 then goto z29; write('S'); insert('s',z,length(z)+1); z29: end;
if o=char(ord('t')) then begin if wherex>n+7 then goto z30; write('T'); insert('t',z,length(z)+1); z30: end;
if o=char(ord('u')) then begin if wherex>n+7 then goto z31; write('U'); insert('u',z,length(z)+1); z31: end;
if o=char(ord('w')) then begin if wherex>n+7 then goto z32; write('W'); insert('w',z,length(z)+1); z32: end;
if o=char(ord('x')) then begin if wherex>n+7 then goto z33; write('X'); insert('x',z,length(z)+1); z33: end;
if o=char(ord('y')) then begin if wherex>n+7 then goto z34; write('Y'); insert('y',z,length(z)+1); z34: end;
if o=char(ord('v')) then begin if wherex>n+7 then goto z35; write('V'); insert('v',z,length(z)+1); z35: end;
if o=char(ord('z')) then begin if wherex>n+7 then goto z36; write('Z'); insert('z',z,length(z)+1); z36: end;
if o=char(ord('A')) then begin if wherex>n+7 then goto z37; write('A'); insert('a',z,length(z)+1); z37: end;
if o=char(ord('B')) then begin if wherex>n+7 then goto z38; write('B'); insert('b',z,length(z)+1); z38: end;
if o=char(ord('C')) then begin if wherex>n+7 then goto z39; write('C'); insert('c',z,length(z)+1); z39: end;
if o=char(ord('D')) then begin if wherex>n+7 then goto z40; write('D'); insert('d',z,length(z)+1); z40: end;
if o=char(ord('E')) then begin if wherex>n+7 then goto z41; write('E'); insert('e',z,length(z)+1); z41: end;
if o=char(ord('F')) then begin if wherex>n+7 then goto z42; write('F'); insert('f',z,length(z)+1); z42: end;
if o=char(ord('G')) then begin if wherex>n+7 then goto z43; write('G'); insert('g',z,length(z)+1); z43: end;
if o=char(ord('H')) then begin if wherex>n+7 then goto z44; write('H'); insert('h',z,length(z)+1); z44: end;
if o=char(ord('I')) then begin if wherex>n+7 then goto z45; write('I'); insert('i',z,length(z)+1); z45: end;
if o=char(ord('J')) then begin if wherex>n+7 then goto z46; write('J'); insert('j',z,length(z)+1); z46: end;
if o=char(ord('K')) then begin if wherex>n+7 then goto z47; write('K'); insert('k',z,length(z)+1); z47: end;
if o=char(ord('L')) then begin if wherex>n+7 then goto z48; write('L'); insert('l',z,length(z)+1); z48: end;
if o=char(ord('M')) then begin if wherex>n+7 then goto z49; write('M'); insert('m',z,length(z)+1); z49: end;
if o=char(ord('N')) then begin if wherex>n+7 then goto z50; write('N'); insert('n',z,length(z)+1); z50: end;
if o=char(ord('O')) then begin if wherex>n+7 then goto z51; write('O'); insert('o',z,length(z)+1); z51: end;
if o=char(ord('P')) then begin if wherex>n+7 then goto z52; write('P'); insert('p',z,length(z)+1); z52: end;
if o=char(ord('Q')) then begin if wherex>n+7 then goto z53; write('Q'); insert('q',z,length(z)+1); z53: end;
if o=char(ord('R')) then begin if wherex>n+7 then goto z54; write('R'); insert('r',z,length(z)+1); z54: end;
if o=char(ord('S')) then begin if wherex>n+7 then goto z55; write('S'); insert('s',z,length(z)+1); z55: end;
if o=char(ord('T')) then begin if wherex>n+7 then goto z56; write('T'); insert('t',z,length(z)+1); z56: end;
if o=char(ord('U')) then begin if wherex>n+7 then goto z57; write('U'); insert('u',z,length(z)+1); z57: end;
if o=char(ord('W')) then begin if wherex>n+7 then goto z58; write('W'); insert('w',z,length(z)+1); z58: end;
if o=char(ord('X')) then begin if wherex>n+7 then goto z59; write('X'); insert('x',z,length(z)+1); z59: end;
if o=char(ord('Y')) then begin if wherex>n+7 then goto z60; write('Y'); insert('y',z,length(z)+1); z60: end;
if o=char(ord('V')) then begin if wherex>n+7 then goto z61; write('V'); insert('v',z,length(z)+1); z61: end;
if o=char(ord('Z')) then begin if wherex>n+7 then goto z62; write('Z'); insert('z',z,length(z)+1); z62: end;

until o=char(13);
ed: inputing:=z;
end;

Function open(fail:string):string;
var
  F: Text;
  Ch: string;
  teks:string;
begin
teks:='';
Assign(F,fail);
Reset(F);
Read(F, teks);
close(f);
open:=teks;
end;

function opened(tr:integer;nosa:string):string;
var sava,savb,savc,savm,ace,yu:string;
begin
yu:='';

sava:=open(nosa);
savb:=open(nosa);
savm:=open(nosa);
savc:=open(nosa);
ace:=open(nosa);
{  Nauda  /  Vieta  / DienMaks/   Cena  /ID}
{   1-9   /   9-18  /   18-27 /  27-36  /36-37}
{00000sava/00000savb/00000savm/00000savc/00}
delete(sava,10,50);
delete(savb,1,9);
delete(savb,10,30);
delete(savm,1,18);
delete(savm,10,30);
delete(savc,1,27);
delete(savc,10,30);
delete(ace,1,36);
if tr = 1 then yu:=sava;
if tr = 2 then yu:=savb;
if tr = 3 then yu:=savm;
if tr = 4 then yu:=savc;
if tr = 5 then yu:=ace;
opened:=yu;
end;

function ins(as:integer;a1,a2,a3,a4,a5,a6,a7,a8,a9:string):string;
var ty:string;
begin
if as=1 then ty:=a1;
if as=2 then ty:=a2;
if as=3 then ty:=a3;
if as=4 then ty:=a4;
if as=5 then ty:=a5;
if as=6 then ty:=a6;
if as=7 then ty:=a7;
if as=8 then ty:=a8;
if as=9 then ty:=a9;
ins:=ty;
end;

Procedure nad(sa:integer);
begin
clrscr;
if sa=1 then begin gotoxy(33,11); writeln('Lai ieietu "Casino"');
gotoxy(32,12);writeln('Tev jabut vismaz Ls 10');
gotoxy(34,13); write('Tev ir tikai Ls ',a); end;

if sa=2 then begin gotoxy(28,11); writeln('Tu esi paspelejis gandriz visu naudu');
gotoxy(32,12);writeln('Diemzel tu vairs nevari spelet');
gotoxy(26,13);writeln('Lai varetu spelet tev jabut vismaz Ls 10');
gotoxy(36,14);write('Tev ir tikai Ls ',a); end;

if sa=3 then begin gotoxy(33,11); writeln('Lai ieietu "Casino"');
gotoxy(30,12);write('Jabut jau uztaisitam seivam'); end;

repeat until keypressed; halt;
end;

Procedure mekl;
label 9,12,a10,a20,a30;
var DirInfo: SearchRec;
var S,sv: PathStr;
var izv:string;
var x:integer;
var z,zx,cx:integer;
var s1,s2,s3,s4,s5,s6,s7,s8,s9:string;
var e:char;
begin
x:=12;
clrscr;
FindFirst('*.sav', anyfile, DirInfo);
while DosError = 0 do
begin
  z:=z+1;
  if z=1 then s1:=dirinfo.name;
  if z=2 then s2:=dirinfo.name;
  if z=3 then s3:=dirinfo.name;
  if z=4 then s4:=dirinfo.name;
  if z=5 then s5:=dirinfo.name;
  if z=6 then s6:=dirinfo.name;
  if z=7 then s7:=dirinfo.name;
  if z=8 then s8:=dirinfo.name;
  if z=9 then s9:=dirinfo.name;

  FindNext(DirInfo);
end;

if z=0 then goto 12;

z:=0;
gotoxy(25,x); writeln('Vai velies panemt saglabato?');
x:=x+1;
gotoxy(30,x); write('Nospied N ja negribi.');
x:=x+1;
repeat
op:=readkey;
if op = char(27) then halt;
if op = char(ord('n')) then goto 12;
if op = char(ord('N')) then goto 12;
if op = char(13) then begin

FindFirst('*.sav', anyfile, DirInfo);
while DosError = 0 do
begin
  z:=z+1;
  x:=x+1;
  gotoxy(36,x); Writeln(DirInfo.Name);
  if z=1 then s1:=dirinfo.name;
  if z=2 then s2:=dirinfo.name;
  if z=3 then s3:=dirinfo.name;
  if z=4 then s4:=dirinfo.name;
  if z=5 then s5:=dirinfo.name;
  if z=6 then s6:=dirinfo.name;
  if z=7 then s7:=dirinfo.name;
  if z=8 then s8:=dirinfo.name;
  if z=9 then s9:=dirinfo.name;

  FindNext(DirInfo);
end;

zx:=z;
cx:=z;
gotoxy(35,x);
repeat
e:=readkey;
if e=char(27) then goto 12;
if e=char(56) then begin if zx=1 then begin x:=x+cx-1; zx:=cx; goto a10; end; zx:=zx-1; x:=x-1; a10: gotoxy(35,x); end;
if e=char(50) then begin if zx=cx then begin x:=x-cx+1; zx:=1; goto a20; end; zx:=zx+1; x:=x+1; a20: gotoxy(35,x); end;
if e=char(13) then begin izv:=ins(zx,s1,s2,s3,s4,s5,s6,s7,s8,s9); end;
until e=char(13);

m:=StrLong(opened(3,izv));
a:=StrLong(opened(1,izv))+m;
b:=StrLong(opened(2,izv)); c:=b; d:=c;
c:=StrLong(opened(4,izv));
ac:=StrLong(opened(5,izv)); end;

until op=Char(13);
12: end;

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

function input:string;
label 10,11,12,13,14,15,16,17,18,19,20,ed;
var o:char;
var z:string;
var n,n2:integer;
begin
z:='';
n:=wherex;
n2:=wherey;
repeat
o:=readkey;
if o=char(27) then begin gotoxy(n,n2); write('              '); z:=''; goto ed; end;
if o=char(8) then begin if wherex=n then goto 10; write(char(8),' ',char(8)); delete(z,length(z),1); 10: end;
if o=char(ord('1')) then begin if wherex>n+12 then goto 11; write('1'); insert('1',z,length(z)+1); 11: end;
if o=char(ord('2')) then begin if wherex>n+12 then goto 12; write('2'); insert('2',z,length(z)+1); 12: end;
if o=char(ord('3')) then begin if wherex>n+12 then goto 13; write('3'); insert('3',z,length(z)+1); 13: end;
if o=char(ord('4')) then begin if wherex>n+12 then goto 14; write('4'); insert('4',z,length(z)+1); 14: end;
if o=char(ord('5')) then begin if wherex>n+12 then goto 15; write('5'); insert('5',z,length(z)+1); 15: end;
if o=char(ord('6')) then begin if wherex>n+12 then goto 16; write('6'); insert('6',z,length(z)+1); 16: end;
if o=char(ord('7')) then begin if wherex>n+12 then goto 17; write('7'); insert('7',z,length(z)+1); 17: end;
if o=char(ord('8')) then begin if wherex>n+12 then goto 18; write('8'); insert('8',z,length(z)+1); 18: end;
if o=char(ord('9')) then begin if wherex>n+12 then goto 19; write('9'); insert('9',z,length(z)+1); 19: end;
if o=char(ord('0')) then begin if wherex>n+12 then goto 20; write('0'); insert('0',z,length(z)+1); 20: end;
until o=char(13);
ed: input:=z;
end;


procedure pirkt;
label en;
begin
if a-c*10<0 then goto en;
if c>100000000 then begin v:=true; goto en; end;
m:=m*2; b:=b*3; c:=c*10; a:=a-c;
en: end;

procedure prece;
begin
gotoxy(40,5); write(' ');
gotoxy(40,6); write(' ');
gotoxy(40,7); write(' ');
gotoxy(40,08); write(' ');
gotoxy(41,05); write(' ');
gotoxy(60,05); write('                    ');
gotoxy(41,06); write('                    ');
gotoxy(60,06); write('                    ');
gotoxy(41,07); write('                    ');
gotoxy(60,07); write('                    ');
gotoxy(41,08); write('                    ');
gotoxy(59,08); write('                    ');
gotoxy(41,09); write('                    ');
gotoxy(59,09); write('                    ');
gotoxy(41,10); write('                    ');
gotoxy(59,10); write('                    ');
gotoxy(41,11); write('                    ');
gotoxy(59,11); write('                    ');
gotoxy(59,12); write('                    ');

gotoxy(40,5); write('1');
gotoxy(40,6); write('2');
gotoxy(40,7); write('3');
gotoxy(40,8); write('4');
gotoxy(40,9); write('5');
gotoxy(40,10); write('6');
gotoxy(40,11); write('7');
gotoxy(40,12); write('8');
gotoxy(40,13); write('9');

gotoxy(41,5); write('.  Ls ',r1);
gotoxy(60,5);write(f1,' Kg');
gotoxy(41,6); write('.  Ls ',r2);
gotoxy(60,6);write(f2,' Kg');
gotoxy(41,7); write('.  Ls ',r3);
gotoxy(60,7);write(f3,' Kg');
gotoxy(41,8); write('.  Ls ',r4);
gotoxy(59,8);write(f4,' Kg');
gotoxy(41,9); write('.  Ls ',r5);
gotoxy(59,9);write(f5,' Kg');
gotoxy(41,10); write('.  Ls ',r6);
gotoxy(59,10);write(' ',f6,' Kg');
gotoxy(41,11); write('.  Ls ',r7);
gotoxy(59,11);write(f7,' Kg');
gotoxy(41,12); write('.  Ls ',r8);
gotoxy(59,12);write(f8,' Kg');
gotoxy(41,13); write('.  Ls ',r9);
gotoxy(59,13);write(f9,' Kg');

end;

procedure pirktp(c:integer);
label 10,20;
var e:longint;
begin
10: gotoxy(65,4+c); e:=StrLong(input);
gotoxy(65,4+c); write('         ');
if e=0 then goto 20;
if c=1 then begin if a<e*r1 then goto 10; if d<f1*e then goto 10; end;
if c=2 then begin if a<e*r2 then goto 10; if d<f2*e then goto 10; end;
if c=3 then begin if a<e*r3 then goto 10; if d<f3*e then goto 10; end;
if c=4 then begin if a<e*r4 then goto 10; if d<f4*e then goto 10; end;
if c=5 then begin if a<e*r5 then goto 10; if d<f5*e then goto 10; end;
if c=6 then begin if a<e*r6 then goto 10; if d<f6*e then goto 10; end;
if c=7 then begin if a<e*r7 then goto 10; if d<f7*e then goto 10; end;
if c=8 then begin if a<e*r8 then goto 10; if d<f8*e then goto 10; end;
if c=9 then begin if a<e*r9 then goto 10; if d<f9*e then goto 10; end;
if c=1 then begin a:=a-e*r1; d:=d-f1*e; t1:=t1+e; u1:=r1; end;
if c=2 then begin a:=a-e*r2; d:=d-f2*e; t2:=t2+e; u2:=r2; end;
if c=3 then begin a:=a-e*r3; d:=d-f3*e; t3:=t3+e; u3:=r3; end;
if c=4 then begin a:=a-e*r4; d:=d-f4*e; t4:=t4+e; u4:=r4; end;
if c=5 then begin a:=a-e*r5; d:=d-f5*e; t5:=t5+e; u5:=r5; end;
if c=6 then begin a:=a-e*r6; d:=d-f6*e; t6:=t6+e; u6:=r6; end;
if c=7 then begin a:=a-e*r7; d:=d-f7*e; t7:=t7+e; u7:=r7; end;
if c=8 then begin a:=a-e*r8; d:=d-f8*e; t8:=t8+e; u8:=r8; end;
if c=9 then begin a:=a-e*r9; d:=d-f9*e; t9:=t9+e; u9:=r9; end;

20: end;

Procedure pard(j:longint);
label 10,20;
var l:longint;
begin
10: if j=1 then begin if t1=0 then goto 20; end;
if j=2 then begin if t2=0 then goto 20; end;
if j=3 then begin if t3=0 then goto 20; end;
if j=4 then begin if t4=0 then goto 20; end;
if j=5 then begin if t5=0 then goto 20; end;
if j=6 then begin if t6=0 then goto 20; end;
if j=7 then begin if t7=0 then goto 20; end;
if j=8 then begin if t8=0 then goto 20; end;
if j=9 then begin if t9=0 then goto 20; end;
gotoxy(22,7+j); l:=StrLong(input);
gotoxy(22,7+j); write('            ');
if j=1 then begin if t1<l then goto 10; end;
if j=2 then begin if t2<l then goto 10; end;
if j=3 then begin if t3<l then goto 10; end;
if j=4 then begin if t4<l then goto 10; end;
if j=5 then begin if t5<l then goto 10; end;
if j=6 then begin if t6<l then goto 10; end;
if j=7 then begin if t7<l then goto 10; end;
if j=8 then begin if t8<l then goto 10; end;
if j=9 then begin if t9<l then goto 10; end;
if j=1 then begin a:=a+l*r1; d:=d+f1*e; t1:=t1-l; if t1=0 then u1:=0; end;
if j=2 then begin a:=a+l*r2; d:=d+f2*e; t2:=t2-l; if t2=0 then u2:=0; end;
if j=3 then begin a:=a+l*r3; d:=d+f3*e; t3:=t3-l; if t3=0 then u3:=0; end;
if j=4 then begin a:=a+l*r4; d:=d+f4*e; t4:=t4-l; if t4=0 then u4:=0; end;
if j=5 then begin a:=a+l*r5; d:=d+f5*e; t5:=t5-l; if t5=0 then u5:=0; end;
if j=6 then begin a:=a+l*r6; d:=d+f6*e; t6:=t6-l; if t6=0 then u6:=0; end;
if j=7 then begin a:=a+l*r7; d:=d+f7*e; t7:=t7-l; if t7=0 then u7:=0; end;
if j=8 then begin a:=a+l*r8; d:=d+f8*e; t8:=t8-l; if t8=0 then u8:=0; end;
if j=9 then begin a:=a+l*r9; d:=d+f9*e; t9:=t9-l; if t9=0 then u9:=0; end;
if a>999999999 then a:=10000;
20: end;

procedure savem;
var nos:string;
begin
clrscr;
gotoxy(30,12); write('Ievadi nosaukumu: ');
nos:=inputing;
insert('.sav',nos,length(nos)+1);
save(numStr(LongStr(a)),nos);
saved(numStr(LongStr(b)),nos);
saved(numStr(LongStr(m)),nos);
saved(numStr(LongStr(c)),nos);
saved(longstr(ac),nos);
end;

begin
randomize;
a:=2001;
b:=10;
c:=10;
d:=10;
m:=1;

f1:=2; t1:=0; u1:=0;
f2:=5; t2:=0; u2:=0;
f3:=8; t3:=0; u3:=0;
f4:=12; t4:=0; u4:=0;
f5:=15; t5:=0; u5:=0;
f6:=5; t6:=0; u6:=0;
f7:=17; t7:=0; u7:=0;
f8:=10; t8:=0; u8:=0;
f9:=40; t9:=0; u9:=0;

mekl;

clrscr;
gotoxy(2,3); write('______________________________________________________________________________');
gotoxy(2,24); write('_________________________________');
gotoxy(2,6); write('_________________________________');
gotoxy(35,4); write(char(179));
gotoxy(35,5); write(char(179));
gotoxy(35,6); write(char(179));
gotoxy(35,7); write(char(179));
gotoxy(35,8); write(char(179));
gotoxy(35,9); write(char(179));
gotoxy(35,10); write(char(179));
gotoxy(35,11); write(char(179));
gotoxy(35,12); write(char(179));
gotoxy(35,13); write(char(179));
gotoxy(35,14); write(char(179));
gotoxy(35,15); write(char(179));
gotoxy(35,16); write(char(179));
gotoxy(35,17); write(char(179));
gotoxy(35,18); write(char(179));
gotoxy(35,19); write(char(179));
gotoxy(35,20); write(char(179));
gotoxy(35,21); write(char(179));
gotoxy(35,22); write(char(179));
gotoxy(35,23); write(char(179));
gotoxy(35,24); write(char(179));
gotoxy(35,25); write(char(179));
5: a:=a-m;
r1:=random(4)+2;
r2:=random(7)+5;
r3:=random(11)+10;
r4:=random(16)+20;
r5:=random(31)+15;
r6:=random(71)+40;
r7:=random(51)+70;
r8:=random(41)+55;
r9:=random(201)+100;
10: g:=t1*f1+t2*f2+t3*f3+t4*f4+t5*f5+t6*f6+t7*f7+t8*f8+t9*f9;
d:=b-g;
gotoxy(40,2); write('                           ');
gotoxy(10,2); write('                          ');
gotoxy(2,5); write('                                ');
gotoxy(5,25); write('                  ');
gotoxy(7,23); write('                      ');
gotoxy(3,8); write('                       ');
gotoxy(3,9); write('                         ');
gotoxy(3,10); write('                         ');
gotoxy(3,11); write('                         ');
gotoxy(3,12); write('                         ');
gotoxy(3,13); write('                         ');
gotoxy(3,14); write('                         ');
gotoxy(3,15); write('                         ');
gotoxy(3,16); write('                         ');

gotoxy(3,8); write('. sk. ', t1,'   Ls ',u1);
gotoxy(3,9); write('. sk. ', t2,'   Ls ',u2);
gotoxy(3,10); write('. sk. ', t3,'   Ls ',u3);
gotoxy(3,11); write('. sk. ', t4,'   Ls ',u4);
gotoxy(3,12); write('. sk. ', t5,'   Ls ',u5);
gotoxy(3,13); write('. sk. ', t6,'   Ls ',u6);
gotoxy(3,14); write('. sk. ', t7,'   Ls ',u7);
gotoxy(3,15); write('. sk. ', t8,'   Ls ',u8);
gotoxy(3,16); write('. sk. ', t9,'   Ls ',u9);
gotoxy(7,23); write('Aiznemts: ',g,' Kg');
gotoxy(40,2); write('Nauda: Ls ', a);
gotoxy(10,25); write('Vieta: ', b,' Kg');
gotoxy(7,2); write('Briva vieta: ', d,' Kg');
if c>100000000 then v:=true;
if v= false then begin gotoxy(2,5); write('Pirkt: ',b*3,' Kg',' par Ls ',c*10); end;
if v= true then begin gotoxy(2,5); write('Pirkt: '); write('NEVAR'); end;
gotoxy(2,5); writeln('P');
gotoxy(2,8); writeln('1');
gotoxy(2,9); writeln('2');
gotoxy(2,10); writeln('3');
gotoxy(2,11); writeln('4');
gotoxy(2,12); writeln('5');
gotoxy(2,13); writeln('6');
gotoxy(2,14); writeln('7');
gotoxy(2,15); writeln('8');
gotoxy(2,16); writeln('9');
prece;
repeat
z:=readkey;
if a <= 0 then begin gotoxy(40,12); write('TU ZAUDEJI!!!'); repeat until keypressed; halt; end;
if z = char(27) then begin
gotoxy(30,14); write('Vai tu gribi iziet?');
gotoxy(25,15);write('Nospied S lai sglabatu un izietu.');
repeat
w:=readkey;
if w=char(13) then halt; gotoxy(30,14); write('     ',char(179),'                 ');
if w=char(ord('s')) then begin savem; halt; end;
if w=char(27) then begin gotoxy(25,15); write('          ',char(179),'                      '); goto 10; end;
until w=char(27);
end;

if z = char(13) then goto 5;
if z = char(ord('p')) then begin pirkt; goto 10; end;
if z = char(ord('1')) then begin pirktp(1); goto 10; end;
if z = char(ord('2')) then begin pirktp(2); goto 10; end;
if z = char(ord('3')) then begin pirktp(3); goto 10; end;
if z = char(ord('4')) then begin pirktp(4); goto 10; end;
if z = char(ord('5')) then begin pirktp(5); goto 10; end;
if z = char(ord('6')) then begin pirktp(6); goto 10; end;
if z = char(ord('7')) then begin pirktp(7); goto 10; end;
if z = char(ord('8')) then begin pirktp(8); goto 10; end;
if z = char(ord('9')) then begin pirktp(9); goto 10; end;
if z = char(ord('!')) then begin pard(1); goto 10; end;
if z = char(ord('@')) then begin pard(2); goto 10; end;
if z = char(ord('#')) then begin pard(3); goto 10; end;
if z = char(ord('$')) then begin pard(4); goto 10; end;
if z = char(ord('%')) then begin pard(5); goto 10; end;
if z = char(ord('^')) then begin pard(6); goto 10; end;
if z = char(ord('&')) then begin pard(7); goto 10; end;
if z = char(ord('*')) then begin pard(8); goto 10; end;
if z = char(ord('(')) then begin pard(9); goto 10; end;
until z=char(27);
100: end.