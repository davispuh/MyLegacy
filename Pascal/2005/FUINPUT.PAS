Unit FuInput;
INTERFACE
uses crtclone;
Function input(ko,sk,b,mis:boolean):string;
IMPLEMENTATION
Function input(ko,sk,b,mis:boolean):string;
label 10;
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

if b=true then begin

if i=char(96) then begin
Repeat
x:=readkey;
{A} if x=char(65) then begin write(char(160)); insert(char(160),s,length(s)+1); end;
{C} if x=char(67) then begin write(char(182)); insert(char(182),s,length(s)+1); end;
{E} if x=char(69) then begin write(char(237)); insert(char(237),s,length(s)+1); end;
{G} if x=char(71) then begin write(char(149)); insert(char(149),s,length(s)+1); end;
{I} if x=char(73) then begin write(char(161)); insert(char(161),s,length(s)+1); end;
{K} if x=char(75) then begin write(char(232)); insert(char(232),s,length(s)+1); end;
{L} if x=char(76) then begin write(char(234)); insert(char(234),s,length(s)+1); end;
{N} if x=char(78) then begin write(char(238)); insert(char(238),s,length(s)+1); end;
{S} if x=char(83) then begin write(char(190)); insert(char(190),s,length(s)+1); end;
{U} if x=char(85) then begin write(char(199)); insert(char(199),s,length(s)+1); end;
{Z} if x=char(90) then begin write(char(207)); insert(char(207),s,length(s)+1); end;
{a} if x=char(97) then begin write(char(131)); insert(char(131),s,length(s)+1); end;
{c} if x=char(99) then begin write(char(209)); insert(char(209),s,length(s)+1); end;
{e} if x=char(101) then begin write(char(137)); insert(char(137),s,length(s)+1); end;
{g} if x=char(103) then begin write(char(133)); insert(char(133),s,length(s)+1); end;
{i} if x=char(105) then begin write(char(140)); insert(char(140),s,length(s)+1); end;
{k} if x=char(107) then begin write(char(233)); insert(char(233),s,length(s)+1); end;
{l} if x=char(108) then begin write(char(235)); insert(char(235),s,length(s)+1); end;
{n} if x=char(110) then begin write(char(236)); insert(char(236),s,length(s)+1); end;
{s} if x=char(115) then begin write(char(213)); insert(char(213),s,length(s)+1); end;
{u} if x=char(117) then begin write(char(215)); insert(char(215),s,length(s)+1); end;
{z} if x=char(122) then begin write(char(216)); insert(char(216),s,length(s)+1); end;

until (x=char(65)) or (x=char(67)) or (x=char(69)) or (x=char(71)) or (x=char(73)) or (x=char(75)) or
(x=char(76)) or (x=char(78)) or (x=char(83)) or (x=char(85)) or (x=char(90)) or (x=char(97)) or
(x=char(99)) or (x=char(101)) or (x=char(103)) or (x=char(105)) or (x=char(107)) or (x=char(108)) or
(x=char(115)) or (x=char(117)) or (x=char(122));
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

if i=char(97) then begin write(char(97)); insert(char(97),s,length(s)+1); end;
if i=char(98) then begin write(char(98)); insert(char(98),s,length(s)+1); end;
if i=char(99) then begin write(char(99)); insert(char(99),s,length(s)+1); end;
if i=char(100) then begin write(char(100)); insert(char(100),s,length(s)+1); end;
if i=char(101) then begin write(char(101)); insert(char(101),s,length(s)+1); end;
if i=char(102) then begin write(char(102)); insert(char(102),s,length(s)+1); end;
if i=char(103) then begin write(char(103)); insert(char(103),s,length(s)+1); end;
if i=char(104) then begin write(char(104)); insert(char(104),s,length(s)+1); end;
if i=char(105) then begin write(char(105)); insert(char(105),s,length(s)+1); end;
if i=char(106) then begin write(char(106)); insert(char(106),s,length(s)+1); end;
if i=char(107) then begin write(char(107)); insert(char(107),s,length(s)+1); end;
if i=char(108) then begin write(char(108)); insert(char(108),s,length(s)+1); end;
if i=char(109) then begin write(char(109)); insert(char(109),s,length(s)+1); end;
if i=char(110) then begin write(char(110)); insert(char(110),s,length(s)+1); end;
if i=char(111) then begin write(char(111)); insert(char(111),s,length(s)+1); end;
if i=char(112) then begin write(char(112)); insert(char(112),s,length(s)+1); end;
if i=char(113) then begin write(char(113)); insert(char(113),s,length(s)+1); end;
if i=char(114) then begin write(char(114)); insert(char(114),s,length(s)+1); end;
if i=char(115) then begin write(char(115)); insert(char(115),s,length(s)+1); end;
if i=char(116) then begin write(char(116)); insert(char(116),s,length(s)+1); end;
if i=char(117) then begin write(char(117)); insert(char(117),s,length(s)+1); end;
if i=char(118) then begin write(char(118)); insert(char(118),s,length(s)+1); end;
if i=char(119) then begin write(char(119)); insert(char(119),s,length(s)+1); end;
if i=char(120) then begin write(char(120)); insert(char(120),s,length(s)+1); end;
if i=char(121) then begin write(char(121)); insert(char(121),s,length(s)+1); end;
if i=char(122) then begin write(char(122)); insert(char(122),s,length(s)+1); end;
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

if b=true then begin
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
{k} if x=char(103) then begin write('*'); insert(char(233),s,length(s)+1); end;
{l} if x=char(108) then begin write('*'); insert(char(235),s,length(s)+1); end;
{n} if x=char(107) then begin write('*'); insert(char(236),s,length(s)+1); end;
{s} if x=char(115) then begin write('*'); insert(char(213),s,length(s)+1); end;
{u} if x=char(117) then begin write('*'); insert(char(215),s,length(s)+1); end;
{z} if x=char(122) then begin write('*'); insert(char(216),s,length(s)+1); end;

until (x=char(65)) or (x=char(67)) or (x=char(69)) or (x=char(71)) or (x=char(73)) or (x=char(75)) or
(x=char(76)) or (x=char(78)) or (x=char(83)) or (x=char(85)) or (x=char(90)) or (x=char(97)) or
(x=char(99)) or (x=char(101)) or (x=char(103)) or (x=char(105)) or (x=char(107)) or (x=char(108)) or
(x=char(115)) or (x=char(117)) or (x=char(122));
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
until (i=char(13));
input:=s;
end;
var s:string;
begin
s:=input(false,true,true,true);
writeln;
writeln(s);
readln;
writeln;
end.
begin
end.