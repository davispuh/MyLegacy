uses crt;

Function cut(ko:string;parko:char;kur:string):string;
begin
while Pos(ko, kur) > 0 do
kur[Pos(ko, kur)] := parko;
cut:=kur;
end;

var s0,s1,s2,s3,s4,s5,s6,s7,s8: array[1..1000] of char;
begin
s0:='Jy';
{write('   ',char(10),char(13));
write('   ',s0);
write('   ',char(10),char(13));
write('   ',char(10),char(13));}

randomize;
write(random(256),'  ');
read(s0);
halt;

s1:=cut(char(1),char  ( 83),s0);
s2:=cut(char(2),char  (177),s1);
s3:=cut(char(3),char  (173),s2);

s1:=cut(char(4),char  ( 79),s3);
s2:=cut(char(5),char  ( 15),s4);
s3:=cut(char(6),char  (107),s5);

s1:=cut(char(7),char  (194),s6);
s2:=cut(char(8),char  ( 27),s7);
s3:=cut(char(9),char  (174),s8);

s1:=cut(char(10),char(240),s9);
s2:=cut(char(11),char(180),s10);
s3:=cut(char(12),char( 86),s11);

s1:=cut(char(13),char(127),s12);
s14:=cut(char(14),char( 11),s13);
s15:=cut(char(15),char( 28),s14);
s16:=cut(char(16),char(134),s15);
s17:=cut(char(17),char(135),s16);
s18:=cut(char(18),char(247),s17);
s19:=cut(char(19),char(145),s18);
s20:=cut(char(20),char( 65),s19);
s21:=cut(char(21),char(198),s20);
s22:=cut(char(22),char( 96),s21);
s23:=cut(char(23),char( 56),s22);
s24:=cut(char(24),char(227),s23);
s25:=cut(char(25),char(142),s24);
s26:=cut(char(26),char(116),s25);
s27:=cut(char(10),char(240),s26);
s28:=cut(char(11),char(180),s27);
s29:=cut(char(12),char( 86),s28);
s30:=cut(char(13),char(127),s29);
s31:=cut(char(14),char( 11),s30);
s32:=cut(char(15),char( 28),s31);
s33:=cut(char(16),char(134),s32);
s34:=cut(char(17),char(135),s33);
s35:=cut(char(18),char(247),s34);
s36:=cut(char(19),char(145),s35);
s37:=cut(char(20),char( 65),s36);
s38:=cut(char(21),char(198),s37);
s39:=cut(char(22),char( 96),s38);
s40:=cut(char(23),char( 56),s39);
s41:=cut(char(24),char(227),s40);
s42:=cut(char(25),char(142),s41);
s43:=cut(char(26),char(116),s42);

write('   ',s26);
readln;
end.




