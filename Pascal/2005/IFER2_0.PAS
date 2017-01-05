unit ifer2;
interface
uses dos,graph;

const levn1 = 'levels\level';
      levn3 = '.dat';
    KeyPort = $60;
        ESC = 01;
        KRE = 75;
        LAB = 77;
        AUG = 72;
        LEJ = 80;

var
    naklim,naklim2 : boolean;
    g,tu,tu2,levn2 : integer;
             korxy : array[1..19,1..14] of integer;
               reg : Registers;
              time : Longint Absolute $0040:$006C;
              regs : Registers;
   grutiba, pelpog : boolean;


Function inputing2:string;
Function Find(FileName : String) : Boolean;
Function KeyPressed: Boolean;
Function LongStr( sk: Longint): String;
Function StrLong( sk: string ): longint;
Function KeyWord : Word;
Function Inkey : char;
Function ReadKey : Char;
Function WhereX : Byte; {Assembler;}
Function WhereY : Byte; {Assembler;}
Function FExt(FileName : String) : Boolean;
Function open(fail:string):string;
Function opens(kos:integer; fail:string):string;
Function opr(fail:string):string;
Function inputing:string;
Function pav(no,cik:integer):integer;
Function pav2(no,cik:integer):integer;
Function ievad:string;
Function ievadc:string;
Function pande(kur:integer; kas:string):string;
Function parvt(vad:string):string;

procedure save(texts:string; kur: string);
procedure saved(texts:string; kur: string);
Procedure GotoXY(x,y : Byte);
Procedure fon;
procedure setgr;
procedure kurs(tu,tu2:integer);
Procedure mcolor(kr1,kr2,kr3,kr4:integer);
procedure save2(texts:string; kur: string);
procedure saved2(texts:string; kur: string);
procedure nerkvadr(mal1,mal2,mal3,mal4,biez:integer;laba:boolean);
procedure aizkr(x,y:integer);
procedure fons(tu,tu2:integer);
procedure zale(tu,tu2:integer);
procedure udens(xx,yy:integer);
procedure kvadr(tu,tu2:integer; mala,malb,malc,malD:boolean);
procedure kvadr2(tu,tu2:integer; mala,malb,malc,malD:boolean);
Procedure zimfi(korx,kory:integer);
procedure zimkva(zx,zy:integer);
procedure zimak(x,y:integer);
procedure zimc1(zx,zy:integer);
procedure zimc2(zx,zy:integer);
procedure zimc3(zx,zy:integer);
procedure zimc4(zx,zy:integer);
procedure zimc5(zx,zy:integer);
procedure zimc6(zx,zy:integer);
procedure labir;

implementation

function pav(no,cik:integer):integer;
begin
if no<=0 then no:=cik;
if no>cik then no:=1;
pav:=no;
end;

Function pande(kur:integer; kas:string):string;
var
    stry : string;
  stri,y : string;

begin
stry:=kas;

kur:=kur+1;
delete(stry,1,kur-2);
delete(stry,2,length(stry));
pande:=stry;
end;

Function parvt(vad:string):string;
var sf:integer;
    inc,iel:string;
begin
inc:='';
iel:='';
for sf:=1 to length(vad) do
begin
     if pande(sf,vad) = 'a' then iel:='A'
else if pande(sf,vad) = 'ƒ' then iel:=' '
else if pande(sf,vad) = 'b' then iel:='B'
else if pande(sf,vad) = 'c' then iel:='C'
else if pande(sf,vad) = 'Ñ' then iel:='¶'
else if pande(sf,vad) = 'd' then iel:='D'
else if pande(sf,vad) = 'e' then iel:='E'
else if pande(sf,vad) = '‰' then iel:='í'
else if pande(sf,vad) = 'f' then iel:='F'
else if pande(sf,vad) = 'g' then iel:='G'
else if pande(sf,vad) = '…' then iel:='•'
else if pande(sf,vad) = 'h' then iel:='H'
else if pande(sf,vad) = 'i' then iel:='I'
else if pande(sf,vad) = 'Œ' then iel:='¡'
else if pande(sf,vad) = 'j' then iel:='J'
else if pande(sf,vad) = 'k' then iel:='K'
else if pande(sf,vad) = 'é' then iel:='è'
else if pande(sf,vad) = 'l' then iel:='L'
else if pande(sf,vad) = 'ë' then iel:='ê'
else if pande(sf,vad) = 'm' then iel:='M'
else if pande(sf,vad) = 'n' then iel:='N'
else if pande(sf,vad) = 'ì' then iel:='î'
else if pande(sf,vad) = 'o' then iel:='O'
else if pande(sf,vad) = 'p' then iel:='P'
else if pande(sf,vad) = 'q' then iel:='Q'
else if pande(sf,vad) = 'r' then iel:='R'
else if pande(sf,vad) = 's' then iel:='S'
else if pande(sf,vad) = 'Õ' then iel:='¾'
else if pande(sf,vad) = 't' then iel:='T'
else if pande(sf,vad) = 'u' then iel:='U'
else if pande(sf,vad) = '×' then iel:='Ç'
else if pande(sf,vad) = 'v' then iel:='V'
else if pande(sf,vad) = 'w' then iel:='W'
else if pande(sf,vad) = 'x' then iel:='X'
else if pande(sf,vad) = 'y' then iel:='Y'
else if pande(sf,vad) = 'z' then iel:='Z'
else if pande(sf,vad) = 'Ø' then iel:='Ï'
else if pande(sf,vad) = ' ' then iel:=''
else iel:=pande(sf,vad);
insert(iel,inc,length(inc)+1);
end;
parvt:=inc;
end;

Function pav2(no,cik:integer):integer;
begin
if no<=0 then no:=1;
if no>cik then no:=cik;
pav2:=no;
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
begin
Inline  ($B4/$00/$CD/$16);
end;

Function Find(FileName : String) : Boolean;
Var
  SRec : SearchRec;
begin
  FindFirst(FileName, AnyFile, SRec);
  Find := (DosError = 0);
end;

procedure save(texts:string; kur: string);

var F: text;
var  S: PathStr;
begin
assign(f,kur);
SetFAttr(F, $20);
rewrite(f);
write(f,texts);
SetFAttr(F, $01 or $02 or $04);
close(f);
end;

procedure save2(texts:string; kur: string);

var F: text;
var  S: PathStr;
begin
assign(f,kur);
SetFAttr(F, $20);
rewrite(f);
writeln(f,texts);
close(f);
end;

procedure saved(texts:string; kur: string);
var F,a: text;
var  S: PathStr;
begin
assign(a,kur);
SetFAttr(a, $20);
append(f);
Write(f,texts);
close(f);
assign(a,kur);
SetFAttr(F, $01 or $02 or $04);
end;

procedure saved2(texts:string; kur: string);
var F,a: text;
var  S: PathStr;
begin
assign(a,kur);
SetFAttr(a, $20);
append(f);
Writeln(f,texts);
close(f);
assign(a,kur);
end;

procedure nrind(asd:integer; var fil:text);
var kl : integer;

begin
kl:=0;
asd:=asd-1;
repeat
kl:=kl+1;
readln(fil);
until kl=asd;
end;

Function FExt(FileName : String) : Boolean;
Var
  SRec : SearchRec;
begin
  FindFirst(FileName, AnyFile, SRec);
  FExt := (DosError = 0);
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

Function opens(kos:integer; fail:string):string;
var
  F: Text;
  Ch: string;
  teks:string;
begin
teks:='';
Assign(F,fail);
Reset(F);
nrind(kos+2,f);
Read(F, teks);
close(f);
opens:=teks;
end;

Function opr(fail:string):string;
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
opr:=teks;
end;

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

Function KeyPressed: Boolean;
Var   head : Word    Absolute $0040:$001A;
      tail : Word    Absolute $0040:$001C;

begin
    keypressed:=false;
    KeyPressed:= (tail <> head);
end;

Function LongStr( sk: longint): string;
VAR
   s: ^string;
begin
asm
  mov     sp, bp
  push    ss
  push    WORD PTR @RESULT
end;

str(sk:0, s^);
End;

function inputing:string;
Label z10;
var o:char;
var z:string;
var n,n2:integer;
begin
z:='';
n:=wherex;
n2:=wherey;
repeat
o:=inkey;
if o=char(27) then begin goto z10; end;
if o=char(8) then begin if wherex=n then goto z10; write(char(8),' ',char(8)); delete(z,length(z),1); end;
if wherex>n+7 then goto z10;
if o=char(ord('1')) then begin write('1'); insert('1',z,length(z)+1); end;
if o=char(ord('2')) then begin write('2'); insert('2',z,length(z)+1); end;
if o=char(ord('3')) then begin write('3'); insert('3',z,length(z)+1); end;
if o=char(ord('4')) then begin write('4'); insert('4',z,length(z)+1); end;
if o=char(ord('5')) then begin write('5'); insert('5',z,length(z)+1); end;
if o=char(ord('6')) then begin write('6'); insert('6',z,length(z)+1); end;
if o=char(ord('7')) then begin write('7'); insert('7',z,length(z)+1); end;
if o=char(ord('8')) then begin write('8'); insert('8',z,length(z)+1); end;
if o=char(ord('9')) then begin write('9'); insert('9',z,length(z)+1); end;
if o=char(ord('0')) then begin write('0'); insert('0',z,length(z)+1); end;
if o=char(ord('a')) then begin write('A'); insert('a',z,length(z)+1); end;
if o=char(ord('b')) then begin write('B'); insert('b',z,length(z)+1); end;
if o=char(ord('c')) then begin write('C'); insert('c',z,length(z)+1); end;
if o=char(ord('d')) then begin write('D'); insert('d',z,length(z)+1); end;
if o=char(ord('e')) then begin write('E'); insert('e',z,length(z)+1); end;
if o=char(ord('f')) then begin write('F'); insert('f',z,length(z)+1); end;
if o=char(ord('g')) then begin write('G'); insert('g',z,length(z)+1); end;
if o=char(ord('h')) then begin write('H'); insert('h',z,length(z)+1); end;
if o=char(ord('i')) then begin write('I'); insert('i',z,length(z)+1); end;
if o=char(ord('j')) then begin write('J'); insert('j',z,length(z)+1); end;
if o=char(ord('k')) then begin write('K'); insert('k',z,length(z)+1); end;
if o=char(ord('l')) then begin write('L'); insert('l',z,length(z)+1); end;
if o=char(ord('m')) then begin write('M'); insert('m',z,length(z)+1); end;
if o=char(ord('n')) then begin write('N'); insert('n',z,length(z)+1); end;
if o=char(ord('o')) then begin write('O'); insert('o',z,length(z)+1); end;
if o=char(ord('p')) then begin write('P'); insert('p',z,length(z)+1); end;
if o=char(ord('q')) then begin write('Q'); insert('q',z,length(z)+1); end;
if o=char(ord('r')) then begin write('R'); insert('r',z,length(z)+1); end;
if o=char(ord('s')) then begin write('S'); insert('s',z,length(z)+1); end;
if o=char(ord('t')) then begin write('T'); insert('t',z,length(z)+1); end;
if o=char(ord('u')) then begin write('U'); insert('u',z,length(z)+1); end;
if o=char(ord('w')) then begin write('W'); insert('w',z,length(z)+1); end;
if o=char(ord('x')) then begin write('X'); insert('x',z,length(z)+1); end;
if o=char(ord('y')) then begin write('Y'); insert('y',z,length(z)+1); end;
if o=char(ord('v')) then begin write('V'); insert('v',z,length(z)+1); end;
if o=char(ord('z')) then begin write('Z'); insert('z',z,length(z)+1); end;
if o=char(ord('A')) then begin write('A'); insert('a',z,length(z)+1); end;
if o=char(ord('B')) then begin write('B'); insert('b',z,length(z)+1); end;
if o=char(ord('C')) then begin write('C'); insert('c',z,length(z)+1); end;
if o=char(ord('D')) then begin write('D'); insert('d',z,length(z)+1); end;
if o=char(ord('E')) then begin write('E'); insert('e',z,length(z)+1); end;
if o=char(ord('F')) then begin write('F'); insert('f',z,length(z)+1); end;
if o=char(ord('G')) then begin write('G'); insert('g',z,length(z)+1); end;
if o=char(ord('H')) then begin write('H'); insert('h',z,length(z)+1); end;
if o=char(ord('I')) then begin write('I'); insert('i',z,length(z)+1); end;
if o=char(ord('J')) then begin write('J'); insert('j',z,length(z)+1); end;
if o=char(ord('K')) then begin write('K'); insert('k',z,length(z)+1); end;
if o=char(ord('L')) then begin write('L'); insert('l',z,length(z)+1); end;
if o=char(ord('M')) then begin write('M'); insert('m',z,length(z)+1); end;
if o=char(ord('N')) then begin write('N'); insert('n',z,length(z)+1); end;
if o=char(ord('O')) then begin write('O'); insert('o',z,length(z)+1); end;
if o=char(ord('P')) then begin write('P'); insert('p',z,length(z)+1); end;
if o=char(ord('Q')) then begin write('Q'); insert('q',z,length(z)+1); end;
if o=char(ord('R')) then begin write('R'); insert('r',z,length(z)+1); end;
if o=char(ord('S')) then begin write('S'); insert('s',z,length(z)+1); end;
if o=char(ord('T')) then begin write('T'); insert('t',z,length(z)+1); end;
if o=char(ord('U')) then begin write('U'); insert('u',z,length(z)+1); end;
if o=char(ord('W')) then begin write('W'); insert('w',z,length(z)+1); end;
if o=char(ord('X')) then begin write('X'); insert('x',z,length(z)+1); end;
if o=char(ord('Y')) then begin write('Y'); insert('y',z,length(z)+1); end;
if o=char(ord('V')) then begin write('V'); insert('v',z,length(z)+1); end;
if o=char(ord('Z')) then begin write('Z'); insert('z',z,length(z)+1); end;
z10:
until (o=char(13)) or (o=char(27));
inputing:=z;
end;


Function ievad:string;
Label z10,str;
var o,ip:char;
var z:string;
var n,n2:integer;
begin
z:='';
n:=wherex;
n2:=wherey;
repeat
str:
o:=inkey;
if o=char(27) then begin goto z10; end;
if o=char(8) then begin if wherex=n then goto z10; write(char(8),' ',char(8)); delete(z,length(z),1); end;
if wherex>n+20 then goto z10;
   if o=char(ord('`')) then
   begin
   ip:=inkey;
   if ip=char(ord('a')) then begin write('ƒ'); insert('ƒ',z,length(z)+1); end;
   if ip=char(ord('c')) then begin write('Ñ'); insert('Ñ',z,length(z)+1); end;
   if ip=char(ord('e')) then begin write('‰'); insert('‰',z,length(z)+1); end;
   if ip=char(ord('g')) then begin write('…'); insert('…',z,length(z)+1); end;
   if ip=char(ord('i')) then begin write('Œ'); insert('Œ',z,length(z)+1); end;
   if ip=char(ord('k')) then begin write('é'); insert('é',z,length(z)+1); end;
   if ip=char(ord('l')) then begin write('ë'); insert('ë',z,length(z)+1); end;
   if ip=char(ord('n')) then begin write('ì'); insert('ì',z,length(z)+1); end;
   if ip=char(ord('s')) then begin write('Õ'); insert('Õ',z,length(z)+1); end;
   if ip=char(ord('u')) then begin write('×'); insert('×',z,length(z)+1); end;
   if ip=char(ord('z')) then begin write('Ø'); insert('Ø',z,length(z)+1); end;

   if ip=char(ord('A')) then begin write(' '); insert(' ',z,length(z)+1); end;
   if ip=char(ord('C')) then begin write('¶'); insert('¶',z,length(z)+1); end;
   if ip=char(ord('E')) then begin write('í'); insert('í',z,length(z)+1); end;
   if ip=char(ord('G')) then begin write('•'); insert('•',z,length(z)+1); end;
   if ip=char(ord('I')) then begin write('¡'); insert('¡',z,length(z)+1); end;
   if ip=char(ord('K')) then begin write('è'); insert('è',z,length(z)+1); end;
   if ip=char(ord('L')) then begin write('ê'); insert('ê',z,length(z)+1); end;
   if ip=char(ord('N')) then begin write('î'); insert('î',z,length(z)+1); end;
   if ip=char(ord('S')) then begin write('¾'); insert('¾',z,length(z)+1); end;
   if ip=char(ord('U')) then begin write('Ç'); insert('Ç',z,length(z)+1); end;
   if ip=char(ord('Z')) then begin write('Ï'); insert('Ï',z,length(z)+1); end;
   goto str;
   end;
if o=char(ord('a')) then begin write('a'); insert('a',z,length(z)+1); end;
if o=char(ord('b')) then begin write('b'); insert('b',z,length(z)+1); end;
if o=char(ord('c')) then begin write('c'); insert('c',z,length(z)+1); end;
if o=char(ord('d')) then begin write('d'); insert('d',z,length(z)+1); end;
if o=char(ord('e')) then begin write('e'); insert('e',z,length(z)+1); end;
if o=char(ord('f')) then begin write('f'); insert('f',z,length(z)+1); end;
if o=char(ord('g')) then begin write('g'); insert('g',z,length(z)+1); end;
if o=char(ord('h')) then begin write('h'); insert('h',z,length(z)+1); end;
if o=char(ord('i')) then begin write('i'); insert('i',z,length(z)+1); end;
if o=char(ord('j')) then begin write('j'); insert('j',z,length(z)+1); end;
if o=char(ord('k')) then begin write('k'); insert('k',z,length(z)+1); end;
if o=char(ord('l')) then begin write('l'); insert('l',z,length(z)+1); end;
if o=char(ord('m')) then begin write('m'); insert('m',z,length(z)+1); end;
if o=char(ord('n')) then begin write('n'); insert('n',z,length(z)+1); end;
if o=char(ord('o')) then begin write('o'); insert('o',z,length(z)+1); end;
if o=char(ord('p')) then begin write('p'); insert('p',z,length(z)+1); end;
if o=char(ord('q')) then begin write('q'); insert('q',z,length(z)+1); end;
if o=char(ord('r')) then begin write('r'); insert('r',z,length(z)+1); end;
if o=char(ord('s')) then begin write('s'); insert('s',z,length(z)+1); end;
if o=char(ord('t')) then begin write('t'); insert('t',z,length(z)+1); end;
if o=char(ord('u')) then begin write('u'); insert('u',z,length(z)+1); end;
if o=char(ord('w')) then begin write('w'); insert('w',z,length(z)+1); end;
if o=char(ord('x')) then begin write('x'); insert('x',z,length(z)+1); end;
if o=char(ord('y')) then begin write('y'); insert('y',z,length(z)+1); end;
if o=char(ord('v')) then begin write('v'); insert('v',z,length(z)+1); end;
if o=char(ord('z')) then begin write('z'); insert('z',z,length(z)+1); end;
if o=char(ord('A')) then begin write('A'); insert('A',z,length(z)+1); end;
if o=char(ord('B')) then begin write('B'); insert('B',z,length(z)+1); end;
if o=char(ord('C')) then begin write('C'); insert('C',z,length(z)+1); end;
if o=char(ord('D')) then begin write('D'); insert('D',z,length(z)+1); end;
if o=char(ord('E')) then begin write('E'); insert('E',z,length(z)+1); end;
if o=char(ord('F')) then begin write('F'); insert('F',z,length(z)+1); end;
if o=char(ord('G')) then begin write('G'); insert('G',z,length(z)+1); end;
if o=char(ord('H')) then begin write('H'); insert('H',z,length(z)+1); end;
if o=char(ord('I')) then begin write('I'); insert('I',z,length(z)+1); end;
if o=char(ord('J')) then begin write('J'); insert('J',z,length(z)+1); end;
if o=char(ord('K')) then begin write('K'); insert('K',z,length(z)+1); end;
if o=char(ord('L')) then begin write('L'); insert('L',z,length(z)+1); end;
if o=char(ord('M')) then begin write('M'); insert('M',z,length(z)+1); end;
if o=char(ord('N')) then begin write('N'); insert('N',z,length(z)+1); end;
if o=char(ord('O')) then begin write('O'); insert('O',z,length(z)+1); end;
if o=char(ord('P')) then begin write('P'); insert('P',z,length(z)+1); end;
if o=char(ord('Q')) then begin write('Q'); insert('Q',z,length(z)+1); end;
if o=char(ord('R')) then begin write('R'); insert('R',z,length(z)+1); end;
if o=char(ord('S')) then begin write('S'); insert('S',z,length(z)+1); end;
if o=char(ord('T')) then begin write('T'); insert('T',z,length(z)+1); end;
if o=char(ord('U')) then begin write('U'); insert('U',z,length(z)+1); end;
if o=char(ord('W')) then begin write('W'); insert('W',z,length(z)+1); end;
if o=char(ord('X')) then begin write('X'); insert('X',z,length(z)+1); end;
if o=char(ord('Y')) then begin write('Y'); insert('Y',z,length(z)+1); end;
if o=char(ord('V')) then begin write('V'); insert('V',z,length(z)+1); end;
if o=char(ord('Z')) then begin write('Z'); insert('Z',z,length(z)+1); end;
if o=char(ord(' ')) then begin write(' '); insert(' ',z,length(z)+1); end;
z10:
until (o=char(13)) or (o=char(27));
ievad:=z;
end;

Function ievadc:string;
Label z10;
var o,ip:char;
var z:string;
var n,n2:integer;
begin
z:='';
n:=wherex;
n2:=wherey;
repeat
o:=inkey;
if o=char(27) then begin goto z10; end;
if o=char(8) then begin if wherex=n then goto z10; write(char(8),' ',char(8)); delete(z,length(z),1); end;
if wherex>n+20 then goto z10;

if o=char(ord('1')) then begin write('1'); insert('1',z,length(z)+1); end;
if o=char(ord('2')) then begin write('2'); insert('2',z,length(z)+1); end;
if o=char(ord('3')) then begin write('3'); insert('3',z,length(z)+1); end;
if o=char(ord('4')) then begin write('4'); insert('4',z,length(z)+1); end;
if o=char(ord('5')) then begin write('5'); insert('5',z,length(z)+1); end;
if o=char(ord('6')) then begin write('6'); insert('6',z,length(z)+1); end;
if o=char(ord('7')) then begin write('7'); insert('7',z,length(z)+1); end;
if o=char(ord('8')) then begin write('8'); insert('8',z,length(z)+1); end;
if o=char(ord('9')) then begin write('9'); insert('9',z,length(z)+1); end;
if o=char(ord('0')) then begin write('0'); insert('0',z,length(z)+1); end;
if o=char(ord(' ')) then begin write(' '); insert(' ',z,length(z)+1); end;
z10:
until (o=char(13)) or (o=char(27));
ievadc:=z;
end;

function inputing2:string;
Label z10,z12;
var o:char;
var z:string;
var n,n2:integer;
begin
z:='';
n:=wherex;
n2:=wherey;
repeat
o:=inkey;
if o=char(27) then begin z:=''; goto z12; end;
if o=char(8) then begin if wherex=n then goto z10; write(char(8),' ',char(8)); delete(z,length(z),1); end;
if wherex>n+17 then goto z10;
if o=char(ord('1')) then begin write('1'); insert('1',z,length(z)+1); end;
if o=char(ord('2')) then begin write('2'); insert('2',z,length(z)+1); end;
if o=char(ord('3')) then begin write('3'); insert('3',z,length(z)+1); end;
if o=char(ord('4')) then begin write('4'); insert('4',z,length(z)+1); end;
if o=char(ord('5')) then begin write('5'); insert('5',z,length(z)+1); end;
if o=char(ord('6')) then begin write('6'); insert('6',z,length(z)+1); end;
if o=char(ord('7')) then begin write('7'); insert('7',z,length(z)+1); end;
if o=char(ord('8')) then begin write('8'); insert('8',z,length(z)+1); end;
if o=char(ord('9')) then begin write('9'); insert('9',z,length(z)+1); end;
if o=char(ord('0')) then begin write('0'); insert('0',z,length(z)+1); end;
if o=char(ord('a')) then begin write('A'); insert('A',z,length(z)+1); end;
if o=char(ord('b')) then begin write('B'); insert('B',z,length(z)+1); end;
if o=char(ord('c')) then begin write('C'); insert('C',z,length(z)+1); end;
if o=char(ord('d')) then begin write('D'); insert('D',z,length(z)+1); end;
if o=char(ord('e')) then begin write('E'); insert('E',z,length(z)+1); end;
if o=char(ord('f')) then begin write('F'); insert('F',z,length(z)+1); end;
if o=char(ord('g')) then begin write('G'); insert('G',z,length(z)+1); end;
if o=char(ord('h')) then begin write('H'); insert('H',z,length(z)+1); end;
if o=char(ord('i')) then begin write('I'); insert('I',z,length(z)+1); end;
if o=char(ord('j')) then begin write('J'); insert('J',z,length(z)+1); end;
if o=char(ord('k')) then begin write('K'); insert('K',z,length(z)+1); end;
if o=char(ord('l')) then begin write('L'); insert('L',z,length(z)+1); end;
if o=char(ord('m')) then begin write('M'); insert('M',z,length(z)+1); end;
if o=char(ord('n')) then begin write('N'); insert('N',z,length(z)+1); end;
if o=char(ord('o')) then begin write('O'); insert('O',z,length(z)+1); end;
if o=char(ord('p')) then begin write('P'); insert('P',z,length(z)+1); end;
if o=char(ord('q')) then begin write('Q'); insert('Q',z,length(z)+1); end;
if o=char(ord('r')) then begin write('R'); insert('R',z,length(z)+1); end;
if o=char(ord('s')) then begin write('S'); insert('S',z,length(z)+1); end;
if o=char(ord('t')) then begin write('T'); insert('T',z,length(z)+1); end;
if o=char(ord('u')) then begin write('U'); insert('U',z,length(z)+1); end;
if o=char(ord('w')) then begin write('W'); insert('W',z,length(z)+1); end;
if o=char(ord('x')) then begin write('X'); insert('X',z,length(z)+1); end;
if o=char(ord('y')) then begin write('Y'); insert('Y',z,length(z)+1); end;
if o=char(ord('v')) then begin write('V'); insert('V',z,length(z)+1); end;
if o=char(ord('z')) then begin write('Z'); insert('Z',z,length(z)+1); end;
if o=char(ord('A')) then begin write('A'); insert('A',z,length(z)+1); end;
if o=char(ord('B')) then begin write('B'); insert('B',z,length(z)+1); end;
if o=char(ord('C')) then begin write('C'); insert('C',z,length(z)+1); end;
if o=char(ord('D')) then begin write('D'); insert('D',z,length(z)+1); end;
if o=char(ord('E')) then begin write('E'); insert('E',z,length(z)+1); end;
if o=char(ord('F')) then begin write('F'); insert('F',z,length(z)+1); end;
if o=char(ord('G')) then begin write('G'); insert('G',z,length(z)+1); end;
if o=char(ord('H')) then begin write('H'); insert('H',z,length(z)+1); end;
if o=char(ord('I')) then begin write('I'); insert('I',z,length(z)+1); end;
if o=char(ord('J')) then begin write('J'); insert('J',z,length(z)+1); end;
if o=char(ord('K')) then begin write('K'); insert('K',z,length(z)+1); end;
if o=char(ord('L')) then begin write('L'); insert('L',z,length(z)+1); end;
if o=char(ord('M')) then begin write('M'); insert('M',z,length(z)+1); end;
if o=char(ord('N')) then begin write('N'); insert('N',z,length(z)+1); end;
if o=char(ord('O')) then begin write('O'); insert('O',z,length(z)+1); end;
if o=char(ord('P')) then begin write('P'); insert('P',z,length(z)+1); end;
if o=char(ord('Q')) then begin write('Q'); insert('Q',z,length(z)+1); end;
if o=char(ord('R')) then begin write('R'); insert('R',z,length(z)+1); end;
if o=char(ord('S')) then begin write('S'); insert('S',z,length(z)+1); end;
if o=char(ord('T')) then begin write('T'); insert('T',z,length(z)+1); end;
if o=char(ord('U')) then begin write('U'); insert('U',z,length(z)+1); end;
if o=char(ord('W')) then begin write('W'); insert('W',z,length(z)+1); end;
if o=char(ord('X')) then begin write('X'); insert('X',z,length(z)+1); end;
if o=char(ord('Y')) then begin write('Y'); insert('Y',z,length(z)+1); end;
if o=char(ord('V')) then begin write('V'); insert('V',z,length(z)+1); end;
if o=char(ord('Z')) then begin write('Z'); insert('Z',z,length(z)+1); end;
if o=char(ord('-')) then begin write('-'); insert('-',z,length(z)+1); end;
if o=char(ord(' ')) then begin write(' '); insert(' ',z,length(z)+1); end;
z10:
until (o=char(13)) or (o=char(27));
z12:
inputing2:=z;
end;

Function StrLong( sk: string ): longint;
var
   c: integer;
   i: longint;
begin
     val( sk, i, c );
     StrLong := i;
end;

procedure kurs(tu,tu2:integer);
var  FillIng: FillSettingsType;
const co=0;
begin
tu:=tu*30;
tu2:=tu2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, co);
Bar (tu,tu2,tu+30,tu2+30);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, red);
FillEllipse(tu+15,tu2+15,15,15);
setcolor(red);
circle(tu+15,tu2+15,15);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, co);
FillEllipse(tu+7,tu2+10,1,1);
fillellipse(tu+20,tu2+10,1,1);
GetFillSettings(FillIng);
with FillIng do
setFillStyle(Pattern, white);
FillEllipse(tu+8,tu2+8,1,1);
fillellipse(tu+21,tu2+8,1,1);
setcolor(co);
Arc(tu+15,tu2+15,200,340,10);

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

procedure zimak(x,y:integer);
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

procedure aizkr(x,y:integer);
var  FillIng: FillSettingsType;
begin
korxy[x,y]:=0;
x:=x*30;
y:=y*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, 16);
Bar (X,Y,X+30,Y+30);
x:=x div 30;
y:=y div 30;
end;

Procedure mcolor(kr1,kr2,kr3,kr4:integer);
var Palette: PaletteType;
begin
 with Palette do
 begin
   Size := 4;
   Colors[0] := kr1;
   Colors[1] := kr2;
   Colors[2] := kr3;
   Colors[3] := kr4;
   SetAllPalette(Palette);
 end;
end;

procedure akmens(x,y:integer);
var  FillIng: FillSettingsType;
begin
zimak(x,y);
{x:=x*30;
y:=y*30;
GetFillSettings(FillIng);

with FillIng do
SetFillStyle(Pattern, 16);
Bar (x,y,x+30,y+30);

with FillIng do
SetFillStyle(Pattern, 7);
fillellipse(x+15,y+15,14,14);

with FillIng do
SetFillStyle(Pattern, yellow);
setcolor(yellow);
bar(x+2,y+13,x+28,y+17);
x:=x div 30;
y:=y div 30;}
end;

procedure fons(tu,tu2:integer);
var  FillIng: FillSettingsType;
begin
tu:=tu*30;
tu2:=tu2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,0);
Bar (tu,tu2,tu+30,tu2+30);
tu:=tu div 30;
tu2:=tu2 div 30;
end;

procedure zale(tu,tu2:integer);
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
SetFillStyle(Pattern,green);
Bar (tu+1,tu2+1,tu+29,tu2+29);
setcolor(lightgreen);
line(tu+10,tu2+20,tu+20,tu2+20);
line(tu+10,tu2+10,tu+20,tu2+10);
line(tu+10,tu2+20,tu+20,tu2+10);

tu:=tu div 30;
tu2:=tu2 div 30;
end;

procedure udens(xx,yy:integer);
var  FillIng: FillSettingsType;
begin
xx:=xx*30;
yy:=yy*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, black);
Bar (xx,yy,xx+30,yy+30);
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,1);
Bar (xx+1,yy+1,xx+29,yy+29);

setcolor(8);
line(xx+1,yy+1,xx+29,yy+1);
line(xx+1,yy+2,xx+29,yy+2);
line(xx+1,yy+3,xx+29,yy+3);

line(xx+1,yy+1,xx+1,yy+29);
line(xx+2,yy+1,xx+2,yy+29);
line(xx+3,yy+1,xx+3,yy+29);

setcolor(31);
line(xx+28,yy+3,xx+28,yy+29);
line(xx+29,yy+2,xx+29,yy+29);

line(xx+3,yy+28,xx+29,yy+28);
line(xx+2,yy+29,xx+28,yy+29);

xx:=xx div 30;
yy:=yy div 30;
end;

procedure kvadr(tu,tu2:integer; mala,malb,malc,malD:boolean);
var  FillIng: FillSettingsType;
begin
tu:=tu*30;
tu2:=tu2*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern, black);
Bar (tu,tu2,tu+30,tu2+30);

with FillIng do
SetFillStyle(Pattern, 7);
Bar (tu+1,tu2+1,tu+29,tu2+29);

if malA= true then begin
setcolor(31);
line(tu+2,tu2+2,tu+29,tu2+2);
line(tu+2,tu2+3,tu+29,tu2+3);
end;

if malC= true then begin
setcolor(31);
line(tu+2,tu2+2,tu+2,tu2+29);
line(tu+3,tu2+2,tu+3,tu2+29);
end;


if malB= true then begin
setcolor(8);
line(tu+1,tu2+29,tu+29,tu2+29);
line(tu+2,tu2+28,tu+29,tu2+28);
line(tu+3,tu2+27,tu+29,tu2+27);
end;

if malD= true then begin
setcolor(8);
line(tu+29,tu2+1,tu+29,tu2+29);
line(tu+28,tu2+2,tu+28,tu2+29);
line(tu+27,tu2+3,tu+27,tu2+29);
end;
tu:=tu div 30;
tu2:=tu2 div 30;
end;

procedure zimkva(zx,zy:integer);
begin
kvadr(zx,zy,true,true,true,true);

end;

Procedure zimfi(korx,kory:integer);
var  FillIng: FillSettingsType;
begin
korx:=korx*30;
kory:=kory*30;
GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,black);
Bar (korx,kory,korx+30,kory+30);

with FillIng do
SetFillStyle(Pattern,6);
Bar (korx+1,kory+1,korx+29,kory+29);

setcolor(1);
line(korx+9,kory+5,korx+22,kory+5);
line(korx+9,kory+6,korx+22,kory+6);
line(korx+9,kory+7,korx+22,kory+7);

line(korx+9,kory+5,korx+9,kory+25);
line(korx+10,kory+5,korx+10,kory+25);
line(korx+11,kory+5,korx+11,kory+25);

line(korx+9,kory+14,korx+19,kory+14);
line(korx+9,kory+15,korx+19,kory+15);
line(korx+9,kory+16,korx+19,kory+16);

setcolor(31);
line(korx+1,kory+1,korx+29,kory+1);
line(korx+1,kory+2,korx+29,kory+2);
{line(korx+1,kory+3,korx+29,kory+3);}

line(korx+1,kory+1,korx+1,kory+29);
line(korx+2,kory+1,korx+2,kory+29);
{line(korx+3,kory+1,korx+3,kory+29);}

setcolor(8);
line(korx+27,kory+3,korx+27,kory+27);
line(korx+28,kory+2,korx+28,kory+28);
line(korx+29,kory+1,korx+29,kory+29);

line(korx+3,kory+27,korx+29,kory+27);
line(korx+2,kory+28,korx+29,kory+28);
line(korx+1,kory+29,korx+28,kory+29);

korx:=korx div 30;
kory:=kory div 30;
end;

procedure zimc1(zx,zy:integer);
var  FillIng: FillSettingsType;
begin
zx:=zx*30;
zy:=zy*30;

GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,black);
Bar (zx,zy,zx+30,zy+30);

with FillIng do
SetFillStyle(Pattern,7);
Bar (zx+1,zy+1,zx+29,zy+29);

setcolor(31);
line(zx+1,zy+1,zx+29,zy+1);
line(zx+1,zy+2,zx+29,zy+2);
{line(zx+1,zy+3,zx+29,zy+3);}

line(zx+1,zy+1,zx+1,zy+29);
line(zx+2,zy+1,zx+2,zy+29);
{line(zx+3,zy+1,zx+3,zy+29);}

setcolor(8);
line(zx+27,zy+3,zx+27,zy+27);
line(zx+28,zy+2,zx+28,zy+28);
line(zx+29,zy+1,zx+29,zy+29);

line(zx+3,zy+27,zx+29,zy+27);
line(zx+2,zy+28,zx+29,zy+28);
line(zx+1,zy+29,zx+28,zy+29);

{----------------------------------------------------------------}

setcolor(8);
line(zx+1,zy+4+0,zx+1,zy+25-0);
line(zx+2,zy+4+0,zx+2,zy+25-0);
line(zx+3,zy+4+1,zx+3,zy+25-1);
line(zx+4,zy+4+1,zx+4,zy+25-1);
line(zx+5,zy+4+2,zx+5,zy+25-2);
line(zx+6,zy+4+2,zx+6,zy+25-2);
line(zx+7,zy+4+3,zx+7,zy+25-3);
line(zx+8,zy+4+3,zx+8,zy+25-3);
line(zx+9,zy+4+4,zx+9,zy+25-4);
line(zx+10,zy+4+4,zx+10,zy+25-4);

setcolor(red);
line(zx+11,zy+4+0,zx+11,zy+25-0);
line(zx+12,zy+4+0,zx+12,zy+25-0);
line(zx+13,zy+4+1,zx+13,zy+25-1);
line(zx+14,zy+4+1,zx+14,zy+25-1);
line(zx+15,zy+4+2,zx+15,zy+25-2);
line(zx+16,zy+4+2,zx+16,zy+25-2);
line(zx+17,zy+4+3,zx+17,zy+25-3);
line(zx+18,zy+4+3,zx+18,zy+25-3);
line(zx+19,zy+4+4,zx+19,zy+25-4);

setcolor(9);
line(zx+20,zy+4+0,zx+20,zy+25-0);
line(zx+21,zy+4+0,zx+21,zy+25-0);
line(zx+22,zy+4+1,zx+22,zy+25-1);
line(zx+23,zy+4+1,zx+23,zy+25-1);
line(zx+24,zy+4+2,zx+24,zy+25-2);
line(zx+25,zy+4+2,zx+25,zy+25-2);
line(zx+26,zy+4+3,zx+26,zy+25-3);
line(zx+27,zy+4+3,zx+27,zy+25-3);

zx:=zx div 30;
zy:=zy div 30;

end;

procedure zimc2(zx,zy:integer);
var  FillIng: FillSettingsType;
begin
zx:=zx*30;
zy:=zy*30;

GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,black);
Bar (zx,zy,zx+30,zy+30);

with FillIng do
SetFillStyle(Pattern,7);
Bar (zx+1,zy+1,zx+29,zy+29);

setcolor(31);
line(zx+1,zy+1,zx+29,zy+1);
line(zx+1,zy+2,zx+29,zy+2);
{line(zx+1,zy+3,zx+29,zy+3);}

line(zx+1,zy+1,zx+1,zy+29);
line(zx+2,zy+1,zx+2,zy+29);
{line(zx+3,zy+1,zx+3,zy+29);}

setcolor(8);
line(zx+27,zy+3,zx+27,zy+27);
line(zx+28,zy+2,zx+28,zy+28);
line(zx+29,zy+1,zx+29,zy+29);

line(zx+3,zy+27,zx+29,zy+27);
line(zx+2,zy+28,zx+29,zy+28);
line(zx+1,zy+29,zx+28,zy+29);

{----------------------------------------------------------------}
setcolor(8);
line(zx+29,zy+4+0,zx+29,zy+25-0);
line(zx+28,zy+4+0,zx+28,zy+25-0);
line(zx+27,zy+4+1,zx+27,zy+25-1);
line(zx+26,zy+4+1,zx+26,zy+25-1);
line(zx+25,zy+4+2,zx+25,zy+25-2);
line(zx+24,zy+4+2,zx+24,zy+25-2);
line(zx+23,zy+4+3,zx+23,zy+25-3);
line(zx+22,zy+4+3,zx+22,zy+25-3);
line(zx+21,zy+4+4,zx+21,zy+25-4);
line(zx+20,zy+4+4,zx+20,zy+25-4);

setcolor(red);
line(zx+19,zy+4+0,zx+19,zy+25-0);
line(zx+18,zy+4+0,zx+18,zy+25-0);
line(zx+17,zy+4+1,zx+17,zy+25-1);
line(zx+16,zy+4+1,zx+16,zy+25-1);
line(zx+15,zy+4+2,zx+15,zy+25-2);
line(zx+14,zy+4+2,zx+14,zy+25-2);
line(zx+13,zy+4+3,zx+13,zy+25-3);
line(zx+12,zy+4+3,zx+12,zy+25-3);
line(zx+11,zy+4+4,zx+11,zy+25-4);

setcolor(9);
line(zx+10,zy+4+0,zx+10,zy+25-0);
line(zx+9,zy+4+0,zx+9,zy+25-0);
line(zx+8,zy+4+1,zx+8,zy+25-1);
line(zx+7,zy+4+1,zx+7,zy+25-1);
line(zx+6,zy+4+2,zx+6,zy+25-2);
line(zx+5,zy+4+2,zx+5,zy+25-2);
line(zx+4,zy+4+3,zx+4,zy+25-3);
line(zx+3,zy+4+3,zx+3,zy+25-3);

zx:=zx div 30;
zy:=zy div 30;

end;

procedure zimc3(zx,zy:integer);
var  FillIng: FillSettingsType;
begin
zx:=zx*30;
zy:=zy*30;

GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,black);
Bar (zx,zy,zx+30,zy+30);

with FillIng do
SetFillStyle(Pattern,7);
Bar (zx+1,zy+1,zx+29,zy+29);

setcolor(31);
line(zx+1,zy+1,zx+29,zy+1);
line(zx+1,zy+2,zx+29,zy+2);
{line(zx+1,zy+3,zx+29,zy+3);}

line(zx+1,zy+1,zx+1,zy+29);
line(zx+2,zy+1,zx+2,zy+29);
{line(zx+3,zy+1,zx+3,zy+29);}

setcolor(8);
line(zx+27,zy+3,zx+27,zy+27);
line(zx+28,zy+2,zx+28,zy+28);
line(zx+29,zy+1,zx+29,zy+29);

line(zx+3,zy+27,zx+29,zy+27);
line(zx+2,zy+28,zx+29,zy+28);
line(zx+1,zy+29,zx+28,zy+29);

{----------------------------------------------------------------}
setcolor(8);
line(zx+4+0,zy+1,zx+25-0,zy+1);
line(zx+4+0,zy+2,zx+25-0,zy+2);
line(zx+4+1,zy+3,zx+25-1,zy+3);
line(zx+4+1,zy+4,zx+25-1,zy+4);
line(zx+4+2,zy+5,zx+25-2,zy+5);
line(zx+4+2,zy+6,zx+25-2,zy+6);
line(zx+4+3,zy+7,zx+25-3,zy+7);
line(zx+4+3,zy+8,zx+25-3,zy+8);
line(zx+4+4,zy+9,zx+25-4,zy+9);
{line(zx+4+4,zy+10,zx+25-4,zy+10);}

setcolor(red);
line(zx+4+0,zy+10,zx+25-0,zy+10);
line(zx+4+0,zy+11,zx+25-0,zy+11);
line(zx+4+1,zy+12,zx+25-1,zy+12);
line(zx+4+1,zy+13,zx+25-1,zy+13);
line(zx+4+2,zy+14,zx+25-2,zy+14);
line(zx+4+2,zy+15,zx+25-2,zy+15);
line(zx+4+3,zy+16,zx+25-3,zy+16);
line(zx+4+3,zy+17,zx+25-3,zy+17);
line(zx+4+4,zy+18,zx+25-4,zy+18);

setcolor(9);
line(zx+4+0,zy+19,zx+25-0,zy+19);
line(zx+4+0,zy+20,zx+25-0,zy+20);
line(zx+4+1,zy+21,zx+25-1,zy+21);
line(zx+4+1,zy+22,zx+25-1,zy+22);
line(zx+4+2,zy+23,zx+25-2,zy+23);
line(zx+4+2,zy+24,zx+25-2,zy+24);
line(zx+4+3,zy+25,zx+25-3,zy+25);
line(zx+4+3,zy+26,zx+25-3,zy+26);

zx:=zx div 30;
zy:=zy div 30;

end;

procedure zimc4(zx,zy:integer);
var  FillIng: FillSettingsType;
begin
zx:=zx*30;
zy:=zy*30;

GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,black);
Bar (zx,zy,zx+30,zy+30);

with FillIng do
SetFillStyle(Pattern,7);
Bar (zx+1,zy+1,zx+29,zy+29);

setcolor(31);
line(zx+1,zy+1,zx+29,zy+1);
line(zx+1,zy+2,zx+29,zy+2);
{line(zx+1,zy+3,zx+29,zy+3);}

line(zx+1,zy+1,zx+1,zy+29);
line(zx+2,zy+1,zx+2,zy+29);
{line(zx+3,zy+1,zx+3,zy+29);}

setcolor(8);
line(zx+27,zy+3,zx+27,zy+27);
line(zx+28,zy+2,zx+28,zy+28);
line(zx+29,zy+1,zx+29,zy+29);

line(zx+3,zy+27,zx+29,zy+27);
line(zx+2,zy+28,zx+29,zy+28);
line(zx+1,zy+29,zx+28,zy+29);

{----------------------------------------------------------------}
setcolor(8);
line(zx+4+0,zy+29,zx+25-0,zy+29);
line(zx+4+0,zy+28,zx+25-0,zy+28);
line(zx+4+1,zy+27,zx+25-1,zy+27);
line(zx+4+1,zy+26,zx+25-1,zy+26);
line(zx+4+2,zy+25,zx+25-2,zy+25);
line(zx+4+2,zy+24,zx+25-2,zy+24);
line(zx+4+3,zy+23,zx+25-3,zy+23);
line(zx+4+3,zy+22,zx+25-3,zy+22);
line(zx+4+4,zy+21,zx+25-4,zy+21);
line(zx+4+4,zy+20,zx+25-4,zy+20);

setcolor(red);
line(zx+4+0,zy+19,zx+25-0,zy+19);
line(zx+4+0,zy+18,zx+25-0,zy+18);
line(zx+4+1,zy+17,zx+25-1,zy+17);
line(zx+4+1,zy+16,zx+25-1,zy+16);
line(zx+4+2,zy+15,zx+25-2,zy+15);
line(zx+4+2,zy+14,zx+25-2,zy+14);
line(zx+4+3,zy+13,zx+25-3,zy+13);
line(zx+4+3,zy+12,zx+25-3,zy+12);
line(zx+4+4,zy+11,zx+25-4,zy+11);

setcolor(9);

line(zx+4+0,zy+10,zx+25-0,zy+10);
line(zx+4+0,zy+9,zx+25-0,zy+9);
line(zx+4+1,zy+8,zx+25-1,zy+8);
line(zx+4+1,zy+7,zx+25-1,zy+7);
line(zx+4+2,zy+6,zx+25-2,zy+6);
line(zx+4+2,zy+5,zx+25-2,zy+5);
line(zx+4+3,zy+4,zx+25-3,zy+4);
line(zx+4+3,zy+3,zx+25-3,zy+3);

zx:=zx div 30;
zy:=zy div 30;

end;

procedure zimc5(zx,zy:integer);
var  FillIng: FillSettingsType;
begin
zx:=zx*30;
zy:=zy*30;

GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,black);
Bar (zx,zy,zx+30,zy+30);

with FillIng do
SetFillStyle(Pattern,7);
Bar (zx+1,zy+1,zx+29,zy+29);

setcolor(31);
line(zx+1,zy+1,zx+29,zy+1);
line(zx+1,zy+2,zx+29,zy+2);
{line(zx+1,zy+3,zx+29,zy+3);}

line(zx+1,zy+1,zx+1,zy+29);
line(zx+2,zy+1,zx+2,zy+29);
{line(zx+3,zy+1,zx+3,zy+29);}

setcolor(8);
line(zx+27,zy+3,zx+27,zy+27);
line(zx+28,zy+2,zx+28,zy+28);
line(zx+29,zy+1,zx+29,zy+29);

line(zx+3,zy+27,zx+29,zy+27);
line(zx+2,zy+28,zx+29,zy+28);
line(zx+1,zy+29,zx+28,zy+29);

{----------------------------------------------------------------}
setcolor(8);
line(zx+1,zy+4+0,zx+1,zy+25-0);
line(zx+2,zy+4+0,zx+2,zy+25-0);
line(zx+3,zy+4+1,zx+3,zy+25-1);
line(zx+4,zy+4+1,zx+4,zy+25-1);
line(zx+5,zy+4+2,zx+5,zy+25-2);
line(zx+6,zy+4+2,zx+6,zy+25-2);
line(zx+7,zy+4+3,zx+7,zy+25-3);
line(zx+8,zy+4+3,zx+8,zy+25-3);
line(zx+9,zy+4+4,zx+9,zy+25-4);
line(zx+10,zy+4+4,zx+10,zy+25-4);

setcolor(8);
line(zx+29,zy+4+0,zx+29,zy+25-0);
line(zx+28,zy+4+0,zx+28,zy+25-0);
line(zx+27,zy+4+1,zx+27,zy+25-1);
line(zx+26,zy+4+1,zx+26,zy+25-1);
line(zx+25,zy+4+2,zx+25,zy+25-2);
line(zx+24,zy+4+2,zx+24,zy+25-2);
line(zx+23,zy+4+3,zx+23,zy+25-3);
line(zx+22,zy+4+3,zx+22,zy+25-3);
line(zx+21,zy+4+4,zx+21,zy+25-4);
line(zx+20,zy+4+4,zx+20,zy+25-4);

setcolor(red);
line(zx+19,zy+8,zx+19,zy+21);
line(zx+18,zy+8,zx+18,zy+21);
line(zx+17,zy+8,zx+17,zy+21);
line(zx+16,zy+8,zx+16,zy+21);
line(zx+15,zy+8,zx+15,zy+21);
line(zx+14,zy+8,zx+14,zy+21);
line(zx+13,zy+8,zx+13,zy+21);
line(zx+12,zy+8,zx+12,zy+21);
line(zx+11,zy+8,zx+11,zy+21);

zx:=zx div 30;
zy:=zy div 30;

end;

procedure zimc6(zx,zy:integer);
var  FillIng: FillSettingsType;
begin
zx:=zx*30;
zy:=zy*30;

GetFillSettings(FillIng);
with FillIng do
SetFillStyle(Pattern,black);
Bar (zx,zy,zx+30,zy+30);

with FillIng do
SetFillStyle(Pattern,7);
Bar (zx+1,zy+1,zx+29,zy+29);

setcolor(31);
line(zx+1,zy+1,zx+29,zy+1);
line(zx+1,zy+2,zx+29,zy+2);
{line(zx+1,zy+3,zx+29,zy+3);}

line(zx+1,zy+1,zx+1,zy+29);
line(zx+2,zy+1,zx+2,zy+29);
{line(zx+3,zy+1,zx+3,zy+29);}

setcolor(8);
line(zx+27,zy+3,zx+27,zy+27);
line(zx+28,zy+2,zx+28,zy+28);
line(zx+29,zy+1,zx+29,zy+29);

line(zx+3,zy+27,zx+29,zy+27);
line(zx+2,zy+28,zx+29,zy+28);
line(zx+1,zy+29,zx+28,zy+29);

{----------------------------------------------------------------}
setcolor(8);
line(zx+4+0,zy+1,zx+25-0,zy+1);
line(zx+4+0,zy+2,zx+25-0,zy+2);
line(zx+4+1,zy+3,zx+25-1,zy+3);
line(zx+4+1,zy+4,zx+25-1,zy+4);
line(zx+4+2,zy+5,zx+25-2,zy+5);
line(zx+4+2,zy+6,zx+25-2,zy+6);
line(zx+4+3,zy+7,zx+25-3,zy+7);
line(zx+4+3,zy+8,zx+25-3,zy+8);
line(zx+4+4,zy+9,zx+25-4,zy+9);
line(zx+4+4,zy+10,zx+25-4,zy+10);

setcolor(8);
line(zx+4+0,zy+29,zx+25-0,zy+29);
line(zx+4+0,zy+28,zx+25-0,zy+28);
line(zx+4+1,zy+27,zx+25-1,zy+27);
line(zx+4+1,zy+26,zx+25-1,zy+26);
line(zx+4+2,zy+25,zx+25-2,zy+25);
line(zx+4+2,zy+24,zx+25-2,zy+24);
line(zx+4+3,zy+23,zx+25-3,zy+23);
line(zx+4+3,zy+22,zx+25-3,zy+22);
line(zx+4+4,zy+21,zx+25-4,zy+21);
line(zx+4+4,zy+20,zx+25-4,zy+20);

setcolor(red);
line(zx+8,zy+11,zx+21,zy+11);
line(zx+8,zy+12,zx+21,zy+12);
line(zx+8,zy+13,zx+21,zy+13);
line(zx+8,zy+14,zx+21,zy+14);
line(zx+8,zy+15,zx+21,zy+15);
line(zx+8,zy+16,zx+21,zy+16);
line(zx+8,zy+17,zx+21,zy+17);
line(zx+8,zy+18,zx+21,zy+18);
line(zx+8,zy+19,zx+21,zy+19);

zx:=zx div 30;
zy:=zy div 30;

end;
Procedure fon;
var lej,augs:integer;
begin
for lej := 1 to 19 do
for augs := 1 to 14 do
begin
 fons(lej,augs);
end;
end;

procedure labir;
var x,y:integer;
label we,we2;
begin

if grutiba=false then
 begin
 kurs(tu,tu2);
 for x:= 1 to 19 do
 for y:= 1 to 14 do
begin
if x<1 then goto we;
if x>19 then goto we;
if y<1 then goto we;
if y>14 then goto we;

{A} if korxy[x,y]=1 then zimkva(x,y);
{C} if korxy[x,y]=3 then zimfi(x,y);
{D} if korxy[x,y]=4 then zimc1(x,y);
{E} if korxy[x,y]=5 then zimc2(x,y);
{F} if korxy[x,y]=6 then zimc3(x,y);
{G} if korxy[x,y]=7 then zimc4(x,y);
{H} if korxy[x,y]=8 then zale(x,y);
{I} if korxy[x,y]=9 then begin end; {neredzama siena}
{J} if korxy[x,y]=10 then zimc5(x,y);
{K} if korxy[x,y]=11 then zimc6(x,y);
{L} {if korxy[x,y]=12 then zimc7(x,y);}
{M} if korxy[x,y]=13 then zale(x,y);
{N} if korxy[x,y]=14 then udens(x,y);
{O} {if korxy[x,y]=15 then akmens(x,y);}
{P} if korxy[x,y]=16 then zimfi(x,y);
end;
we:
kurs(tu,tu2);
end;

if grutiba=true then
 begin

 kurs(tu,tu2);
 for x:= tu-2 to tu+2 do
 for y:= tu2-2 to tu2+2 do
     begin
     if x<1 then goto we2;
     if x>19 then goto we2;
     if y<1 then goto we2;
     if y>14 then goto we2;

     {A} if korxy[x,y]=1 then zimkva(x,y);
     {C} if korxy[x,y]=3 then zimfi(x,y);
     {D} if korxy[x,y]=4 then zimc1(x,y);
     {E} if korxy[x,y]=5 then zimc2(x,y);
     {F} if korxy[x,y]=6 then zimc3(x,y);
     {G} if korxy[x,y]=7 then zimc4(x,y);
     {H} if korxy[x,y]=8 then zale(x,y);
     {I} if korxy[x,y]=9 then begin end; {neredzama siena}
     {J} if korxy[x,y]=10 then zimc5(x,y);
     {K} if korxy[x,y]=11 then zimc6(x,y);
     {L} {if korxy[x,y]=12 then zimc7(x,y);}
     {M} if korxy[x,y]=13 then zale(x,y);
     {N} if korxy[x,y]=14 then udens(x,y);
     {O} {if korxy[x,y]=15 then akmens(x,y);}
     {P} if korxy[x,y]=16 then zimfi(x,y);
we2:
end;
kurs(tu,tu2);
end;

end;




end.