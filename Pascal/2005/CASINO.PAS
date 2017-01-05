uses dos, ifer2;
Label 5,10,20,30,40,50,100;
var nauda,b,c,d,e,g,m,f1,f2,f3,f4,f5,f6,f7,f8,f9,r1,r2,r3,r4,r5,r6,r7,r8,r9,t1,t2,t3,t4,t5,t6,t7,t8,t9,
u1,u2,u3,u4,u5,u6,u7,u8,u9:longint; v:boolean; z,w,op:char;
Var
  head : Word    Absolute $0040:$001A;
  tail : Word    Absolute $0040:$001C;
  time : LongInt Absolute $0040:$006C;
  regs : Registers;

var izv,cits:string;

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
var sava,savb,savc,savm,yu:string;
begin
yu:='';

sava:=open(nosa);
savb:=open(nosa);
savm:=open(nosa);

delete(sava,10,27);
delete(sava,10,30);
delete(savb,1,9);
delete(savb,28,30);
delete(savm,1,36);
if tr = 1 then yu:=sava;
if tr = 2 then yu:=savb;
if tr = 3 then yu:=savm;
opened:=yu;
end;

Procedure Delay(s : Word);
  Var
    start    : LongInt;
    finished : Boolean;
  begin
    start := time;
    Repeat
      if time < start then    { midnight rollover occurred during the period }
        dec(start,$1800B0);
      finished := (time > (start + s * 18.2));
    Until finished;
  end;

Function KeyPressed: Boolean;
  begin
    KeyPressed := (tail <> head);
  end;

procedure zimet;
begin
gotoxy(2,3); write('______________________________________________________________________________');
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

end;

procedure savem;
begin
save(numstr(longstr(nauda)),izv);
saved(cits,izv); saved('739',izv);
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
write('       ');
gotoxy(n,n2);
repeat
o:=readkey;
if o=char(27) then begin savem; halt; gotoxy(n,n2); write('              '); gotoxy(n,n2); z:=''; goto ed; end;
if o=char(8) then begin if wherex=n then goto 10; write(char(8),' ',char(8)); delete(z,length(z),1); 10: end;
if o=char(ord('1')) then begin if wherex>n+5 then goto 11; write('1'); insert('1',z,length(z)+1); 11: end;
if o=char(ord('2')) then begin if wherex>n+5 then goto 12; write('2'); insert('2',z,length(z)+1); 12: end;
if o=char(ord('3')) then begin if wherex>n+5 then goto 13; write('3'); insert('3',z,length(z)+1); 13: end;
if o=char(ord('4')) then begin if wherex>n+5 then goto 14; write('4'); insert('4',z,length(z)+1); 14: end;
if o=char(ord('5')) then begin if wherex>n+5 then goto 15; write('5'); insert('5',z,length(z)+1); 15: end;
if o=char(ord('6')) then begin if wherex>n+5 then goto 16; write('6'); insert('6',z,length(z)+1); 16: end;
if o=char(ord('7')) then begin if wherex>n+5 then goto 17; write('7'); insert('7',z,length(z)+1); 17: end;
if o=char(ord('8')) then begin if wherex>n+5 then goto 18; write('8'); insert('8',z,length(z)+1); 18: end;
if o=char(ord('9')) then begin if wherex>n+5 then goto 19; write('9'); insert('9',z,length(z)+1); 19: end;
if o=char(ord('0')) then begin if wherex>n+5 then goto 20; write('0'); insert('0',z,length(z)+1); 20: end;
until o=char(13);
ed: gotoxy(n,n2); write('        ');
input:=z;
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
gotoxy(34,13); write('Tev ir tikai Ls ',nauda); end;

if sa=2 then begin gotoxy(28,11); writeln('Tu esi paspelejis gandriz visu naudu');
gotoxy(32,12);writeln('Diemzel tu vairs nevari spelet');
gotoxy(26,13);writeln('Lai varetu spelet tev jabut vismaz Ls 10');
gotoxy(36,14);write('Tev ir tikai Ls ',nauda); end;

if sa=3 then begin gotoxy(33,11); writeln('Lai ieietu "Casino"');
gotoxy(30,12);write('Jabut jau uztaisitam seivam'); end;

repeat until keypressed; halt;
end;

Procedure mekl;
label 9,12,13,a10,a20,a30,a40,a50,pir;
var DirInfo: SearchRec;
var S,sv: PathStr;
var x,z,zx,cx:integer;
var s1,s2,s3,s4,s5,s6,s7,s8,s9:string;
var e:char;
begin
x:=11;
z:=0;
clrscr;
gotoxy(32,x); writeln('Programma "Casino"');
x:=x+1;

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
if z=0 then nad(3);
repeat
e:=readkey;
if e=char(27) then halt;
if e=char(56) then begin if zx=1 then begin x:=x+cx-1; zx:=cx; goto a10; end; zx:=zx-1; x:=x-1; a10: gotoxy(35,x); end;
if e=char(50) then begin if zx=cx then begin x:=x-cx+1; zx:=1; goto a20; end; zx:=zx+1; x:=x+1; a20: gotoxy(35,x); end;
if e=char(13) then begin izv:=ins(zx,s1,s2,s3,s4,s5,s6,s7,s8,s9); end;
until e=char(13);

nauda:=StrLong(opened(1,izv))+m;  cits:=opened(2,izv);
if strlong(opened(3,izv)) <> 739 then goto pir;

12: goto 13;
pir: clrscr; gotoxy(24,10); writeln('Lai ieietu Casino tev jamaksa Ls 3000 ');
gotoxy(25,12); write('Vai maksasi?  Nospied Y lai maksatu.');
repeat
op:=readkey;
if op=char(27) then halt;
if op=char(ord('Y')) then begin if nauda-3000<=1 then begin
gotoxy(35,13); write('Nepietiek nauda!'); repeat until keypressed; halt; end; nauda:=nauda-3000; savem; goto 13; end;
if op=char(ord('y')) then begin if nauda-3000<=1 then begin
gotoxy(35,13); write('Nepietiek nauda!'); repeat until keypressed; halt; end; nauda:=nauda-3000; savem; goto 13; end;
if op=char(13) then begin if nauda-3000<=1 then begin
gotoxy(35,13); write('Nepietiek nauda!'); repeat until keypressed; halt; end; nauda:=nauda-3000; savem; goto 13; end;
until op=char(13);
13: end;

label t;
var likm,lik,tsk,ska:longint;
var asd:char;
begin
clrscr;
mekl;
if nauda < 10 then nad(1);
clrscr;
zimet;
gotoxy(7,5); write('    Likme : ');
gotoxy(7,8); write('X * Likme : ');
gotoxy(3,10); write('Tavs skaitlis : ');
gotoxy(48,5); write('Likme : ');
gotoxy(44,7); write('X * Likme : ');
gotoxy(40,10); write('Tavs skaitlis : ');
gotoxy(38,12); write('Datora skaitlis : ');
gotoxy(15,2); write('"Casino"');
5: randomize;
gotoxy(56,5); write('           ');
gotoxy(56,7); write('           ');
gotoxy(56,10); write('           ');
gotoxy(56,12); write('           ');
gotoxy(38,15); write('                                ');
gotoxy(38,16); write('                                ');
gotoxy(47,2); write('                                ');
if nauda<=0 then begin gotoxy(38,15); write('Tu zaudeji'); repeat until keypressed; halt; end;
gotoxy(47,2); write('Nauda: Ls ', nauda);
10: gotoxy(7,5); write('    Likme : '); lik:=strlong(input);
if lik < 3 then goto 10;
if lik > nauda-1 then goto 10;
nauda:=nauda-lik;
gotoxy(47,2); write('Nauda: Ls ', nauda);
gotoxy(56,5); write(lik);
20: gotoxy(7,8); write('X * Likme : '); likm:=strlong(input);
if likm<2 then goto 20;
gotoxy(56,7); write(likm);
30: gotoxy(3,10); write('Tavs skaitlis : '); tsk:=strlong(input);
if likm<2 then goto 20;
gotoxy(56,10); write(tsk);
if tsk>likm then goto 30;
if tsk<1 then goto 30;
ska:=random(likm)+1;
gotoxy(56,12); write(ska);
gotoxy(38,15);
if nauda<=0 then begin gotoxy(38,15); write('Tu zaudeji'); repeat until keypressed; halt; end;
if ska=tsk then begin write('Tu uzvareji un ieguvi Ls ');
if nauda+likm*lik > 999999999 then begin nauda:=10000; write(nauda); goto t; end;
nauda:=nauda+likm*lik; write(likm*lik); t: end
else write('Tu zaudeji Ls ',lik);
gotoxy(47,2); write('                    ');
gotoxy(47,2); write('Nauda: Ls ', nauda);
gotoxy(38,16); write('Nospted ENTER lai turpinatu.');
repeat
asd:=readkey;
if asd=char(27) then begin savem; halt; end;
if asd=char(13) then begin savem; if nauda<10 then nad(2); goto 5; end;
until asd=char(27);
end.