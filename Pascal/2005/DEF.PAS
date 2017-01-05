uses crtclone,dos;
const i='deef';
is='de‰f';
fail='def.txt';
fl='def.sys';
var z,x:string;
o:integer;
axe:char;
zux:boolean;
tu:integer;

Function conc(uh:string):integer;
var ise:integer;
begin
if uh='00' then ise:=0;
if uh='01' then ise:=1;
if uh='02' then ise:=2;
if uh='03' then ise:=3;
if uh='04' then ise:=4;
if uh='05' then ise:=5;
if uh='06' then ise:=6;
if uh='07' then ise:=7;
if uh='08' then ise:=8;
if uh='09' then ise:=9;
if uh='10' then ise:=10;
if uh='11' then ise:=11;
if uh='12' then ise:=12;
if uh='13' then ise:=13;
if uh='14' then ise:=14;
if uh='15' then ise:=15;
if uh='16' then ise:=16;
if uh='17' then ise:=17;
if uh='18' then ise:=18;
if uh='19' then ise:=19;
if uh='20' then ise:=20;
if uh='21' then ise:=21;
if uh='22' then ise:=22;
if uh='23' then ise:=23;
if uh='24' then ise:=24;
if uh='25' then ise:=25;
if uh='26' then ise:=26;
if uh='27' then ise:=27;
if uh='28' then ise:=28;
if uh='29' then ise:=29;
if uh='30' then ise:=30;
if uh='31' then ise:=31;
if uh='32' then ise:=32;
if uh='33' then ise:=33;
if uh='34' then ise:=34;
if uh='35' then ise:=35;
if uh='36' then ise:=36;
if uh='37' then ise:=37;
if uh='38' then ise:=38;
if uh='39' then ise:=39;
if uh='40' then ise:=40;
if uh='41' then ise:=41;
if uh='42' then ise:=42;
if uh='43' then ise:=43;
if uh='44' then ise:=44;
if uh='45' then ise:=45;
if uh='46' then ise:=46;
if uh='47' then ise:=47;
if uh='48' then ise:=48;
if uh='49' then ise:=49;
if uh='50' then ise:=50;
if uh='51' then ise:=51;
if uh='52' then ise:=52;
if uh='53' then ise:=53;
if uh='54' then ise:=54;
if uh='55' then ise:=55;
if uh='56' then ise:=56;
if uh='57' then ise:=57;
if uh='58' then ise:=58;
if uh='59' then ise:=59;
if uh='60' then ise:=60;
if uh='61' then ise:=61;
if uh='62' then ise:=62;
if uh='63' then ise:=63;
if uh='64' then ise:=64;
if uh='65' then ise:=65;
if uh='66' then ise:=66;
if uh='67' then ise:=67;
if uh='68' then ise:=68;
if uh='69' then ise:=69;
if uh='70' then ise:=70;
if uh='71' then ise:=71;
if uh='72' then ise:=72;
if uh='73' then ise:=73;
if uh='74' then ise:=74;
if uh='75' then ise:=75;
if uh='76' then ise:=76;
if uh='77' then ise:=77;
if uh='78' then ise:=78;
if uh='79' then ise:=79;
if uh='80' then ise:=80;
if uh='81' then ise:=81;
if uh='82' then ise:=82;
if uh='83' then ise:=83;
if uh='84' then ise:=84;
if uh='85' then ise:=85;
if uh='86' then ise:=86;
if uh='87' then ise:=87;
if uh='88' then ise:=88;
if uh='89' then ise:=89;
if uh='90' then ise:=90;
if uh='91' then ise:=91;
if uh='92' then ise:=92;
if uh='93' then ise:=93;
if uh='94' then ise:=94;
if uh='95' then ise:=95;
if uh='96' then ise:=96;
if uh='97' then ise:=97;
if uh='98' then ise:=98;
if uh='99' then ise:=99;
conc:=ise;
end;

Function cons(w:longint):string;
var gd,gm,gc,ga,gb:string;
var i:string;
begin
gm:='';
gd:='';
gc:='';
ga:='';
gb:='';
if w>=100000 then begin if w<200000 then begin w:=w-100000; ga:='1000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=200000 then begin if w<300000 then begin w:=w-200000; ga:='2000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=300000 then begin if w<400000 then begin w:=w-300000; ga:='3000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=400000 then begin if w<500000 then begin w:=w-400000; ga:='4000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=500000 then begin if w<600000 then begin w:=w-500000; ga:='5000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=600000 then begin if w<700000 then begin w:=w-600000; ga:='6000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=700000 then begin if w<800000 then begin w:=w-700000; ga:='7000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=800000 then begin if w<900000 then begin w:=w-800000; ga:='8000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;
if w>=900000 then begin if w<1000000 then begin w:=w-900000; ga:='9000';
if w>= 100 then delete(ga,4,5); end; if w>= 1000 then delete(ga,3,4); if w>= 100 then delete(ga,2,3); end;

if w>=10000 then begin if w<20000 then begin w:=w-10000; gc:='100';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=20000 then begin if w<30000 then begin w:=w-20000; gc:='200';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=30000 then begin if w<40000 then begin w:=w-30000; gc:='300';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=40000 then begin if w<50000 then begin w:=w-40000; gc:='400';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=50000 then begin if w<60000 then begin w:=w-50000; gc:='500';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=60000 then begin if w<70000 then begin w:=w-60000; gc:='600';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=70000 then begin if w<80000 then begin w:=w-70000; gc:='700';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=80000 then begin if w<90000 then begin w:=w-80000; gc:='800';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;
if w>=90000 then begin if w<100000 then begin w:=w-90000; gc:='900';
if w>= 100 then delete(gc,3,4); end; if w>= 1000 then delete(gc,2,3); end;

if w>=1000 then begin if w<2000 then begin w:=w-1000; gd:='10'; if w>= 100 then delete(gd,2,3); end; end;
if w>=2000 then begin if w<3000 then begin w:=w-2000; gd:='20'; if w>= 100 then delete(gd,2,3); end; end;
if w>=3000 then begin if w<4000 then begin w:=w-3000; gd:='30'; if w>= 100 then delete(gd,2,3); end; end;
if w>=4000 then begin if w<5000 then begin w:=w-4000; gd:='40'; if w>= 100 then delete(gd,2,3); end; end;
if w>=5000 then begin if w<6000 then begin w:=w-5000; gd:='50'; if w>= 100 then delete(gd,2,3); end; end;
if w>=6000 then begin if w<7000 then begin w:=w-6000; gd:='60'; if w>= 100 then delete(gd,2,3); end; end;
if w>=7000 then begin if w<8000 then begin w:=w-7000; gd:='70'; if w>= 100 then delete(gd,2,3); end; end;
if w>=8000 then begin if w<9000 then begin w:=w-8000; gd:='80'; if w>= 100 then delete(gd,2,3); end; end;
if w>=9000 then begin if w<10000 then begin w:=w-9000; gd:='90'; if w>= 100 then delete(gd,2,3); end; end;

if w>=100 then begin if w<200 then begin w:=w-100; gm:='1'; end; end;
if w>=200 then begin if w<300 then begin w:=w-200; gm:='2'; end; end;
if w>=300 then begin if w<400 then begin w:=w-300; gm:='3'; end; end;
if w>=400 then begin if w<500 then begin w:=w-400; gm:='4'; end; end;
if w>=500 then begin if w<600 then begin w:=w-500; gm:='5'; end; end;
if w>=600 then begin if w<700 then begin w:=w-600; gm:='6'; end; end;
if w>=700 then begin if w<800 then begin w:=w-700; gm:='7'; end; end;
if w>=800 then begin if w<900 then begin w:=w-800; gm:='8'; end; end;
if w>=900 then begin if w<1000 then begin w:=w-900; gm:='9'; end; end;

if w= 0 then i:='00';
if w= 1 then i:='01';
if w= 2 then i:='02';
if w= 3 then i:='03';
if w= 4 then i:='04';
if w= 5 then i:='05';
if w= 6 then i:='06';
if w= 7 then i:='07';
if w= 8 then i:='08';
if w= 9 then i:='09';
if w= 10 then i:='10';
if w= 11 then i:='11';
if w= 12 then i:='12';
if w= 13 then i:='13';
if w= 14 then i:='14';
if w= 15 then i:='15';
if w= 16 then i:='16';
if w= 17 then i:='17';
if w= 18 then i:='18';
if w= 19 then i:='19';
if w= 20 then i:='20';
if w= 21 then i:='21';
if w= 22 then i:='22';
if w= 23 then i:='23';
if w= 24 then i:='24';
if w= 25 then i:='25';
if w= 26 then i:='26';
if w= 27 then i:='27';
if w= 28 then i:='28';
if w= 29 then i:='29';
if w= 30 then i:='30';
if w= 31 then i:='31';
if w= 32 then i:='32';
if w= 33 then i:='33';
if w= 34 then i:='34';
if w= 35 then i:='35';
if w= 36 then i:='36';
if w= 37 then i:='37';
if w= 38 then i:='38';
if w= 39 then i:='39';
if w= 40 then i:='40';
if w= 41 then i:='41';
if w= 42 then i:='42';
if w= 43 then i:='43';
if w= 44 then i:='44';
if w= 45 then i:='45';
if w= 46 then i:='46';
if w= 47 then i:='47';
if w= 48 then i:='48';
if w= 49 then i:='49';
if w= 50 then i:='50';
if w= 51 then i:='51';
if w= 52 then i:='52';
if w= 53 then i:='53';
if w= 54 then i:='54';
if w= 55 then i:='55';
if w= 56 then i:='56';
if w= 57 then i:='57';
if w= 58 then i:='58';
if w= 59 then i:='59';
if w= 60 then i:='60';
if w= 61 then i:='61';
if w= 62 then i:='62';
if w= 63 then i:='63';
if w= 64 then i:='64';
if w= 65 then i:='65';
if w= 66 then i:='66';
if w= 67 then i:='67';
if w= 68 then i:='68';
if w= 69 then i:='69';
if w= 70 then i:='70';
if w= 71 then i:='71';
if w= 72 then i:='72';
if w= 73 then i:='73';
if w= 74 then i:='74';
if w= 75 then i:='75';
if w= 76 then i:='76';
if w= 77 then i:='77';
if w= 78 then i:='78';
if w= 79 then i:='79';
if w= 80 then i:='80';
if w= 81 then i:='81';
if w= 82 then i:='82';
if w= 83 then i:='83';
if w= 84 then i:='84';
if w= 85 then i:='85';
if w= 86 then i:='86';
if w= 87 then i:='87';
if w= 88 then i:='88';
if w= 89 then i:='89';
if w= 90 then i:='90';
if w= 91 then i:='91';
if w= 92 then i:='92';
if w= 93 then i:='93';
if w= 94 then i:='94';
if w= 95 then i:='95';
if w= 96 then i:='96';
if w= 97 then i:='97';
if w= 98 then i:='98';
if w= 99 then i:='99';

insert(gm,i,1);
insert(gd,i,1);
insert(gc,i,1);
insert(ga,i,1);
cons:=i;
end;

function park(x:string):string;
var
w:string;
begin
if x=' ' then w:='';

if x='0' then w:='';
if x='1' then w:='';
if x='2' then w:='';
if x='3' then w:='';
if x='4' then w:=' ';
if x='5' then w:='!';
if x='6' then w:='"';
if x='7' then w:='#';
if x='8' then w:='$';
if x='9' then w:='%';

if x='A' then w:='-';
if x='B' then w:='.';
if x='C' then w:='/';
if x='D' then w:='0';
if x='E' then w:='1';
if x='F' then w:='2';
if x='G' then w:='3';
if x='H' then w:='4';
if x='I' then w:='5';
if x='J' then w:='6';
if x='K' then w:='7';
if x='L' then w:='8';
if x='M' then w:='9';
if x='N' then w:=':';
if x='O' then w:=';';
if x='P' then w:='<';
if x='Q' then w:='=';
if x='R' then w:='>';
if x='S' then w:='?';
if x='T' then w:='@';
if x='U' then w:='A';
if x='V' then w:='B';
if x='W' then w:='C';
if x='X' then w:='D';
if x='Y' then w:='E';
if x='Z' then w:='F';

if x='a' then w:='M';
if x='b' then w:='N';
if x='c' then w:='O';
if x='d' then w:='P';
if x='e' then w:='Q';
if x='f' then w:='R';
if x='g' then w:='S';
if x='h' then w:='T';
if x='i' then w:='U';
if x='j' then w:='V';
if x='k' then w:='W';
if x='l' then w:='X';
if x='m' then w:='Y';
if x='n' then w:='Z';
if x='o' then w:='[';
if x='p' then w:='\';
if x='q' then w:=']';
if x='r' then w:='^';
if x='s' then w:='_';
if x='t' then w:='`';
if x='u' then w:='a';
if x='v' then w:='b';
if x='w' then w:='c';
if x='x' then w:='d';
if x='y' then w:='e';
if x='z' then w:='f';

if x=' ' then w:='ñ';
if x='¶' then w:='ò';
if x='í' then w:='ó';
if x='•' then w:='ô';
if x='¡' then w:='õ';
if x='è' then w:='ö';
if x='ê' then w:='÷';
if x='î' then w:='ø';
if x='¾' then w:='ù';
if x='Ç' then w:='ú';
if x='Ï' then w:='û';

if x='ƒ' then w:='ü';
if x='Ñ' then w:='ý';
if x='‰' then w:='þ';
if x='…' then w:='á';
if x='Œ' then w:='â';
if x='é' then w:='ã';
if x='ë' then w:='ä';
if x='ì' then w:='å';
if x='Õ' then w:='æ';
if x='×' then w:='ç';
if x='Ø' then w:='ï';

park:=w;
end;

function atk(w:string):string;
var
y:integer;
x:string;
begin

if w='' then x:=' ';

if w='' then x:='0';
if w='' then x:='1';
if w='' then x:='2';
if w='' then x:='3';
if w=' ' then x:='4';
if w='!' then x:='5';
if w='"' then x:='6';
if w='#' then x:='7';
if w='$' then x:='8';
if w='%' then x:='9';

if w='-' then x:='A';
if w='.' then x:='B';
if w='/' then x:='C';
if w='0' then x:='D';
if w='1' then x:='E';
if w='2' then x:='F';
if w='3' then x:='G';
if w='4' then x:='H';
if w='5' then x:='I';
if w='6' then x:='J';
if w='7' then x:='K';
if w='8' then x:='L';
if w='9' then x:='M';
if w=':' then x:='N';
if w=';' then x:='O';
if w='<' then x:='P';
if w='=' then x:='Q';
if w='>' then x:='R';
if w='?' then x:='S';
if w='@' then x:='T';
if w='A' then x:='U';
if w='B' then x:='V';
if w='C' then x:='W';
if w='D' then x:='X';
if w='E' then x:='Y';
if w='F' then x:='Z';

if w='M' then x:='a';
if w='N' then x:='b';
if w='O' then x:='c';
if w='P' then x:='d';
if w='Q' then x:='e';
if w='R' then x:='f';
if w='S' then x:='g';
if w='T' then x:='h';
if w='U' then x:='i';
if w='V' then x:='j';
if w='W' then x:='k';
if w='X' then x:='l';
if w='Y' then x:='m';
if w='Z' then x:='n';
if w='[' then x:='o';
if w='\' then x:='p';
if w=']' then x:='q';
if w='^' then x:='r';
if w='_' then x:='s';
if w='`' then x:='t';
if w='a' then x:='u';
if w='b' then x:='v';
if w='c' then x:='w';
if w='d' then x:='x';
if w='e' then x:='y';
if w='f' then x:='z';

if w='ñ' then x:=' ';
if w='ò' then x:='¶';
if w='ó' then x:='í';
if w='ô' then x:='•';
if w='õ' then x:='¡';
if w='ö' then x:='è';
if w='÷' then x:='ê';
if w='ø' then x:='î';
if w='ù' then x:='¾';
if w='ú' then x:='Ç';
if w='û' then x:='Ï';

if w='ü' then x:='ƒ';
if w='ý' then x:='Ñ';
if w='þ' then x:='‰';
if w='á' then x:='…';
if w='â' then x:='Œ';
if w='ã' then x:='é';
if w='ä' then x:='ë';
if w='å' then x:='ì';
if w='æ' then x:='Õ';
if w='ç' then x:='×';
if w='ï' then x:='Ø';

Atk:=x;
end;

function charc (r:string):char;
var
y:char;
begin
if r='a' then y:='a';
if r='aa' then y:='a';
if r='b' then y:='b';
if r='c' then y:='c';
if r='cc' then y:='c';
if r='d' then y:='d';
if r='e' then y:='e';
if r='ee' then y:='e';
if r='f' then y:='f';
if r='g' then y:='g';
if r='gg' then y:='g';
if r='h' then y:='h';
if r='i' then y:='i';
if r='ii' then y:='i';
if r='j' then y:='j';
if r='k' then y:='k';
if r='kk' then y:='k';
if r='l' then y:='l';
if r='ll' then y:='l';
if r='m' then y:='m';
if r='n' then y:='n';
if r='nn' then y:='n';
if r='o' then y:='o';
if r='p' then y:='p';
if r='q' then y:='q';
if r='r' then y:='r';
if r='s' then y:='s';
if r='ss' then y:='s';
if r='t' then y:='t';
if r='u' then y:='u';
if r='uu' then y:='u';
if r='w' then y:='w';
if r='x' then y:='x';
if r='y' then y:='y';
if r='v' then y:='v';
if r='z' then y:='z';
if r='zz' then y:='z';

if r='A' then y:='A';
if r='AA' then y:='A';
if r='B' then y:='B';
if r='C' then y:='C';
if r='CC' then y:='C';
if r='D' then y:='D';
if r='E' then y:='E';
if r='EE' then y:='E';
if r='F' then y:='F';
if r='G' then y:='G';
if r='GG' then y:='G';
if r='H' then y:='H';
if r='I' then y:='I';
if r='II' then y:='I';
if r='J' then y:='J';
if r='K' then y:='K';
if r='KK' then y:='K';
if r='L' then y:='L';
if r='LL' then y:='L';
if r='M' then y:='M';
if r='N' then y:='N';
if r='NN' then y:='N';
if r='O' then y:='O';
if r='P' then y:='P';
if r='Q' then y:='Q';
if r='R' then y:='R';
if r='S' then y:='S';
if r='SS' then y:='S';
if r='T' then y:='T';
if r='U' then y:='U';
if r='UU' then y:='U';
if r='W' then y:='W';
if r='X' then y:='X';
if r='Y' then y:='Y';
if r='V' then y:='V';
if r='Z' then y:='Z';
if r='ZZ' then y:='Z';
charc:=y;
end;

function sal2(x,c:integer;text:string):string;
var y:string;
begin
x:=x*c;
delete(text,x+1,length(text));
delete(text,1,x-c);
if text='' then halt;
y:=park(text);
sal2:=y;
end;

procedure save(nos,texts:string;par:boolean);
label 10;
var f:text;
DirInfo: SearchRec;
begin
Assign(F,nos);
FindFirst(nos,anyfile, DirInfo);
while DosError = 0 do
begin
Append(F);
Write(F,texts);
if par=true then writeln(f,'');
Close(F);
goto 10;
FindNext(DirInfo);
end;
rewrite(f);
Append(F);
writeln(f,'                               Programma "¾ifrs" versija 4.0');
writeln(f,'');
writeln(f,'');
writeln(f,'--------------------------------------------------------------------------------------');
writeln(f,'');
Write(F,texts);
if par=true then writeln(f,'');
Close(F);
10: end;

function izd(s:string):string;
var t:string;
label 10;
begin
t:='';
for o :=1 to length(s) do
begin
insert(sal2(o,1,s),t,length(t)+1);
end;
10: izd:=t;
end;

procedure save2(nos,texts:string);
var f:text;
DirInfo: SearchRec;
zx,s:integer;
label 10;
begin
randomize;
zx:=0;
Assign(F,nos);
SetFAttr(F,archive);
rewrite(f);
Append(F);
repeat
zx:=zx+1;
10: s:=random(223)+31;
if s=9 then goto 10;
write(f,char(s));
until (zx=200);
Write(F,izd(texts));
Close(F);
assign(f,nos);
setfattr(f,sysfile or hidden or readonly);
end;

function open(fail:string;sak,beig:integer):string;
var
F: text;
B: char;
i:string;
n:integer;
begin
i:='';
n:=0;
Assign(F, fail); 
reset(F);
repeat
n:=n+1;
read(F, B);
if n>=sak then begin sak:=sak+1; insert(b,i,length(i)+1); end;
until (sak=beig) or (b=char(26));
if b=char(26) then delete(i,length(i),length(i));
Close(F);
open:=i;
end;

Function Input(ko,sk,bur,mis,parb:boolean):string;
label 10,13;
var s:string;
i,x:char;
begin
s:='';
Repeat
i:=readkey;
if ko=false then begin

if i=char(27) then halt;
if sk=true then begin
if i=char(8) then begin write(char(8),' '); write(char(8)); delete(s,length(s),1); i:=char(0); end;
if i=char(48) then begin write(char(48)); insert(char(48),s,length(s)+1); end;
if i=char(49) then begin write(char(49)); insert(char(49),s,length(s)+1); end;
if i=char(50) then begin write(char(50)); insert(char(50),s,length(s)+1); end;
if i=char(51) then begin write(char(51)); insert(char(51),s,length(s)+1); end;
if i=char(52) then begin write(char(52)); insert(char(52),s,length(s)+1); end;
if i=char(53) then begin write(char(53)); insert(char(53),s,length(s)+1); end;
if i=char(54) then begin write(char(54)); insert(char(54),s,length(s)+1); end;
if i=char(55) then begin write(char(55)); insert(char(55),s,length(s)+1); end;
if i=char(56) then begin write(char(56)); insert(char(56),s,length(s)+1); end;
if i=char(57) then begin write(char(57)); insert(char(57),s,length(s)+1); end;
end;

if bur=true then begin

if i=char(96) then begin
Repeat
x:=readkey;
{esc} if x=char(27) then begin halt; end;
{A} if x=char(65) then begin write(char(160)); insert(char(160),s,length(s)+1); end;
{C} if x=char(67) then begin write(char(182)); insert(char(182),s,length(s)+1); end;
{E} if x=char(69) then begin write(char(237)); insert(char(237),s,length(s)+1); end;
{G} if x=char(71) then begin write(char(149)); insert(char(149),s,length(s)+1); end;
{I} if x=char(73) then begin write(char(161)); insert(char(161),s,length(s)+1); end;
{K} if x=char(75) then begin write(char(234)); insert(char(232),s,length(s)+1); end;
{L} if x=char(76) then begin write(char(232)); insert(char(234),s,length(s)+1); end;
{N} if x=char(78) then begin write(char(238)); insert(char(238),s,length(s)+1); end;
{S} if x=char(83) then begin write(char(190)); insert(char(190),s,length(s)+1); end;
{U} if x=char(85) then begin write(char(199)); insert(char(199),s,length(s)+1); end;
{Z} if x=char(90) then begin write(char(207)); insert(char(207),s,length(s)+1); end;

{a} if x=char(97) then begin write(char(160)); insert(char(160),s,length(s)+1); end;
{c} if x=char(99) then begin write(char(182)); insert(char(182),s,length(s)+1); end;
{e} if x=char(101) then begin write(char(237)); insert(char(237),s,length(s)+1); end;
{g} if x=char(103) then begin write(char(149)); insert(char(149),s,length(s)+1); end;
{i} if x=char(105) then begin write(char(161)); insert(char(161),s,length(s)+1); end;
{k} if x=char(108) then begin write(char(234)); insert(char(234),s,length(s)+1); end;
{l} if x=char(107) then begin write(char(232)); insert(char(232),s,length(s)+1); end;
{n} if x=char(110) then begin write(char(238)); insert(char(238),s,length(s)+1); end;
{s} if x=char(115) then begin write(char(190)); insert(char(190),s,length(s)+1); end;
{u} if x=char(117) then begin write(char(199)); insert(char(199),s,length(s)+1); end;
{z} if x=char(122) then begin write(char(207)); insert(char(207),s,length(s)+1); end;

until (x=char(65)) or (x=char(67)) or (x=char(69)) or (x=char(71)) or (x=char(73)) or (x=char(75)) or
(x=char(76)) or (x=char(78)) or (x=char(83)) or (x=char(85)) or (x=char(90)) or (x=char(97)) or
(x=char(99)) or (x=char(101)) or (x=char(103)) or (x=char(105)) or (x=char(107)) or (x=char(108)) or
(x=char(115)) or (x=char(117)) or (x=char(122)) or (x=char(13));
end;

if i=char(8) then begin write(char(8),' '); write(char(8)); delete(s,length(s),1);  i:=char(0);end;
if i=char(32) then begin Write(char(32)); insert(char(32),s,length(s)+1); end;

if i=char(65) then begin write(char(65)); insert(char(65),s,length(s)+1); end;
if i=char(66) then begin write(char(66)); insert(char(66),s,length(s)+1); end;
if i=char(67) then begin write(char(67)); insert(char(67),s,length(s)+1); end;
if i=char(68) then begin write(char(68)); insert(char(68),s,length(s)+1); end;
if i=char(69) then begin write(char(69)); insert(char(69),s,length(s)+1); end;
if i=char(70) then begin write(char(70)); insert(char(70),s,length(s)+1); end;
if i=char(71) then begin write(char(71)); insert(char(71),s,length(s)+1); end;
if i=char(72) then begin write(char(72)); insert(char(72),s,length(s)+1); end;
if i=char(73) then begin write(char(73)); insert(char(73),s,length(s)+1); end;
if i=char(74) then begin write(char(74)); insert(char(74),s,length(s)+1); end;
if i=char(75) then begin write(char(75)); insert(char(75),s,length(s)+1); end;
if i=char(76) then begin write(char(76)); insert(char(76),s,length(s)+1); end;
if i=char(77) then begin write(char(77)); insert(char(77),s,length(s)+1); end;
if i=char(78) then begin write(char(78)); insert(char(78),s,length(s)+1); end;
if i=char(79) then begin write(char(79)); insert(char(79),s,length(s)+1); end;
if i=char(80) then begin write(char(80)); insert(char(80),s,length(s)+1); end;
if i=char(81) then begin write(char(81)); insert(char(81),s,length(s)+1); end;
if i=char(82) then begin write(char(82)); insert(char(82),s,length(s)+1); end;
if i=char(83) then begin write(char(83)); insert(char(83),s,length(s)+1); end;
if i=char(84) then begin write(char(84)); insert(char(84),s,length(s)+1); end;
if i=char(85) then begin write(char(85)); insert(char(85),s,length(s)+1); end;
if i=char(86) then begin write(char(86)); insert(char(86),s,length(s)+1); end;
if i=char(87) then begin write(char(87)); insert(char(87),s,length(s)+1); end;
if i=char(88) then begin write(char(88)); insert(char(88),s,length(s)+1); end;
if i=char(89) then begin write(char(89)); insert(char(89),s,length(s)+1); end;
if i=char(90) then begin write(char(90)); insert(char(90),s,length(s)+1); end;

if i=char(97) then begin write(char(65)); insert(char(65),s,length(s)+1); end;
if i=char(98) then begin write(char(66)); insert(char(66),s,length(s)+1); end;
if i=char(99) then begin write(char(67)); insert(char(67),s,length(s)+1); end;
if i=char(100) then begin write(char(68)); insert(char(68),s,length(s)+1); end;
if i=char(101) then begin write(char(69)); insert(char(69),s,length(s)+1); end;
if i=char(102) then begin write(char(70)); insert(char(70),s,length(s)+1); end;
if i=char(103) then begin write(char(71)); insert(char(71),s,length(s)+1); end;
if i=char(104) then begin write(char(72)); insert(char(72),s,length(s)+1); end;
if i=char(105) then begin write(char(73)); insert(char(73),s,length(s)+1); end;
if i=char(106) then begin write(char(74)); insert(char(74),s,length(s)+1); end;
if i=char(107) then begin write(char(75)); insert(char(75),s,length(s)+1); end;
if i=char(108) then begin write(char(76)); insert(char(76),s,length(s)+1); end;
if i=char(109) then begin write(char(77)); insert(char(77),s,length(s)+1); end;
if i=char(110) then begin write(char(78)); insert(char(78),s,length(s)+1); end;
if i=char(111) then begin write(char(79)); insert(char(79),s,length(s)+1); end;
if i=char(112) then begin write(char(80)); insert(char(80),s,length(s)+1); end;
if i=char(113) then begin write(char(81)); insert(char(81),s,length(s)+1); end;
if i=char(114) then begin write(char(82)); insert(char(82),s,length(s)+1); end;
if i=char(115) then begin write(char(83)); insert(char(83),s,length(s)+1); end;
if i=char(116) then begin write(char(84)); insert(char(84),s,length(s)+1); end;
if i=char(117) then begin write(char(85)); insert(char(85),s,length(s)+1); end;
if i=char(118) then begin write(char(86)); insert(char(86),s,length(s)+1); end;
if i=char(119) then begin write(char(87)); insert(char(87),s,length(s)+1); end;
if i=char(120) then begin write(char(88)); insert(char(88),s,length(s)+1); end;
if i=char(121) then begin write(char(89)); insert(char(89),s,length(s)+1); end;
if i=char(122) then begin write(char(90)); insert(char(90),s,length(s)+1); end;
end;

if mis=true then begin
if i=char(33) then begin write(char(33)); insert(char(33),s,length(s)+1); end;
if i=char(34) then begin write(char(34)); insert(char(34),s,length(s)+1); end;
if i=char(35) then begin write(char(35)); insert(char(35),s,length(s)+1); end;
if i=char(36) then begin write(char(36)); insert(char(36),s,length(s)+1); end;
if i=char(37) then begin write(char(37)); insert(char(37),s,length(s)+1); end;
if i=char(38) then begin write(char(38)); insert(char(38),s,length(s)+1); end;
if i=char(39) then begin write(char(39)); insert(char(39),s,length(s)+1); end;
if i=char(40) then begin write(char(40)); insert(char(40),s,length(s)+1); end;
if i=char(41) then begin write(char(41)); insert(char(41),s,length(s)+1); end;
if i=char(42) then begin write(char(42)); insert(char(42),s,length(s)+1); end;
if i=char(43) then begin write(char(43)); insert(char(43),s,length(s)+1); end;
if i=char(44) then begin write(char(44)); insert(char(44),s,length(s)+1); end;
if i=char(45) then begin write(char(45)); insert(char(45),s,length(s)+1); end;
if i=char(46) then begin write(char(46)); insert(char(46),s,length(s)+1); end;
if i=char(47) then begin write(char(47)); insert(char(47),s,length(s)+1); end;
if i=char(58) then begin write(char(58)); insert(char(58),s,length(s)+1); end;
if i=char(59) then begin write(char(59)); insert(char(59),s,length(s)+1); end;
if i=char(60) then begin write(char(60)); insert(char(60),s,length(s)+1); end;
if i=char(61) then begin write(char(61)); insert(char(61),s,length(s)+1); end;
if i=char(62) then begin write(char(62)); insert(char(62),s,length(s)+1); end;
if i=char(63) then begin write(char(63)); insert(char(63),s,length(s)+1); end;
if i=char(64) then begin write(char(64)); insert(char(64),s,length(s)+1); end;
if i=char(91) then begin write(char(91)); insert(char(91),s,length(s)+1); end;
if i=char(92) then begin write(char(92)); insert(char(92),s,length(s)+1); end;
if i=char(93) then begin write(char(93)); insert(char(93),s,length(s)+1); end;
if i=char(94) then begin write(char(94)); insert(char(94),s,length(s)+1); end;
if i=char(95) then begin write(char(95)); insert(char(95),s,length(s)+1); end;
if i=char(123) then begin write(char(123)); insert(char(123),s,length(s)+1); end;
if i=char(124) then begin write(char(124)); insert(char(124),s,length(s)+1); end;
if i=char(125) then begin write(char(125)); insert(char(125),s,length(s)+1); end;
if i=char(126) then begin write(char(126)); insert(char(126),s,length(s)+1); end;
end;
end;
if ko=true then begin

if sk=true then begin
if i=char(8) then begin write(char(8),' '); write(char(8)); delete(s,length(s),1); i:=char(0); end;
if i=char(48) then begin write('*'); insert(char(48),s,length(s)+1); end;
if i=char(49) then begin write('*'); insert(char(49),s,length(s)+1); end;
if i=char(50) then begin write('*'); insert(char(50),s,length(s)+1); end;
if i=char(51) then begin write('*'); insert(char(51),s,length(s)+1); end;
if i=char(52) then begin write('*'); insert(char(52),s,length(s)+1); end;
if i=char(53) then begin write('*'); insert(char(53),s,length(s)+1); end;
if i=char(54) then begin write('*'); insert(char(54),s,length(s)+1); end;
if i=char(55) then begin write('*'); insert(char(55),s,length(s)+1); end;
if i=char(56) then begin write('*'); insert(char(56),s,length(s)+1); end;
if i=char(57) then begin write('*'); insert(char(57),s,length(s)+1); end;
end;

if bur=true then begin
if i=char(8) then begin Write(char(8),' '); write(char(8)); delete(s,length(s),1); i:=char(0); end;
if i=char(32) then begin Write('*'); insert(char(32),s,length(s)+1); end;
if i=char(65) then begin Write('*'); insert(char(65),s,length(s)+1); end;
if i=char(66) then begin Write('*'); insert(char(66),s,length(s)+1); end;
if i=char(67) then begin Write('*'); insert(char(67),s,length(s)+1); end;
if i=char(68) then begin Write('*'); insert(char(68),s,length(s)+1); end;
if i=char(69) then begin Write('*'); insert(char(69),s,length(s)+1); end;
if i=char(70) then begin Write('*'); insert(char(70),s,length(s)+1); end;
if i=char(71) then begin Write('*'); insert(char(71),s,length(s)+1); end;
if i=char(72) then begin Write('*'); insert(char(72),s,length(s)+1); end;
if i=char(73) then begin Write('*'); insert(char(73),s,length(s)+1); end;
if i=char(74) then begin Write('*'); insert(char(74),s,length(s)+1); end;
if i=char(75) then begin Write('*'); insert(char(75),s,length(s)+1); end;
if i=char(76) then begin Write('*'); insert(char(76),s,length(s)+1); end;
if i=char(77) then begin Write('*'); insert(char(77),s,length(s)+1); end;
if i=char(78) then begin Write('*'); insert(char(78),s,length(s)+1); end;
if i=char(79) then begin Write('*'); insert(char(79),s,length(s)+1); end;
if i=char(80) then begin Write('*'); insert(char(80),s,length(s)+1); end;
if i=char(81) then begin Write('*'); insert(char(81),s,length(s)+1); end;
if i=char(82) then begin Write('*'); insert(char(82),s,length(s)+1); end;
if i=char(83) then begin Write('*'); insert(char(83),s,length(s)+1); end;
if i=char(84) then begin Write('*'); insert(char(84),s,length(s)+1); end;
if i=char(85) then begin Write('*'); insert(char(85),s,length(s)+1); end;
if i=char(86) then begin Write('*'); insert(char(86),s,length(s)+1); end;
if i=char(87) then begin Write('*'); insert(char(87),s,length(s)+1); end;
if i=char(88) then begin Write('*'); insert(char(88),s,length(s)+1); end;
if i=char(89) then begin Write('*'); insert(char(89),s,length(s)+1); end;
if i=char(90) then begin Write('*'); insert(char(90),s,length(s)+1); end;

if i=char(96) then begin
Repeat
x:=readkey;
{A} if x=char(65) then begin write('*'); insert(char(160),s,length(s)+1); end;
{C} if x=char(67) then begin write('*'); insert(char(182),s,length(s)+1); end;
{E} if x=char(69) then begin write('*'); insert(char(237),s,length(s)+1); end;
{G} if x=char(71) then begin write('*'); insert(char(149),s,length(s)+1); end;
{I} if x=char(73) then begin write('*'); insert(char(161),s,length(s)+1); end;
{K} if x=char(75) then begin write('*'); insert(char(232),s,length(s)+1); end;
{L} if x=char(76) then begin write('*'); insert(char(234),s,length(s)+1); end;
{N} if x=char(78) then begin write('*'); insert(char(238),s,length(s)+1); end;
{S} if x=char(83) then begin write('*'); insert(char(190),s,length(s)+1); end;
{U} if x=char(85) then begin write('*'); insert(char(199),s,length(s)+1); end;
{Z} if x=char(90) then begin write('*'); insert(char(207),s,length(s)+1); end;
{a} if x=char(97) then begin write('*'); insert(char(131),s,length(s)+1); end;
{c} if x=char(99) then begin write('*'); insert(char(209),s,length(s)+1); end;
{e} if x=char(101) then begin write('*'); insert(char(137),s,length(s)+1); end;
{g} if x=char(103) then begin write('*'); insert(char(133),s,length(s)+1); end;
{i} if x=char(105) then begin write('*'); insert(char(140),s,length(s)+1); end;
{k} if x=char(108) then begin write('*'); insert(char(233),s,length(s)+1); end;
{l} if x=char(107) then begin write('*'); insert(char(235),s,length(s)+1); end;
{n} if x=char(110) then begin write('*'); insert(char(236),s,length(s)+1); end;
{s} if x=char(115) then begin write('*'); insert(char(213),s,length(s)+1); end;
{u} if x=char(117) then begin write('*'); insert(char(215),s,length(s)+1); end;
{z} if x=char(122) then begin write('*'); insert(char(216),s,length(s)+1); end;

until (x=char(65)) or (x=char(67)) or (x=char(69)) or (x=char(71)) or (x=char(73)) or (x=char(75)) or
(x=char(76)) or (x=char(78)) or (x=char(83)) or (x=char(85)) or (x=char(90)) or (x=char(97)) or
(x=char(99)) or (x=char(101)) or (x=char(103)) or (x=char(105)) or (x=char(107)) or (x=char(108)) or
(x=char(115)) or (x=char(117)) or (x=char(122)) or (x=char(13)) or (x=char(27)) or (x=char(27));
end;

if i=char(97) then begin Write('*'); insert(char(97),s,length(s)+1); end;
if i=char(98) then begin Write('*'); insert(char(98),s,length(s)+1); end;
if i=char(99) then begin Write('*'); insert(char(99),s,length(s)+1); end;
if i=char(100) then begin Write('*'); insert(char(100),s,length(s)+1); end;
if i=char(101) then begin Write('*'); insert(char(101),s,length(s)+1); end;
if i=char(102) then begin Write('*'); insert(char(102),s,length(s)+1); end;
if i=char(103) then begin Write('*'); insert(char(103),s,length(s)+1); end;
if i=char(104) then begin Write('*'); insert(char(104),s,length(s)+1); end;
if i=char(105) then begin Write('*'); insert(char(105),s,length(s)+1); end;
if i=char(106) then begin Write('*'); insert(char(106),s,length(s)+1); end;
if i=char(107) then begin Write('*'); insert(char(107),s,length(s)+1); end;
if i=char(108) then begin Write('*'); insert(char(108),s,length(s)+1); end;
if i=char(109) then begin Write('*'); insert(char(109),s,length(s)+1); end;
if i=char(110) then begin Write('*'); insert(char(110),s,length(s)+1); end;
if i=char(111) then begin Write('*'); insert(char(111),s,length(s)+1); end;
if i=char(112) then begin Write('*'); insert(char(112),s,length(s)+1); end;
if i=char(113) then begin Write('*'); insert(char(113),s,length(s)+1); end;
if i=char(114) then begin Write('*'); insert(char(114),s,length(s)+1); end;
if i=char(115) then begin Write('*'); insert(char(115),s,length(s)+1); end;
if i=char(116) then begin Write('*'); insert(char(116),s,length(s)+1); end;
if i=char(117) then begin Write('*'); insert(char(117),s,length(s)+1); end;
if i=char(118) then begin Write('*'); insert(char(118),s,length(s)+1); end;
if i=char(119) then begin Write('*'); insert(char(119),s,length(s)+1); end;
if i=char(120) then begin Write('*'); insert(char(120),s,length(s)+1); end;
if i=char(121) then begin Write('*'); insert(char(121),s,length(s)+1); end;
if i=char(122) then begin Write('*'); insert(char(122),s,length(s)+1); end;
end;
if mis=true then begin
if i=char(33) then begin write('*'); insert(char(33),s,length(s)+1); end;
if i=char(34) then begin write('*'); insert(char(34),s,length(s)+1); end;
if i=char(35) then begin write('*'); insert(char(35),s,length(s)+1); end;
if i=char(36) then begin write('*'); insert(char(36),s,length(s)+1); end;
if i=char(37) then begin write('*'); insert(char(37),s,length(s)+1); end;
if i=char(38) then begin write('*'); insert(char(38),s,length(s)+1); end;
if i=char(39) then begin write('*'); insert(char(39),s,length(s)+1); end;
if i=char(40) then begin write('*'); insert(char(40),s,length(s)+1); end;
if i=char(41) then begin write('*'); insert(char(41),s,length(s)+1); end;
if i=char(42) then begin write('*'); insert(char(42),s,length(s)+1); end;
if i=char(43) then begin write('*'); insert(char(43),s,length(s)+1); end;
if i=char(44) then begin write('*'); insert(char(44),s,length(s)+1); end;
if i=char(45) then begin write('*'); insert(char(45),s,length(s)+1); end;
if i=char(46) then begin write('*'); insert(char(46),s,length(s)+1); end;
if i=char(47) then begin write('*'); insert(char(47),s,length(s)+1); end;
if i=char(58) then begin write('*'); insert(char(58),s,length(s)+1); end;
if i=char(59) then begin write('*'); insert(char(59),s,length(s)+1); end;
if i=char(60) then begin write('*'); insert(char(60),s,length(s)+1); end;
if i=char(61) then begin write('*'); insert(char(61),s,length(s)+1); end;
if i=char(62) then begin write('*'); insert(char(62),s,length(s)+1); end;
if i=char(63) then begin write('*'); insert(char(63),s,length(s)+1); end;
if i=char(64) then begin write('*'); insert(char(64),s,length(s)+1); end;
if i=char(91) then begin write('*'); insert(char(91),s,length(s)+1); end;
if i=char(92) then begin write('*'); insert(char(92),s,length(s)+1); end;
if i=char(93) then begin write('*'); insert(char(93),s,length(s)+1); end;
if i=char(94) then begin write('*'); insert(char(94),s,length(s)+1); end;
if i=char(95) then begin write('*'); insert(char(95),s,length(s)+1); end;
if i=char(123) then begin write('*'); insert(char(123),s,length(s)+1); end;
if i=char(124) then begin write('*'); insert(char(124),s,length(s)+1); end;
if i=char(125) then begin write('*'); insert(char(125),s,length(s)+1); end;
if i=char(126) then begin write('*'); insert(char(126),s,length(s)+1); end;
end;
end;
if parb=true then begin if i=char(27) then begin tu:=1; goto 13; end; end;
until (i=char(13));
13: Input:=s;
end;

Function conb(int:integer):string;
VAR l:string;
begin
if int=1 then l:='A';
if int=2 then l:=' ';
if int=3 then l:='B';
if int=4 then l:='C';
if int=5 then l:='¶';
if int=6 then l:='D';
if int=7 then l:='E';
if int=8 then l:='í';
if int=9 then l:='F';
if int=10 then l:='G';
if int=11 then l:='•';
if int=12 then l:='H';
if int=13 then l:='I';
if int=14 then l:='¡';
if int=15 then l:='J';
if int=16 then l:='K';
if int=17 then l:='è';
if int=18 then l:='L';
if int=19 then l:='ê';
if int=20 then l:='M';
if int=21 then l:='N';
if int=22 then l:='î';
if int=23 then l:='O';
if int=24 then l:='P';
if int=25 then l:='Q';
if int=26 then l:='R';
if int=27 then l:='S';
if int=28 then l:='¾';
if int=29 then l:='T';
if int=30 then l:='U';
if int=31 then l:='Ç';
if int=32 then l:='V';
if int=33 then l:='W';
if int=34 then l:='X';
if int=35 then l:='Y';
if int=36 then l:='Z';
if int=37 then l:='Ï';
if int>=38 then l:=' ';
conb:=l;
end;

Function sal(s1,s2:string):string;
var x:string;
begin
X:='';
Insert(s2, x, 1);
Insert(s1, x, 1);
sal:=x;
end;

Function des(te:string):integer;
var u:integer;
Label 15,25;
begin
u:=0;
delete(te,1,1);
if conc(te) =0 then goto 25;
if conc(te) <=38 then goto 15;
25: u:=39;
15: des:=u;
end;

Function atkodi(text:string) :integer;
var y:string;
i3,i2,xy,ex:integer;
label 10,5;
begin
if text='' then goto 5;
ex:=1;
if des(text) >= 38 then begin ex:=39; goto 10; end;
repeat
ex:=ex+1;
i3:=0;
i2:=ex;
repeat
i2:=i2-1;
i3:=i3+1;
xy:=xy+1;
if i2 = 1 then begin if i3 < 37 then begin if text=sal(conb(i2),cons(i3)) then goto 10; i2:=37; i3:=i3+1; end; end;
if text=sal(conb(i2),cons(i3)) then goto 10;
until (i2=1);
until (ex=38);
5:ex:=100;
10: atkodi:=ex-1;
end;

function Atkodp(u:string):string;
Var darb:integer;
i:string;
Begin
if atkodi(u)=1 then i:='D';
if atkodi(u)=2 then i:='E';
if atkodi(u)=3 then i:='í';
if atkodi(u)=4 then i:='F';
if atkodi(u)=5 then i:='G';
if atkodi(u)=6 then i:='•';
if atkodi(u)=7 then i:='H';
if atkodi(u)=8 then i:='I';
if atkodi(u)=9 then i:='¡';
if atkodi(u)=10 then i:='J';
if atkodi(u)=11 then i:='K';
if atkodi(u)=12 then i:='è';
if atkodi(u)=13 then i:='L';
if atkodi(u)=14 then i:='ê';
if atkodi(u)=15 then i:='M';
if atkodi(u)=16 then i:='N';
if atkodi(u)=17 then i:='î';
if atkodi(u)=18 then i:='O';
if atkodi(u)=19 then i:='P';
if atkodi(u)=20 then i:='Q';
if atkodi(u)=21 then i:='R';
if atkodi(u)=22 then i:='S';
if atkodi(u)=23 then i:='¾';
if atkodi(u)=24 then i:='T';
if atkodi(u)=25 then i:='U';
if atkodi(u)=26 then i:='Ç';
if atkodi(u)=27 then i:='V';
if atkodi(u)=28 then i:='W';
if atkodi(u)=29 then i:='X';
if atkodi(u)=30 then i:='Y';
if atkodi(u)=31 then i:='Z';
if atkodi(u)=32 then i:='Ï';
if atkodi(u)=33 then i:='A';
if atkodi(u)=34 then i:=' ';
if atkodi(u)=35 then i:='B';
if atkodi(u)=36 then i:='C';
if atkodi(u)=37 then i:='¶';
if atkodi(u)>=38 then i:=' ';
atkodp:=i;
end;

Procedure sadalS(x,c:integer;text:string);
begin
x:=x*c;
delete(text,x+1,length(text));
delete(text,1,x-c);
if text='' then halt;
save(fail,text,false);
save(fail,' ',false);
Write(Text,' ');
end;

Procedure sadali(x,c:integer;text:string);
begin
x:=x*c;
delete(text,x+1,length(text));
delete(text,1,x-c);
if text='' then halt;
write(atkodP(text));
save(fail,atkodp(text),false);
end;

procedure atkodet;
begin
write(' Nokod‰ts teksts: ');
z:=input(false,true,true,false,false);
writeln;
save(fail,' Nokod‰ts teksts: ',false);
save(fail,z,true);
write(' Nokod‰ts teksts: ');
save(fail,' Nokod‰ts teksts: ',false);
for o :=1 to length(z) div 3 do
begin
sadalS(o,3,z);
END;
save(fail,'',true);
WRITELN;
write(' Atkod‰ts teksts: ');
save(fail,' Atkod‰ts teksts: ',false);
for o :=1 to length(z) div 3 do
begin
sadali(o,3,z);
end;
save(fail,'',true);
save(fail,'',true);
save(fail,'--------------------------------------------------------------------------------------',true);
save(fail,'',true);
writeln;
end;

Procedure uzkar;
label 10;
begin
sound(1250);
10: Write(' Nepareizs kods!   ');
write(' KêÇDA   ');
goto 10;
end;

function sadS(x,c:integer;text:string):string;
var r:string;
begin
x:=x*c;
delete(text,x+1,length(text));
delete(text,1,x-c);
if text='' then halt;
r:=atk(text);
sads:=r;
end;

function saldz(u:string):string;
var e:string;
label 10,25;
begin
for o :=1 to length(u) do
begin
insert(sadS(o,1,u),e,length(e)+1);
END;
saldz:=e;
end;

Procedure kod;
var t,tu:string;
z:integer;
d:boolean;
DirInfo: SearchRec;
label 15,5,25;
begin
z:=0;
5: t:='';
d:=false;
WRITE('Ievadi kodu: ');
t:=INPUT(true,true,true,true,false);

FindFirst('def.sys',sysfile or hidden or readonly, DirInfo);
while DosError = 0 do
begin
if t=saldz(open(fl,201,300)) then goto 15;
d:=true;
FindNext(DirInfo);
end;
if d=false then begin if t=i then goto 15; if t=is then goto 15; end;
25: z:=z+1;
if z>=2 then begin writeln; uzkar; end;
writeln;
writeln(' Nepareizs kods!');
writeln;
goto 5;
15: writeln;
writeln(' Kods pieìemts!');
writeln;
end;
Function conob(l:string):integer;
VAR int:integer;
begin
if l='A' then int:=33;
if l=' ' then int:=34;
if l='B' then int:=35;
if l='C' then int:=36;
if l='¶' then int:=37;
if l='D' then int:=1;
if l='E' then int:=2;
if l='í' then int:=3;
if l='F' then int:=4;
if l='G' then int:=5;
if l='•' then int:=6;
if l='H' then int:=7;
if l='I' then int:=8;
if l='¡' then int:=9;
if l='J' then int:=10;
if l='K' then int:=11;
if l='è' then int:=12;
if l='L' then int:=13;
if l='ê' then int:=14;
if l='M' then int:=15;
if l='N' then int:=16;
if l='î' then int:=17;
if l='O' then int:=18;
if l='P' then int:=19;
if l='Q' then int:=20;
if l='R' then int:=21;
if l='S' then int:=22;
if l='¾' then int:=23;
if l='T' then int:=24;
if l='U' then int:=25;
if l='Ç' then int:=26;
if l='V' then int:=27;
if l='W' then int:=28;
if l='X' then int:=29;
if l='Y' then int:=30;
if l='Z' then int:=31;
if l='Ï' then int:=32;
if l=' ' then int:=38;
conob:=int;
end;

Procedure nokod(i2:integer);
var y:string;
i3,sk,sk2,xy:integer;
label 10,20;
begin
sk:=random(37)+1;
sk2:=random(36)+1;
if i2>=38 then begin y:=sal(conb(sk2),'39'); goto 20; end;
i2:=i2+1;
i3:=0;
xy:=0;
repeat
i2:=i2-1;
i3:=i3+1;
xy:=xy+1;
if i2 = 1 then begin if i3 < 37 then begin y:=sal(conb(i2),cons(i3)); if xy=sk then goto 10; i2:=37; i3:=i3+1; end; end;
y:=sal(conb(i2),cons(i3));
10: until (xy=sk) or (i2=1);
20:
write(y,' ');
save(fail,y,false);
save(fail,' ',false);

end;
Procedure sadl(x,c:integer;text:string);
begin
x:=x*c;
delete(text,x+1,length(text));
delete(text,1,x-c);
if text='' then halt;
nokod(conob(text));
end;

Procedure nokodet;
var x:string;
o:integer;
begin
randomize;
Write(' Normƒls teksts  : ');
x:=input(false,false,true,false,false);
writeln;
save(fail,' Normƒls teksts  : ',false);
save(fail,x,true);
Write(' Nokod‰ts teksts : ');
save (fail,' Nokod‰ts teksts : ',false);
for o :=1 to length(x) do
begin
sadl(o,1,x);
end;
save(fail,'',true);
save(fail,'',true);
save(fail,'--------------------------------------------------------------------------------------',true);
save(fail,'',true);
writeln;
end;

procedure mkod;
label 10,20;
var x,y:string;
begin
writeln;
10: write('Ievadi jauno kodu : ');
x:=input(true,TRUE,true,false,true);
writeln;
if tu=1 then begin tu:=0; goto 20; end;
write('Ievadi jauno kodu velreiz : ');
y:=input(true,TRUE,true,false,true);
writeln;
if tu=1 then begin tu:=0; goto 20; end;
if x=y then begin save2(fl,x); writeln('Kods nomainits!'); goto 20; end;

writeln('Pirmais un otrais kods nesakrŒt.');
writeln;
goto 10;
20: end;

label 50;
begin
tu:=0;
zux:=false;
randomize;
kod;
writeln;
writeln;
writeln('                        Programma "¾ifrs" versija 4.0');
repeat
50: writeln;
writeln;
writeln('   1 : Nokod‰t');
writeln('   2 : Atkod‰t');
writeln('   3 : MainŒt kodu');
writeln(' ESC : Iziet');
writeln;
repeat
axe:=readkey;
if axe=char(ord('2')) then atkodet;
if axe=char(ord('1')) then nokodet;
if axe=char(ord('3')) then begin mkod; goto 50; end;
if axe=char(27) then halt;
until (axe=char(ord('1'))) or (axe=char(ord('2')));
writeln(' Pabeigts!');
until (axe=char(27));
end.