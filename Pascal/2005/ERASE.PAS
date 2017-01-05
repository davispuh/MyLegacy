uses Dos;

var un:string;
VAR
     Reg                              : Registers;

  time : LongInt Absolute $0040:$006C;
  regs : Registers;
  pelpog : boolean;


Procedure ClrScr;
begin
 Inline($B4/$06/$B0/$19/$B7/$07/$B5/$00/$B1/$00/$B6/$19/$B2/$4F/$CD/$10/$B4/$02/$B7/$00/$B2/$00/$B6/$00/$CD/$10); end;

Function KeyPressed: Boolean;
Var   head : Word    Absolute $0040:$001A;
      tail : Word    Absolute $0040:$001C;

begin
    keypressed:=false;
    KeyPressed:= (tail <> head);
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

function input:string;
label z10,z11,z12,z13,z14,z15,z16,z17,z18,z19,ed;
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
if o=char(8) then begin if wherex=n then goto z10; write(char(8),' ',char(8)); delete(z,length(z),1); end;
if wherex>n+49 then goto z10;
if o='`' then begin write('`'); insert('`',z,length(z)+1); end;
if o='~' then begin write('~'); insert('~',z,length(z)+1); end;
if o='!' then begin write('!'); insert('!',z,length(z)+1); end;
if o='@' then begin write('@'); insert('@',z,length(z)+1); end;
if o='#' then begin write('#'); insert('#',z,length(z)+1); end;
if o='$' then begin write('$'); insert('$',z,length(z)+1); end;
if o='%' then begin write('%'); insert('?',z,length(z)+1); end;
if o='^' then begin write('^'); insert('^',z,length(z)+1); end;
if o='&' then begin write('&'); insert('&',z,length(z)+1); end;
if o='*' then begin write('*'); insert('*',z,length(z)+1); end;
if o='(' then begin write('('); insert('(',z,length(z)+1); end;
if o=')' then begin write(')'); insert(')',z,length(z)+1); end;
if o='_' then begin write('_'); insert('_',z,length(z)+1); end;
if o='-' then begin write('-'); insert('-',z,length(z)+1); end;
if o='=' then begin write('='); insert('=',z,length(z)+1); end;
if o='+' then begin write('+'); insert('+',z,length(z)+1); end;
if o='|' then begin write('|'); insert('|',z,length(z)+1); end;

if o='[' then begin write('['); insert('[',z,length(z)+1); end;
if o=']' then begin write(']'); insert(']',z,length(z)+1); end;
if o='{' then begin write('{'); insert('{',z,length(z)+1); end;
if o='}' then begin write('}'); insert('}',z,length(z)+1); end;
if o=';' then begin write(';'); insert(';',z,length(z)+1); end;
if o='"' then begin write('"'); insert('"',z,length(z)+1); end;
if o=',' then begin write(','); insert(',',z,length(z)+1); end;
if o='.' then begin write('.'); insert('.',z,length(z)+1); end;
if o='?' then begin write('?'); insert('?',z,length(z)+1); end;
if o='<' then begin write('<'); insert('<',z,length(z)+1); end;
if o='>' then begin write('>'); insert('>',z,length(z)+1); end;

if o=char(39) then begin write(char(39)); insert(char(39),z,length(z)+1); end;

if o='.' then begin write('.'); insert('.',z,length(z)+1); end;
if o='1' then begin write('1'); insert('1',z,length(z)+1); end;
if o='2' then begin write('2'); insert('2',z,length(z)+1); end;
if o='3' then begin write('3'); insert('3',z,length(z)+1); end;
if o='4' then begin write('4'); insert('4',z,length(z)+1); end;
if o='5' then begin write('5'); insert('5',z,length(z)+1); end;
if o='6' then begin write('6'); insert('6',z,length(z)+1); end;
if o='7' then begin write('7'); insert('7',z,length(z)+1); end;
if o='8' then begin write('8'); insert('8',z,length(z)+1); end;
if o='9' then begin write('9'); insert('9',z,length(z)+1); end;
if o='0' then begin write('0'); insert('0',z,length(z)+1); end;
if o='a' then begin write('A'); insert('A',z,length(z)+1); end;
if o='b' then begin write('B'); insert('B',z,length(z)+1); end;
if o='c' then begin write('C'); insert('C',z,length(z)+1); end;
if o='d' then begin write('D'); insert('D',z,length(z)+1); end;
if o='e' then begin write('E'); insert('E',z,length(z)+1); end;
if o='f' then begin write('F'); insert('F',z,length(z)+1); end;
if o='g' then begin write('G'); insert('G',z,length(z)+1); end;
if o='h' then begin write('H'); insert('H',z,length(z)+1); end;
if o='i' then begin write('I'); insert('I',z,length(z)+1); end;
if o='j' then begin write('J'); insert('J',z,length(z)+1); end;
if o='k' then begin write('K'); insert('K',z,length(z)+1); end;
if o='l' then begin write('L'); insert('L',z,length(z)+1); end;
if o='m' then begin write('M'); insert('M',z,length(z)+1); end;
if o='n' then begin write('N'); insert('N',z,length(z)+1); end;
if o='o' then begin write('O'); insert('O',z,length(z)+1); end;
if o='p' then begin write('P'); insert('P',z,length(z)+1); end;
if o='q' then begin write('Q'); insert('Q',z,length(z)+1); end;
if o='r' then begin write('R'); insert('R',z,length(z)+1); end;
if o='s' then begin write('S'); insert('S',z,length(z)+1); end;
if o='t' then begin write('T'); insert('T',z,length(z)+1); end;
if o='u' then begin write('U'); insert('U',z,length(z)+1); end;
if o='w' then begin write('W'); insert('W',z,length(z)+1); end;
if o='x' then begin write('X'); insert('X',z,length(z)+1); end;
if o='y' then begin write('Y'); insert('Y',z,length(z)+1); end;
if o='v' then begin write('V'); insert('V',z,length(z)+1); end;
if o='z' then begin write('Z'); insert('Z',z,length(z)+1); end;
if o='A' then begin write('A'); insert('A',z,length(z)+1); end;
if o='B' then begin write('B'); insert('B',z,length(z)+1); end;
if o='C' then begin write('C'); insert('C',z,length(z)+1); end;
if o='D' then begin write('D'); insert('D',z,length(z)+1); end;
if o='E' then begin write('E'); insert('E',z,length(z)+1); end;
if o='F' then begin write('F'); insert('F',z,length(z)+1); end;
if o='G' then begin write('G'); insert('G',z,length(z)+1); end;
if o='H' then begin write('H'); insert('H',z,length(z)+1); end;
if o='I' then begin write('I'); insert('I',z,length(z)+1); end;
if o='J' then begin write('J'); insert('J',z,length(z)+1); end;
if o='K' then begin write('K'); insert('K',z,length(z)+1); end;
if o='L' then begin write('L'); insert('L',z,length(z)+1); end;
if o='M' then begin write('M'); insert('M',z,length(z)+1); end;
if o='N' then begin write('N'); insert('N',z,length(z)+1); end;
if o='O' then begin write('O'); insert('O',z,length(z)+1); end;
if o='P' then begin write('P'); insert('P',z,length(z)+1); end;
if o='Q' then begin write('Q'); insert('Q',z,length(z)+1); end;
if o='R' then begin write('R'); insert('R',z,length(z)+1); end;
if o='S' then begin write('S'); insert('S',z,length(z)+1); end;
if o='T' then begin write('T'); insert('T',z,length(z)+1); end;
if o='U' then begin write('U'); insert('U',z,length(z)+1); end;
if o='W' then begin write('W'); insert('W',z,length(z)+1); end;
if o='X' then begin write('X'); insert('X',z,length(z)+1); end;
if o='Y' then begin write('Y'); insert('Y',z,length(z)+1); end;
if o='V' then begin write('V'); insert('V',z,length(z)+1); end;
if o='Z' then begin write('Z'); insert('Z',z,length(z)+1); end;

if o='\' then begin write('\'); insert('\',z,length(z)+1); end;
if o=':' then begin write(':'); insert(':',z,length(z)+1); end;
z10:
until o=char(13);
ed: input:=z;
end;

Function FExt(FileName : String) : Boolean;
Var
  SRec : SearchRec;
begin
  FindFirst(FileName, AnyFile, SRec);
  FExt := (DosError = 0);
end;

function d(na:string):string;
begin
delete(na,length(na)-3,4);
na:=na+'\';
d:=na;
end;

Procedure delp(ZapFileName:string);
var ZapFile:File;
    ZapFilePos:Longint;
    Buffer:array [1..406] of byte;
    NumWritten, BufferSize, NumRead: word;
    label 20;
begin
    Buffersize:=SizeOf(Buffer);
    Assign(ZapFile,ZapFileName);
    FileMode:=2;
    SetFAttr(ZapFile, Archive);
    if IOResult <> 0 then goto 20;
    if ErrorAddr<>Nil then goto 20;
    if exitcode <> 0 then goto 20;

    Reset(ZapFile,1);
    if DosError <> 0 then goto 20;
    if ErrorAddr<>Nil then goto 20;
    if exitcode <> 0 then goto 20;
    if IOResult <> 0 then goto 20;
    repeat
        ZapFilePos:=FilePos(ZapFile);
        BlockRead(ZapFile,Buffer,BufferSize,NumRead);
        FillChar(Buffer,BufferSize,#255);
        Seek(ZapFile,ZapFilePos);
        BlockWrite(ZapFile,Buffer,NumRead,NumWritten);
    until (NumRead=0) or (NumWritten<>NumRead);
    close(ZapFile);
    Erase(ZapFile);
    if DosError <> 0 then goto 20;
    if ErrorAddr<>Nil then goto 20;
    if exitcode <> 0 then goto 20;
    if IOResult <> 0 then goto 20;

20:
end;

procedure del(fn:string);
var
 F:  file;
label 20;
begin
 Assign(F, fn);
 FileMode:=2;
 SetFAttr(F, Archive);
 if IOResult <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if exitcode <> 0 then goto 20;
  Reset(F,1);
 if DosError <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if IOResult <> 0 then goto 20;
 if exitcode <> 0 then goto 20;
 close(F);
 Erase(F);
 if DosError <> 0 then goto 20;
 if IOResult <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if exitcode <> 0 then goto 20;

20:
end;

procedure ddir(fn:string);
var
 F:  file;
label 20;
begin
 Assign(F, fn);
 FileMode:=2;
 if DosError <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if IOResult <> 0 then goto 20;
 if exitcode <> 0 then goto 20;
 RmDir(fn);
 if DosError <> 0 then goto 20;
 if exitcode <> 0 then goto 20;
 if ErrorAddr<>Nil then goto 20;
 if IOResult <> 0 then goto 20;

20:
end;

procedure isd(qa:string);
var
 F: file;
 Attr: Word;
label e;
begin
 if fext(qa) = true  then begin
 Assign(F, qa);
 GetFAttr(F, Attr);
  if DosError <> 0 then goto e;
  if ErrorAddr<>Nil then goto e;
  if DosError <> 0 then goto e;

 if Attr and Directory = 0 then begin if un='J' then begin delp(qa); if ErrorAddr<>Nil then goto e; end
 else begin del(qa);  if ErrorAddr<>Nil then goto e; end; end; end;
e:
end;

procedure isd2(qa:string);
var
 F: file;
 Attr: Word;
label e;
begin
 if fext(qa) = true  then begin
 Assign(F, qa);
 GetFAttr(F, Attr);
 if DosError <> 0 then goto e;
 if Attr and Directory <> 0 then begin ddir(qa); end; end;

e:
end;



procedure meklet(nos:string; gar:integer);
var
 DirInfo: SearchRec;
 f:file;
 attr:word;
 poset:string;
label  10;
begin
 gotoxy(10,12); write('Dzesam: ',d(nos));
  FindFirst(nos, anyfile, DirInfo);
 while DosError = 0 do
 begin
   if dirinfo.name = '.' then goto 10;
   if dirinfo.name = '..' then goto 10;

  gotoxy(18+gar,12); Write('                                                           ');
  gotoxy(18+gar,12); Write(DirInfo.Name);
  meklet(d(nos)+dirinfo.name+'\*.*',gar);
  poset:=dirinfo.name;
     isd(d(nos)+dirinfo.name);

10: FindNext(DirInfo);
end;
end;

procedure meklet2(nos:string; gar:integer);
var
 DirInfo: SearchRec;
 f:file;
 attr:word;
 poset:string;
label  10;
begin
 gotoxy(10,12); write('Dzesam: ',d(nos));
  FindFirst(nos, anyfile, DirInfo);
 while DosError = 0 do
 begin
   if dirinfo.name = '.' then goto 10;
   if dirinfo.name = '..' then goto 10;

  gotoxy(18+gar,12); Write('                                                           ');
  gotoxy(18+gar,12); Write(DirInfo.Name);
  meklet2(d(nos)+dirinfo.name+'\*.*',gar);
  poset:=dirinfo.name;
     isd2(d(nos)+dirinfo.name);

10: FindNext(DirInfo);
end;
end;

function input2:string;
label 10,11,12,13,14,15,16,17,18,19,20,ed;
var p:char;
var v:string;
var n,n2:integer;
begin
v:='';
n:=wherex;
n2:=wherey;
gotoxy(n,n2);
write('       ');
gotoxy(n,n2);
repeat
p:=readkey;
if p=char(27) then begin halt; end;
if p=char(8) then begin if wherex=n then goto 10; write(char(8),' ',char(8)); v:=''; end;
if wherex > n then goto 10;
if p='J' then begin v:='J' end;
if p='N' then begin v:='N' end;
if p='j' then begin v:='J' end;
if p='n' then begin v:='N' end;

10:
until (v='J') or (v='N');
ed:
input2:=v;
end;

var fai:string;
      P: PathStr;
      Di: DirStr;
      N: NameStr;
      E: ExtStr;

label st,st2,st3;

begin
st: clrscr;
gotoxy(10,7); write('Nospied J lai izdzestu pilniba vai N ja ne : '); un:=input2;
writeln(un);
gotoxy(10,10); write('Piemeram C:\GAMES\   vai   A:\SETUP.INI');
st2:gotoxy(20,09); write('                            ');
gotoxy(10,09); write('Ievadi vietu: '); fai:=input;
FSplit(FAI, Di, N, E);
if fai='' then goto st2;
if di='' then goto st2;

if n='' then begin
insert('*.*',fai,length(fai)+1);
meklet(fai,length(d(fai)));
meklet2(fai,length(d(fai)));
delete(fai,length(fai)-3,6);
isd2(fai);
end
else begin  gotoxy(10,12); write('Dzesam: ',fai); isd(fai); end;
writeln;
gotoxy(10,15); write('PABEIDZU!!!');
repeat until keypressed;
end.