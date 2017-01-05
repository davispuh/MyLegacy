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
     izmerx = 20;
     izmery = 15;
var
    naklim,naklim2 : boolean;
    g,tu,tu2,levn2 : integer;
             korxy : array[0..izmerx,0..izmery] of integer;
               reg : Registers;
              time : Longint Absolute $0040:$006C;
              regs : Registers;
   grutiba, pelpog : boolean;
               tim : longint;

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
Function inputing(num,sk:integer; lie:char):string;
Function pav(no,cik:integer):integer;
Function pav2(no,cik:integer):integer;
Function ievad:string;
Function ievadc:string;
Function pande(kur:integer; kas:string):string;
Function parvt(vad:string):string;
Function StrChar(qwert:string):char;
Function timer(num:longint):longint;
Function ptimer(nm:longint):string;

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
Procedure iks(x,y:integer);
Procedure Gzim(x,y,j:integer);
Procedure Mzim(x,y:integer);
Procedure Czim(x,y:integer);
Procedure vertib;
Procedure autors;
procedure labir;
Procedure tstart;

var ab,cd,ef,gh,ij,kl,mn,op,qr,st,uv: Byte;
implementation

Procedure tstart;
var
  h, m, s, hund : Word;
begin
GetTime(h,m,s,hund);
tim:=0;
tim:=tim+h*3600;
tim:=tim+m*60;
tim:=tim+s;
end;

Function timer(num:longint):longint;
var  h, m, s, hund : Word;
    beigsy,bega,laiks:longint;
    beigs:string;
begin
if num > 99*3600+59*60+59 then num:=99*3600+59*60+59;
GetTime(h,m,s,hund);
laiks:=0;
laiks:=laiks+h*3600;
laiks:=laiks+m*60;
laiks:=laiks+s;
bega:=laiks-tim;
beigsy:=num-bega;
if beigsy<0 then beigsy:=0;
timer:=beigsy;
end;

Function ptimer(nm:longint):string;
var skait: array[1..3] of longint;
    beg:longint;
    sk:string;
begin
beg:=timer(nm);
skait[1]:=beg div 3600;
beg:=beg-skait[1] * 3600;
skait[2]:=beg div 60;
beg:=beg-skait[2] * 60;
skait[3]:=beg;

sk:=longstr(skait[1]);
if strlong(sk) < 10 then insert('0',sk,1);
insert(':',sk,length(sk)+1);
insert(longstr(skait[2]),sk,length(sk)+1);
if length(sk)<> 5 then insert('0',sk,length(sk));
insert(':',sk,length(sk)+1);
insert(longstr(skait[3]),sk,length(sk)+1);
if length(sk)<> 8 then insert('0',sk,length(sk));
ptimer:=sk;
end;

Function StrChar(qwert:string):char;

var
    a : string;
   nu : integer;
 izna : char;

begin
izna:=char(0);
a:=qwert;
if a=char(00) then izna:=char(00);
if a=char(01) then izna:=char(01);
if a=char(02) then izna:=char(02);
if a=char(03) then izna:=char(03);
if a=char(04) then izna:=char(04);
if a=char(05) then izna:=char(05);
if a=char(06) then izna:=char(06);
if a=char(07) then izna:=char(07);
if a=char(08) then izna:=char(08);
if a=char(09) then izna:=char(09);
if a=char(10) then izna:=char(10);
if a=char(11) then izna:=char(11);
if a=char(12) then izna:=char(12);
if a=char(13) then izna:=char(13);
if a=char(14) then izna:=char(14);
if a=char(15) then izna:=char(15);
if a=char(16) then izna:=char(16);
if a=char(17) then izna:=char(17);
if a=char(18) then izna:=char(18);
if a=char(19) then izna:=char(19);
if a=char(20) then izna:=char(20);
if a=char(21) then izna:=char(21);
if a=char(22) then izna:=char(22);
if a=char(23) then izna:=char(23);
if a=char(24) then izna:=char(24);
if a=char(25) then izna:=char(25);
if a=char(26) then izna:=char(26);
if a=char(27) then izna:=char(27);
if a=char(28) then izna:=char(28);
if a=char(29) then izna:=char(29);
if a=char(30) then izna:=char(20);
if a=char(31) then izna:=char(21);
if a=char(32) then izna:=char(32);
if a=char(33) then izna:=char(33);
if a=char(34) then izna:=char(34);
if a=char(35) then izna:=char(35);
if a=char(36) then izna:=char(36);
if a=char(37) then izna:=char(37);
if a=char(38) then izna:=char(38);
if a=char(39) then izna:=char(39);
if a=char(40) then izna:=char(40);
if a=char(41) then izna:=char(41);
if a=char(42) then izna:=char(42);
if a=char(43) then izna:=char(43);
if a=char(44) then izna:=char(44);
if a=char(45) then izna:=char(45);
if a=char(46) then izna:=char(46);
if a=char(47) then izna:=char(47);
if a=char(48) then izna:=char(48);
if a=char(49) then izna:=char(49);
if a=char(50) then izna:=char(50);
if a=char(51) then izna:=char(51);
if a=char(52) then izna:=char(52);
if a=char(53) then izna:=char(53);
if a=char(54) then izna:=char(54);
if a=char(55) then izna:=char(55);
if a=char(56) then izna:=char(56);
if a=char(57) then izna:=char(57);
if a=char(58) then izna:=char(58);
if a=char(59) then izna:=char(59);
if a=char(60) then izna:=char(60);
if a=char(61) then izna:=char(61);
if a=char(62) then izna:=char(62);
if a=char(63) then izna:=char(63);
if a=char(64) then izna:=char(64);
if a=char(65) then izna:=char(65);
if a=char(66) then izna:=char(66);
if a=char(67) then izna:=char(67);
if a=char(68) then izna:=char(68);
if a=char(69) then izna:=char(69);
if a=char(70) then izna:=char(70);
if a=char(71) then izna:=char(71);
if a=char(72) then izna:=char(72);
if a=char(73) then izna:=char(73);
if a=char(74) then izna:=char(74);
if a=char(75) then izna:=char(75);
if a=char(76) then izna:=char(76);
if a=char(77) then izna:=char(77);
if a=char(78) then izna:=char(78);
if a=char(79) then izna:=char(79);
if a=char(80) then izna:=char(80);
if a=char(81) then izna:=char(81);
if a=char(82) then izna:=char(82);
if a=char(83) then izna:=char(83);
if a=char(84) then izna:=char(84);
if a=char(85) then izna:=char(85);
if a=char(86) then izna:=char(86);
if a=char(87) then izna:=char(87);
if a=char(88) then izna:=char(88);
if a=char(89) then izna:=char(89);
if a=char(90) then izna:=char(90);
if a=char(91) then izna:=char(91);
if a=char(92) then izna:=char(92);
if a=char(93) then izna:=char(93);
if a=char(94) then izna:=char(94);
if a=char(95) then izna:=char(95);
if a=char(96) then izna:=char(96);
if a=char(97) then izna:=char(97);
if a=char(98) then izna:=char(98);
if a=char(99) then izna:=char(99);
if a=char(100) then izna:=char(100);
if a=char(101) then izna:=char(101);
if a=char(102) then izna:=char(102);
if a=char(103) then izna:=char(103);
if a=char(104) then izna:=char(104);
if a=char(105) then izna:=char(105);
if a=char(106) then izna:=char(106);
if a=char(107) then izna:=char(107);
if a=char(108) then izna:=char(108);
if a=char(109) then izna:=char(109);
if a=char(110) then izna:=char(110);
if a=char(111) then izna:=char(111);
if a=char(112) then izna:=char(112);
if a=char(113) then izna:=char(113);
if a=char(114) then izna:=char(114);
if a=char(115) then izna:=char(115);
if a=char(116) then izna:=char(116);
if a=char(117) then izna:=char(117);
if a=char(118) then izna:=char(118);
if a=char(119) then izna:=char(119);
if a=char(120) then izna:=char(120);
if a=char(121) then izna:=char(121);
if a=char(122) then izna:=char(122);
if a=char(123) then izna:=char(123);
if a=char(124) then izna:=char(124);
if a=char(125) then izna:=char(125);
if a=char(126) then izna:=char(126);
if a=char(127) then izna:=char(127);
if a=char(128) then izna:=char(128);
if a=char(129) then izna:=char(129);
if a=char(130) then izna:=char(120);
if a=char(131) then izna:=char(121);
if a=char(132) then izna:=char(132);
if a=char(133) then izna:=char(133);
if a=char(134) then izna:=char(134);
if a=char(135) then izna:=char(135);
if a=char(136) then izna:=char(136);
if a=char(137) then izna:=char(137);
if a=char(138) then izna:=char(138);
if a=char(139) then izna:=char(139);
if a=char(140) then izna:=char(140);
if a=char(141) then izna:=char(141);
if a=char(142) then izna:=char(142);
if a=char(143) then izna:=char(143);
if a=char(144) then izna:=char(144);
if a=char(145) then izna:=char(145);
if a=char(146) then izna:=char(146);
if a=char(147) then izna:=char(147);
if a=char(148) then izna:=char(148);
if a=char(149) then izna:=char(149);
if a=char(150) then izna:=char(150);
if a=char(151) then izna:=char(151);
if a=char(152) then izna:=char(152);
if a=char(153) then izna:=char(153);
if a=char(154) then izna:=char(154);
if a=char(155) then izna:=char(155);
if a=char(156) then izna:=char(156);
if a=char(157) then izna:=char(157);
if a=char(158) then izna:=char(158);
if a=char(159) then izna:=char(159);
if a=char(160) then izna:=char(160);
if a=char(161) then izna:=char(161);
if a=char(162) then izna:=char(162);
if a=char(163) then izna:=char(163);
if a=char(164) then izna:=char(164);
if a=char(165) then izna:=char(165);
if a=char(166) then izna:=char(166);
if a=char(167) then izna:=char(167);
if a=char(168) then izna:=char(168);
if a=char(169) then izna:=char(169);
if a=char(170) then izna:=char(170);
if a=char(171) then izna:=char(171);
if a=char(172) then izna:=char(172);
if a=char(173) then izna:=char(173);
if a=char(174) then izna:=char(174);
if a=char(175) then izna:=char(175);
if a=char(176) then izna:=char(176);
if a=char(177) then izna:=char(177);
if a=char(178) then izna:=char(178);
if a=char(179) then izna:=char(179);
if a=char(180) then izna:=char(180);
if a=char(181) then izna:=char(181);
if a=char(182) then izna:=char(182);
if a=char(183) then izna:=char(183);
if a=char(184) then izna:=char(184);
if a=char(185) then izna:=char(185);
if a=char(186) then izna:=char(186);
if a=char(187) then izna:=char(187);
if a=char(188) then izna:=char(188);
if a=char(189) then izna:=char(189);
if a=char(190) then izna:=char(190);
if a=char(191) then izna:=char(191);
if a=char(192) then izna:=char(192);
if a=char(193) then izna:=char(193);
if a=char(194) then izna:=char(194);
if a=char(195) then izna:=char(195);
if a=char(196) then izna:=char(196);
if a=char(197) then izna:=char(197);
if a=char(198) then izna:=char(198);
if a=char(199) then izna:=char(199);
if a=char(200) then izna:=char(200);
if a=char(201) then izna:=char(201);
if a=char(202) then izna:=char(202);
if a=char(203) then izna:=char(203);
if a=char(204) then izna:=char(204);
if a=char(205) then izna:=char(205);
if a=char(206) then izna:=char(206);
if a=char(207) then izna:=char(207);
if a=char(208) then izna:=char(208);
if a=char(209) then izna:=char(209);
if a=char(210) then izna:=char(210);
if a=char(211) then izna:=char(211);
if a=char(212) then izna:=char(212);
if a=char(213) then izna:=char(213);
if a=char(214) then izna:=char(214);
if a=char(215) then izna:=char(215);
if a=char(216) then izna:=char(216);
if a=char(217) then izna:=char(217);
if a=char(218) then izna:=char(218);
if a=char(219) then izna:=char(219);
if a=char(220) then izna:=char(220);
if a=char(221) then izna:=char(221);
if a=char(222) then izna:=char(222);
if a=char(223) then izna:=char(223);
if a=char(224) then izna:=char(224);
if a=char(225) then izna:=char(225);
if a=char(226) then izna:=char(226);
if a=char(227) then izna:=char(227);
if a=char(228) then izna:=char(228);
if a=char(229) then izna:=char(229);
if a=char(230) then izna:=char(220);
if a=char(231) then izna:=char(221);
if a=char(232) then izna:=char(232);
if a=char(233) then izna:=char(233);
if a=char(234) then izna:=char(234);
if a=char(235) then izna:=char(235);
if a=char(236) then izna:=char(236);
if a=char(237) then izna:=char(237);
if a=char(238) then izna:=char(238);
if a=char(239) then izna:=char(239);
if a=char(240) then izna:=char(240);
if a=char(241) then izna:=char(241);
if a=char(242) then izna:=char(242);
if a=char(243) then izna:=char(243);
if a=char(244) then izna:=char(244);
if a=char(245) then izna:=char(245);
if a=char(246) then izna:=char(246);
if a=char(247) then izna:=char(247);
if a=char(248) then izna:=char(248);
if a=char(249) then izna:=char(249);
if a=char(250) then izna:=char(250);
if a=char(251) then izna:=char(251);
if a=char(252) then izna:=char(252);
if a=char(253) then izna:=char(253);
if a=char(254) then izna:=char(254);
if a=char(255) then izna:=char(255);

StrChar:=izna;
end;

procedure Gzim(x,y,j:integer);
begin

line(x,y-6+0,x+j,y-6+0);
line(x,y-6+1,x+j,y-6+1);
end;

procedure Czim(x,y:integer);
begin

line(x+1,y+1,x+3,y+3);
line(x+2,y+1,x+4,y+3);
line(x+3,y+1,x+4,y+3);

line(x+8-1,y+1,x+5,y+3);
line(x+9-1,y+1,x+6,y+3);
line(x+10-1,y+1,x+7,y+3);
end;

procedure vertib;
begin
ab:= 68; cd:= 97;
ef:= 118; gh:= 105;
ij:= 115; kl:= 77;
mn:= 111; op:= ij;
qr:= cd; st:= 110;
uv:= op;
{68 97 118 105 115 77 111 115 97 110 115}

end;

procedure mzim(x,y:integer);
begin
line(x,y,x,y+3);
line(x+1,y,x+1,y+3);
end;

procedure autors;
var saker,siker: string;
begin

SetTextJustify(LeftText, CenterText);
SetTextStyle(TriplexFont, horizDir, 4);
setcolor(7);
OutTextXY(310,430,'Autors:');
setcolor(2);
gzim(452,432-1,9);
gzim(581,432-1,9);
vertib;
saker:=char(ab)+char(cd)+char(ef)+char(gh)+char(ij);
siker:=char(kl)+char(mn)+char(op)+char(qr)+char(st)+char(uv);
OutTextXY(150+280,430,saker+char(32)+siker);

end;

Procedure iks(x,y:integer);
begin
x:=x*30;
y:=y*30;
setcolor(4);
line(x+3,y+3,x+27,y+27);
line(x+4,y+3,x+27,y+26);
line(x+5,y+3,x+27,y+25);
line(x+3,y+3,x+27,y+27);
line(x+3,y+4,x+26,y+27);
line(x+3,y+5,x+25,y+27);

line(x+27,y+3,x+3,y+27);
line(x+27,y+4,x+4,y+27);
line(x+27,y+5,x+5,y+27);
line(x+27,y+3,x+3,y+27);
line(x+26,y+3,x+3,y+26);
line(x+25,y+3,x+3,y+25);

end;

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

function inputing(num,sk:integer; lie:char):string;
Label z10;
var o:char;
    z:string;
 n,n2,bl,bl2:integer;
cip,bur,space,simb1,simb2,simb3:boolean;
begin
cip:=false;
bur:=false;
bl:=0;
bl2:=0;
z:='';
n:=wherex;
n2:=wherey;
if lie='L' then begin bl:=0; bl2:=0; end;
if lie='M' then begin bl:=32; bl2:=32; end;
if lie='N' then begin bl:=32; bl2:=0; end;
if num=1 then cip:=true;
if num=2 then bur:=true;
if num=3 then begin cip:=true; bur:=true; end;
if num=4 then begin cip:=true; bur:=true; space:=true; end;
if num=5 then begin cip:=true; simb1:=true; end;

if num=10 then begin cip:=true; bur:=true; space:=true;
simb1:=true; simb2:=true;
end;

repeat
o:=inkey;
if o=char(27) then begin z:=''; goto z10; end;
if o=char(8) then begin if wherex=n then goto z10; write(char(8),' ',char(8)); delete(z,length(z),1); end;
if wherex>n+sk-1 then goto z10;

if cip= true then begin
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
end;

if bur=true then begin
if o=char(ord('a')) then begin write('a'); insert(char(65+bl),z,length(z)+1); end;
if o=char(ord('b')) then begin write('b'); insert(char(66+bl),z,length(z)+1); end;
if o=char(ord('c')) then begin write('c'); insert(char(67+bl),z,length(z)+1); end;
if o=char(ord('d')) then begin write('d'); insert(char(68+bl),z,length(z)+1); end;
if o=char(ord('e')) then begin write('e'); insert(char(69+bl),z,length(z)+1); end;
if o=char(ord('f')) then begin write('f'); insert(char(70+bl),z,length(z)+1); end;
if o=char(ord('g')) then begin write('g'); insert(char(71+bl),z,length(z)+1); end;
if o=char(ord('h')) then begin write('h'); insert(char(72+bl),z,length(z)+1); end;
if o=char(ord('i')) then begin write('i'); insert(char(73+bl),z,length(z)+1); end;
if o=char(ord('j')) then begin write('j'); insert(char(74+bl),z,length(z)+1); end;
if o=char(ord('k')) then begin write('k'); insert(char(75+bl),z,length(z)+1); end;
if o=char(ord('l')) then begin write('l'); insert(char(76+bl),z,length(z)+1); end;
if o=char(ord('m')) then begin write('m'); insert(char(77+bl),z,length(z)+1); end;
if o=char(ord('n')) then begin write('n'); insert(char(78+bl),z,length(z)+1); end;
if o=char(ord('o')) then begin write('o'); insert(char(79+bl),z,length(z)+1); end;
if o=char(ord('p')) then begin write('p'); insert(char(80+bl),z,length(z)+1); end;
if o=char(ord('q')) then begin write('q'); insert(char(81+bl),z,length(z)+1); end;
if o=char(ord('r')) then begin write('r'); insert(char(82+bl),z,length(z)+1); end;
if o=char(ord('s')) then begin write('s'); insert(char(83+bl),z,length(z)+1); end;
if o=char(ord('t')) then begin write('t'); insert(char(84+bl),z,length(z)+1); end;
if o=char(ord('u')) then begin write('u'); insert(char(85+bl),z,length(z)+1); end;
if o=char(ord('v')) then begin write('v'); insert(char(86+bl),z,length(z)+1); end;
if o=char(ord('w')) then begin write('w'); insert(char(87+bl),z,length(z)+1); end;
if o=char(ord('x')) then begin write('x'); insert(char(88+bl),z,length(z)+1); end;
if o=char(ord('y')) then begin write('y'); insert(char(89+bl),z,length(z)+1); end;
if o=char(ord('z')) then begin write('z'); insert(char(90+bl),z,length(z)+1); end;

if o=char(ord('A')) then begin write('A'); insert(char(65+bl2),z,length(z)+1); end;
if o=char(ord('B')) then begin write('B'); insert(char(66+bl2),z,length(z)+1); end;
if o=char(ord('C')) then begin write('C'); insert(char(67+bl2),z,length(z)+1); end;
if o=char(ord('D')) then begin write('D'); insert(char(68+bl2),z,length(z)+1); end;
if o=char(ord('E')) then begin write('E'); insert(char(69+bl2),z,length(z)+1); end;
if o=char(ord('F')) then begin write('F'); insert(char(70+bl2),z,length(z)+1); end;
if o=char(ord('G')) then begin write('G'); insert(char(71+bl2),z,length(z)+1); end;
if o=char(ord('H')) then begin write('H'); insert(char(72+bl2),z,length(z)+1); end;
if o=char(ord('I')) then begin write('I'); insert(char(73+bl2),z,length(z)+1); end;
if o=char(ord('J')) then begin write('J'); insert(char(74+bl2),z,length(z)+1); end;
if o=char(ord('K')) then begin write('K'); insert(char(75+bl2),z,length(z)+1); end;
if o=char(ord('L')) then begin write('L'); insert(char(76+bl2),z,length(z)+1); end;
if o=char(ord('M')) then begin write('M'); insert(char(77+bl2),z,length(z)+1); end;
if o=char(ord('N')) then begin write('N'); insert(char(78+bl2),z,length(z)+1); end;
if o=char(ord('O')) then begin write('O'); insert(char(79+bl2),z,length(z)+1); end;
if o=char(ord('P')) then begin write('P'); insert(char(80+bl2),z,length(z)+1); end;
if o=char(ord('Q')) then begin write('Q'); insert(char(81+bl2),z,length(z)+1); end;
if o=char(ord('R')) then begin write('R'); insert(char(82+bl2),z,length(z)+1); end;
if o=char(ord('S')) then begin write('S'); insert(char(83+bl2),z,length(z)+1); end;
if o=char(ord('T')) then begin write('T'); insert(char(84+bl2),z,length(z)+1); end;
if o=char(ord('U')) then begin write('U'); insert(char(85+bl2),z,length(z)+1); end;
if o=char(ord('V')) then begin write('V'); insert(char(86+bl2),z,length(z)+1); end;
if o=char(ord('W')) then begin write('W'); insert(char(87+bl2),z,length(z)+1); end;
if o=char(ord('X')) then begin write('X'); insert(char(88+bl2),z,length(z)+1); end;
if o=char(ord('Y')) then begin write('Y'); insert(char(89+bl2),z,length(z)+1); end;
if o=char(ord('Z')) then begin write('Z'); insert(char(90+bl2),z,length(z)+1); end;
end;
if space=true then begin
if o=char(ord(' ')) then begin write(' '); insert(' ',z,length(z)+1); end;
end;
if simb1=true then begin
if o=char(ord('-')) then begin write('-'); insert('-',z,length(z)+1); end;
if o=char(ord('+')) then begin write('+'); insert('+',z,length(z)+1); end;
if o=char(ord('/')) then begin write('/'); insert('/',z,length(z)+1); end;
if o=char(ord('*')) then begin write('*'); insert('*',z,length(z)+1); end;
if o=char(ord('\')) then begin write('\'); insert('\',z,length(z)+1); end;
end;

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
for lej := 0 to izmerx do
for augs := 0 to izmery do
begin
 fons(lej,augs);
end;
end;

procedure labir;
var x,y:integer;
label we,we2;
begin
x:=1;
y:=1;
if grutiba=false then
 begin
 kurs(tu,tu2);
 for x:= 0 to izmerx-1 do
 for y:= 0 to izmery-1 do
begin
if x < 0 then goto we;
if x > izmerx then goto we;
if y < 0 then goto we;
if y > izmery then goto we;

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
we:
end;
kurs(tu,tu2);
end;

x:=1;
y:=1;

if grutiba=true then
 begin
 kurs(tu,tu2);
 for x:= tu-2 to tu+2 do
 for y:= tu2-2 to tu2+2 do
     begin
     if x < 0 then goto we2;
     if x > izmerx then goto we2;
     if y < 0 then goto we2;
     if y > izmery then goto we2;

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