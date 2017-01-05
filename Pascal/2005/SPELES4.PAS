Program Speles;
Uses crt, dos, Printer,GRAPH;
CONST KEYPORT = $60;
ESC = 01;
Left      = 75;
Right     = 77;
Up        = 72;
Down      = 80;
ENTER     = 28;
BACKSPACE = 14;

Function KeyPressed:boolean; assembler;
asm
  mov bx,40h
  mov es,bx
  mov ax,word ptr es:[001Ch]
  sub ax,word ptr es:[001Ah]
end;
const FormFeed = #12;
      PathLength  = 79;
{----------------------------------------------------------------------------}
  Name1 ='   Loterija   '; Megs1 =0; Path1 ='';
  Txt_file1 ='Davis Mosans'; Run_file1 ='';
  Destination_drive1 = #0 ; Destination_directory1 ='';
  OSystem1 ='2005'; Modification_file1 ='';
{----------------------------------------------------------------------------}
  Name2 ='     NAV      '; Megs2 =0; Path2 ='';
  Txt_file2 ='Davis Mosans'; Run_file2 ='';
  Destination_drive2 = #0; Destination_directory2 = '';
  OSystem2 ='2005'; Modification_file2 ='';
{----------------------------------------------------------------------------}
  Name3 ='     NAV      '; Megs3 =0; Path3 ='';
  Txt_file3 ='Davis Mosans'; Run_file3 ='';
  Destination_drive3 = #0 ; Destination_directory3 = '';
  OSystem3 ='2005'; Modification_file3 ='';
{----------------------------------------------------------------------------}
  Name4 ='     NAV      '; Megs4 =0; Path4 ='';
  Txt_file4 ='Davis Mosans'; Run_file4 ='';
  Destination_drive4 = #0; Destination_directory4 = '';
  OSystem4 ='Dos, Windows, Windows 95'; Modification_file4 ='';
{----------------------------------------------------------------------------}
  Name5 ='     NAV      '; Megs5 =0; Path5 ='';
  Txt_file5 ='Davis Mosans'; Run_file5 ='';
  Destination_drive5 = #0; Destination_directory5 = '';
  OSystem5 ='2005'; Modification_file5 ='';
{----------------------------------------------------------------------------}
  Name6 ='     NAV      '; Megs6 =0; Path6 ='';
  Txt_file6 ='Davis Mosans'; Run_file6 ='';
  Destination_drive6 = #0; Destination_directory6 = '';
  OSystem6 ='2005'; Modification_file6 ='';
{----------------------------------------------------------------------------}
  Name7 ='     NAV      '; Megs7 =0; Path7 ='';
  Txt_file7 ='Davis Mosans'; Run_file7 ='';
  Destination_drive7 = #0; Destination_directory7 = '';
  OSystem7 ='2005'; Modification_file7 ='';
{----------------------------------------------------------------------------}
  Name8 ='     NAV      '; Megs8 =0; Path8 ='';
  Txt_file8 ='Davis Mosans'; Run_file8 ='';
  Destination_drive8 = #0; Destination_directory8 = '';
  OSystem8 ='2005'; Modification_file8 ='';
{----------------------------------------------------------------------------}
  Name9 ='     NAV      '; Megs9 =0; Path9 ='';
  Txt_file9 ='Davis Mosans'; Run_file9 ='';
  Destination_drive9 = #0; Destination_directory9 = '';
  OSystem9 ='2005'; Modification_file9 ='';
{----------------------------------------------------------------------------}
  Name10='     NAV      '; Megs10=0; Path10='';
  Txt_file10='Davis Mosans';  Run_file10='';
  Destination_drive10= #0; Destination_directory10= '';
  OSystem10='2005'; Modification_file10='';
{----------------------------------------------------------------------------}
  Name11='     NAV      '; Megs11=0; Path11='';
  Txt_file11='Davis Mosans';  Run_file11='';
  Destination_drive11= #0; Destination_directory11= '';
  OSystem11='2005'; Modification_file11='';
{----------------------------------------------------------------------------}
  Name12='     NAV      '; Megs12=0; Path12='';
  Txt_file12='Davis Mosans';  Run_file12='';
  Destination_drive12= #0; Destination_directory12= '';
  OSystem12='2005'; Modification_file12='';
{----------------------------------------------------------------------------}
  Name13='     NAV      '; Megs13=0; Path13='';
  Txt_file13='Davis Mosans';  Run_file13='';
  Destination_drive13= #0; Destination_directory13= '';
  OSystem13='2005'; Modification_file13='';
{----------------------------------------------------------------------------}
  Name14='     NAV      '; Megs14=0; Path14='';
  Txt_file14='Davis Mosans';  Run_file14='';
  Destination_drive14= #0; Destination_directory14= '';
  OSystem14='2005'; Modification_file14='';
{----------------------------------------------------------------------------}
  Name15='     NAV      '; Megs15=0; Path15='';
  Txt_file15='Davis Mosans';  Run_file15='';
  Destination_drive15= #0; Destination_directory15= '';
  OSystem15='2005'; Modification_file15='';
{----------------------------------------------------------------------------}
  Name16='     NAV      '; Megs16=0; Path16='';
  Txt_file16='Davis Mosans';  Run_file16='';
  Destination_drive16= #0; Destination_directory16= '';
  OSystem16='2005'; Modification_file16='';
{----------------------------------------------------------------------------}
  Name17='     NAV      '; Megs17=0; Path17='';
  Txt_file17='Davis Mosans';  Run_file17='';
  Destination_drive17= #0; Destination_directory17='';
  OSystem17='2005'; Modification_file17='';
{----------------------------------------------------------------------------}
  Name18='     NAV      '; Megs18=0; Path18='';
  Txt_file18='Davis Mosans';  Run_file18='';
  Destination_drive18= #0; Destination_directory18='';
  OSystem18='2005'; Modification_file18='';
{----------------------------------------------------------------------------}
  Name19='     NAV      '; Megs19=0; Path19='';
  Txt_file19='Davis Mosans';  Run_file19='';
  Destination_drive19= #0; Destination_directory19='';
  OSystem19='2005'; Modification_file19='';
{----------------------------------------------------------------------------}
  Name20='     NAV      '; Megs20=0; Path20='';
  Txt_file20='Davis Mosans';  Run_file20='';
  Destination_drive20= #0; Destination_directory20= '';
  OSystem20='2005'; Modification_file20='';
{----------------------------------------------------------------------------}
  Name21='     NAV      '; Megs21=0; Path21='';
  Txt_file21='Davis Mosans';  Run_file21='';
  Destination_drive21= #0; Destination_directory21= '';
  OSystem21='2005'; Modification_file21='';
{----------------------------------------------------------------------------}
  Name22='     NAV      '; Megs22=0; Path22='';
  Txt_file22='Davis Mosans';  Run_file22='';
  Destination_drive22= #0; Destination_directory22= '';
  OSystem22='2005'; Modification_file22='';
{----------------------------------------------------------------------------}
  Name23='     NAV      '; Megs23=0; Path23='';
  Txt_file23='Davis Mosans';  Run_file23='';
  Destination_drive23= #0; Destination_directory23= '';
  OSystem23='2005'; Modification_file23='';
{----------------------------------------------------------------------------}
  Name24='     NAV      '; Megs24=0; Path24='';
  Txt_file24='Davis Mosans';  Run_file24='';
  Destination_drive24= #0; Destination_directory24= '';
  OSystem24='2005'; Modification_file24='';
{----------------------------------------------------------------------------}
  Name25='     NAV      '; Megs25=0; Path25='';
  Txt_file25='Davis Mosans';  Run_file25='';
  Destination_drive25= #0; Destination_directory25= '';
  OSystem25='2005'; Modification_file25='';
{----------------------------------------------------------------------------}
  Name26='     NAV      '; Megs26=0; Path26='';
  Txt_file26='Davis Mosans';  Run_file26='';
  Destination_drive26= #0; Destination_directory26= '';
  OSystem26='2005'; Modification_file26='';
{----------------------------------------------------------------------------}
  Name27='     NAV      '; Megs27=0; Path27='';
  Txt_file27='Davis Mosans';  Run_file27='';
  Destination_drive27= #0; Destination_directory27= '';
  OSystem27='2005'; Modification_file27='';
{----------------------------------------------------------------------------}
  Name28='     NAV      '; Megs28=0; Path28='';
  Txt_file28='Davis Mosans';  Run_file28='';
  Destination_drive28= #0; Destination_directory28= '';
  OSystem28='2005'; Modification_file28='';
{----------------------------------------------------------------------------}
  Name29='     NAV      '; Megs29=0; Path29='';
  Txt_file29='Davis Mosans';  Run_file29='';
  Destination_drive29= #0; Destination_directory29= '';
  OSystem29='2005'; Modification_file29='';
{----------------------------------------------------------------------------}
  Name30='     NAV      '; Megs30=0; Path30='';
  Txt_file30='Davis Mosans';  Run_file30='';
  Destination_drive30= #0; Destination_directory30= '';
  OSystem30='2005'; Modification_file30='';
{----------------------------------------------------------------------------}
  Name31='     NAV      '; Megs31=0; Path31='';
  Txt_file31='Davis Mosans';  Run_file31='';
  Destination_drive31= #0; Destination_directory31= '';
  OSystem31='2005'; Modification_file31='';
{----------------------------------------------------------------------------}
  Name32='     NAV      '; Megs32=0; Path32='';
  Txt_file32='Davis Mosans';  Run_file32='';
  Destination_drive32= #0; Destination_directory32= '';
  OSystem32='2005'; Modification_file32='';
{----------------------------------------------------------------------------}
  Name33='     NAV      '; Megs33=0; Path33='';
  Txt_file33='Davis Mosans';  Run_file33='';
  Destination_drive33= #0; Destination_directory33= '';
  OSystem33='2005'; Modification_file33='';
{----------------------------------------------------------------------------}
  Name34='     NAV      '; Megs34=0; Path34='';
  Txt_file34='Davis Mosans';  Run_file34='';
  Destination_drive34= #0; Destination_directory34= '';
  OSystem34='2005'; Modification_file34='';
{----------------------------------------------------------------------------}
  Name35='     NAV      '; Megs35=0; Path35='';
  Txt_file35='Davis Mosans';  Run_file35='';
  Destination_drive35= #0; Destination_directory35= '';
  OSystem35='2005'; Modification_file35='';
{----------------------------------------------------------------------------}
  Name36='     NAV      '; Megs36=0; Path36='';
  Txt_file36='Davis Mosans';  Run_file36='';
  Destination_drive36= #0; Destination_directory36= '';
  OSystem36='2005'; Modification_file36='';
{----------------------------------------------------------------------------}
  Name37='     NAV      '; Megs37=0; Path37='';
  Txt_file37='Davis Mosans';  Run_file37='';
  Destination_drive37= #0; Destination_directory37= '';
  OSystem37='2005'; Modification_file37='';
{----------------------------------------------------------------------------}
  Name38='     NAV      '; Megs38=0; Path38='';
  Txt_file38='Davis Mosans';  Run_file38='';
  Destination_drive38= #0; Destination_directory38= '';
  OSystem38='2005'; Modification_file38='';
{----------------------------------------------------------------------------}
  Name39='     NAV      '; Megs39=0; Path39='';
  Txt_file39='Davis Mosans';  Run_file39='';
  Destination_drive39= #0; Destination_directory39= '';
  OSystem39='2005'; Modification_file39='';
{----------------------------------------------------------------------------}
  Name40='     NAV      '; Megs40=0; Path40='';
  Txt_file40='Davis Mosans';  Run_file40='';
  Destination_drive40= #0; Destination_directory40= '';
  OSystem40='2005'; Modification_file40='';
{----------------------------------------------------------------------------}
  Name41='     NAV      '; Megs41=0; Path41='';
  Txt_file41='Davis Mosans';  Run_file41='';
  Destination_drive41= #0; Destination_directory41= '';
  OSystem41='2005'; Modification_file41='';

{----------------------------------------------------------------------------}
  Name42='     NAV      '; Megs42=0; Path42='';
  Txt_file42='Davis Mosans';  Run_file42='';
  Destination_drive42= #0; Destination_directory42= '';
  OSystem42='2005'; Modification_file42='';
{----------------------------------------------------------------------------}
  Name43='     NAV      '; Megs43=0; Path43='';
  Txt_file43='Davis Mosans';  Run_file43='';
  Destination_drive43= #0; Destination_directory43= '';
  OSystem43='2005'; Modification_file43='';
{----------------------------------------------------------------------------}
  Name44='     NAV      '; Megs44=0; Path44='';
  Txt_file44='Davis Mosans';  Run_file44='';
  Destination_drive44= #0; Destination_directory44= '';
  OSystem44='2005'; Modification_file44='';
{----------------------------------------------------------------------------}
  Name45='     NAV      '; Megs45=0; Path45='';
  Txt_file45='Davis Mosans';  Run_file45='';
  Destination_drive45= #0; Destination_directory45= '';
  OSystem45='2005'; Modification_file45='';
{----------------------------------------------------------------------------}
  Name46='     NAV      '; Megs46=0; Path46='';
  Txt_file46='Davis Mosans';  Run_file46='';
  Destination_drive46= #0; Destination_directory46= '';
  OSystem46='2005'; Modification_file46='';
{----------------------------------------------------------------------------}
  Name47='     NAV      '; Megs47=0; Path47='';
  Txt_file47='Davis Mosans';  Run_file47='';
  Destination_drive47= #0; Destination_directory47= '';
  OSystem47='2005'; Modification_file47='';
{----------------------------------------------------------------------------}
  Name48='     NAV      '; Megs48=0; Path48='';
  Txt_file48='Davis Mosans';  Run_file48='';
  Destination_drive48= #0; Destination_directory48= '';
  OSystem48='2005'; Modification_file48='';
{----------------------------------------------------------------------------}
{----------------------------------------------------------------------------}

  Name49='     NAV      '; Megs49=0; Path49='';
  Txt_file49='Davis Mosans';  Run_file49='';
  Destination_drive49= #0; Destination_directory49= '';
  OSystem49='2005'; Modification_file49='';
{----------------------------------------------------------------------------}
{----------------------------------------------------------------------------}
{----------------------------------------------------------------------------}

Type  FileName  = string[PathLength];

VAR choices : ARRAY[1..13] of STRING[30];
    current : BYTE;
    choicesED : ARRAY[1..13] of STRING[30];
    currentED : BYTE;
    poga    : CHAR;
    done    : BOOLEAN;
     Name : String[50];
     Megs : integer;
     Path : Filename;
     Txt_file : String[12];
     Run_file : String[12];
     OSystem : String[30];
     Source_drive : Char;
     Destination_drive : Char;
     Destination_drive_Access : Boolean;
     Destination_directory_Access : Boolean;
     Destination_directory : String;
     Modification_file : String[12];
     SpaceDisk : LongInt;
     PathFileName: FileName;
     ProgramCommandCom : String;
     ProgramName, CmdLine: string;
     Fichier : Text;
     Source: PathStr;
     Choice : integer;
     Cnt : integer;
     I, J, K, C, D, M, N:integer;
     Ch, Choix : Char;
     IOError : integer;
     Quit : Boolean;
     Erreur : Boolean;
     Touche_F1 : Boolean;
     Touche_tab : Boolean;
     Touche_Esc : Boolean;
     Touche_Bas : Boolean;
     Touche_haut : Boolean;
     Touche_insert : boolean;
     tr : integer;
     trs: integer;
{----------------------------------------------------------------------------}
Procedure CursorInsert;
  VAR
    Regs : registers;
  BEGIN
      regs.AH:=$01;
      regs.CH:=$0;  { CH (High): haut du curseur, ligne (de pixels) #0 }
      regs.CL:=$7;  { CL (Low): bas du curseur, ligne (de pixels) #7 }
      intr($10,Regs);
  END;
{----------------------------------------------------------------------------}
Procedure Normalcursor;     { Curseur form‚ de 2 lignes(de pixels)#6 }
  VAR
    Regs : registers;
  BEGIN
      { Code d'interruption pour indiquer changement de curseur }
      regs.AH:=$01;
      regs.CH:=$6;  { CH (High): haut du curseur, ligne (de pixels) #6 }
      regs.CL:=$7;  { CL (Low): bas du curseur, ligne (de pixels) #7 }
      { Interruption niveau machine #10 pour changer le curseur }
      intr($10,Regs);
  END;
{----------------------------------------------------------------------------}
Procedure Effacecursor;         { Pour effacer le curseur }
  VAR
    Regs : registers;
  BEGIN
      { Code d'interruption pour indiquer changement de curseur }
      regs.AH:=$01;
      regs.CH:=$20;  { Valeur nulle }
      regs.CL:=$20;  { Valeur nulle }
      { Interruption niveau machine #10 pour changer le curseur }
      intr($10,Regs);
  END;
{----------------------------------------------------------------------------}
Procedure fin (Erreur:Boolean);         { Quitte le programme principal }

  Begin  { Procedure Fin }
    Window (1, 1, 80, 25);      {Cr‚ation de fenetre (1, 1) … (80, 25)}
    Textcolor (7);              {Couleur du texte … la sortie Lightgray}
    TextBackground (0);         {Couleur du background black}
    ClrScr;                     { Pour effacer l'‚cran }
    NormalCursor;
    Gotoxy(3,2); Writeln('Pateicos ka izmantoji manas speles.');
    Halt(1)
  End;
{----------------------------------------------------------------------------}
Procedure BoitePourQuitter(Var ChoixMenuPrecedent : Char);
 Begin
   EffaceCursor;
   Window (32, 20, 73, 20);
   Textbackground (1);
   Clrscr;
   TextColor (15);
   Write ('Vai tu tiesam gribi iziet? Ja vai Ne');
   Textcolor (14);
   Gotoxy (28, 1);   Write ('J');
   Gotoxy (35, 1);   Write ('N');
   Repeat
     ChoixMenuPrecedent := Readkey;
   Until (Upcase(ChoixMenuPrecedent) = char(74)) or
         (Upcase(ChoixMenuPrecedent) = char(78)) OR
         (Upcase(ChoixMenuPrecedent) = char(27));
   Clrscr;
   Choix := ChoixMenuPrecedent;
   NormalCursor;
 end;
{----------------------------------------------------------------------------}
Procedure DessineBoite
     (x1,y1,x2,y2,Background:integer ;
      LigneContour:Boolean ; LigneContourGauche,LigneContourDroite:integer ;
       Shadow:Boolean ; ShadowBackgroundDroite,ShadowBackgroundBas:integer);
Begin
  Window (x1,y1,x2,y2);
  TextBackground (Background);
  ClrScr;
  Window (x1,y1,x2+1,y2+1);

  If LigneContour = true then
  Begin
    TextColor (LigneContourDroite);
    Gotoxy(1,1); Write('Ú');
    For I := 2 to (x2-x1) do
    Begin Gotoxy(I,1); Write('Ä'); end;
    Writeln;
    For J := 2 to (y2-y1) do
    Begin Gotoxy(1,J); Write('³'); end;
    Writeln;
    Gotoxy(1,y2-y1+1); Write('À');
    TextColor (LigneContourGauche);
    Gotoxy(x2-x1+1,1); Write('¿');
    For J := 2 to (y2-y1) do
    Begin Gotoxy(x2-x1+1,J); Write('³'); end;
    Writeln;
    For I := 2 to (x2-x1) do
    Begin Gotoxy(I,y2-y1+1); Write('Ä'); end;
    Writeln;
    Gotoxy(x2-x1+1,y2-y1+1); Write('Ù');
  end;

  If Shadow = true then
  Begin
    Window (x1,y1,x2+2,y2+1);
    TextColor (0);
    TextBackground(ShadowBackgroundDroite);
    Gotoxy (x2-x1+2,1); Write ('Ü');
    For J := 2 to (y2-y1+1) do
    Begin Gotoxy(x2-x1+2,J); Write ('Û'); end;
    TextBackground(ShadowBackgroundBas);
    For I := 2 to (x2-x1+2) do
    Begin Gotoxy(I,y2-y1+2); Write ('ß'); end;
  end;
end;
{----------------------------------------------------------------------------}
Procedure Read_Char(x1,y1,x2,y2,Background:integer;KindData:String);
Label Escape, Fleche_bas, Fleche_haut, Tabulation,
      En_attente_de_commande;

Begin
Touche_tab := False;
Touche_Esc := False;
Touche_bas := False;
Touche_haut := False;
Goto En_attente_de_commande;

Escape :
  Begin Touche_Esc := true; exit; end;

Fleche_bas :
  Begin Touche_bas := true; exit; end;

Fleche_haut :
  Begin Touche_haut := true; exit; end;

Tabulation :
  Begin Touche_tab := true; exit; end;

En_attente_de_commande:
  Begin
    Repeat
      TextColor(14);
      Window (x1,y1,x2,y2);
      Textbackground (Background);
      ClrScr;                          { Pour effacer l'‚cran }
      K := 1;
      If (KindData='Letter') then
      Begin Repeat
              If (K=3) then K:=1;
              choix := Readkey;
              If Choix = char(27) then goto Escape
              Else If Choix = char(9) then goto Tabulation
              Else If Choix = char(0) then
              Begin
                Choix := Readkey;
                If Choix = char(80) then goto Fleche_bas
                Else If Choix = char(72) then goto Fleche_haut
                Else inc(K);
              end;
              If (K=2) and (Upcase(Choix) in ['A'..'Z']) then inc(K);
            Until (Upcase(Choix) in ['A'..'Z']) and (K=1); end

      Else If (KindData='Number') then
                Begin Repeat
                        If (K=3) then K:=1;
                        choix := Readkey;
                        If Choix = char(27) then goto Escape;
                        If Choix = Char(0) then inc(K);
                        If (K=2) and (Upcase(Choix) in ['A'..'Z']) then inc(K);
                      Until (Upcase(Choix) in ['1'..'9']) and (K=1) ; end
      Else If (KindData='All') then
                Begin Repeat
                        If (K=3) then K:=1;
                        choix := Readkey;
                        If Choix = char(27) then goto Escape;
                        If Choix = Char(0) then inc(K);
                        If (K=2) and (Upcase(Choix) in ['A'..'Z']) then inc(K);
                      Until (Upcase(Choix) in ['1'..'9']) or
                            (Upcase(Choix) in ['A'..'Z']) and (K=1); end;
      Write (Upcase(Choix));
      ch := Readkey;
      If (ch=Char(0)) then ch:=Readkey;
    Until (ch = char(13));
  end;
end;
{----------------------------------------------------------------------------}
Procedure Read_integer (Var NumdataFinal:Integer);
Label Backspace, Effacement, Escape, Fleche_droite, Fleche_gauche,
      Insertion, Key_F1, Tabulation, En_attente_de_commande;


Const Base = 10;
      Sentinel = char(13);
var Touche : char;
    Digit:integer;
    NumData : integer;
    Position : integer;
    String_data : String;
    Fleche_active : Boolean;

Begin
   I := 1;
   Digit := 0;
   Numdata := 0;
   String_data := '';
   Touche_F1 := False;
   Touche_Esc := False;
   Fleche_active := false;
   Goto En_attente_de_commande;

   Backspace :
     Begin
       If Fleche_active = true then
       Begin
         Delete(String_data,I-1,7);
         Gotoxy((I-3),7);
         For Position := (I-1) to Length(String_data) do
         Begin Write(String_data[Position]) end;
         Write(' '); Gotoxy((I-3),7); Dec(I);
       end
       Else If I >= 2 then
            Begin
              Delete(String_data,I-3,7);
              Gotoxy(I-3,7); Write(char(0));
              Gotoxy(I-3,7); Dec(I);
            end;
       goto En_attente_de_commande;
     end;

   Effacement :
     Begin
         Delete(String_data,I,1);
         For Position := I to Length(String_data) do
         Begin Write(String_data[Position]) end;
         Write(' '); Gotoxy(I,1);
         goto En_attente_de_commande
       end;

   Escape :
     Begin Touche_Esc := true; exit; end;

   Fleche_droite :
     Begin
       Fleche_active := True;
       If I <= Length(String_data) then
       Begin Gotoxy(I+1,1); Inc(I); end;
       goto En_attente_de_commande
     end;

   Fleche_gauche :
     Begin
       Fleche_active := True;
       If I > 1 then
       Begin Gotoxy(I-1,1); Dec(I); end;
       goto En_attente_de_commande
     end;

   Insertion :
     Begin
       If Touche_insert = False then
       Begin touche_insert := true; CursorInsert; end
       Else If Touche_insert = true then
       Begin touche_insert := false; Normalcursor; end;
       goto En_attente_de_commande
     end;

   Key_F1 :
     Begin Touche_F1 := true ; exit; end;

   En_attente_de_commande :
   Begin
     Repeat
     Touche := Readkey;
     ch := Touche;
     If (I > Length(String_data)) then Fleche_active := false;
     If ((Touche >= '0') and (Touche <= '9')) then
     Begin
       If ((Touche_insert = True) and (Fleche_active = True)) then
       Begin
         Insert(Touche,String_data,I);
         For Position := I to Length(String_data) do
         Begin Write(String_data[Position]) end;
         Gotoxy(I+1,1); Inc(I);
       end
       Else If ((Touche_insert = False) or (Fleche_active = false)) then
            Begin
              String_data[I] := Touche;
              If Fleche_active = false then String_data := String_data + String_data[I];
              Write(String_data[I]);
              Inc(I);
            end;
     end
     Else If ch = char(27) then goto Escape
     Else If ch = char(8) then goto Backspace
     Else If ch = char(0) then
          Begin
            ch := Readkey;
                 If ch = char(75) then goto Fleche_gauche
            Else If ch = char(59) then goto Key_F1
            Else If ch = char(77) then goto Fleche_droite
            Else If ch = char(83) then goto Effacement
            Else If ch = char(82) then goto Insertion
          end;
     Until (ch = Sentinel);
     For Position := 1 to Length(String_data) do
     Begin
       Digit := ORD(String_data[Position]) - ORD('0');
       Numdata := base * Numdata + Digit;
     end;
   end;
   NumDataFinal := Numdata;
 End;
{----------------------------------------------------------------------------}
Procedure Read_string (Var RepFinal:String);
Label Backspace, Effacement, Escape, Fleche_droite, Fleche_gauche, Fleche_bas,
      Fleche_haut, Insertion, Key_F1, Tabulation, En_attente_de_commande;

Const Sentinel = char(13);
var Rep : String;
    Touche : char;
    Position : integer;
    Fleche_active : Boolean;

Begin
   I := 1;
   Rep := '';
   Touche_tab := False;
   Touche_Esc := False;
   Touche_bas := False;
   Touche_haut := False;
   Fleche_active := false;
   Goto En_attente_de_commande;

   Backspace :
     Begin
       Gotoxy(I-1,1); Dec(I);
       goto En_attente_de_commande;
     end;

   Effacement :
     Begin
         Delete(Rep,I,1);
         For Position := I to Length(Rep) do
         Begin Write(Rep[Position]) end;
         Write(' '); Gotoxy(I,1);
         goto En_attente_de_commande
       end;

   Escape :
     Begin Touche_Esc := true; exit; end;

   Fleche_bas :
     Begin Touche_bas := true; exit; end;

   Fleche_haut :
     Begin Touche_haut := true; exit; end;

   Fleche_droite :
     Begin
       Fleche_active := True;
       If I <= Length(Rep) then
       Begin Gotoxy(I+1,1); Inc(I); end;
       goto En_attente_de_commande
     end;

   Fleche_gauche :
     Begin
       Fleche_active := True;
       If I > 1 then
       Begin Gotoxy(I-1,1); Dec(I); end;
       goto En_attente_de_commande
     end;

   Insertion :
     Begin
       If Touche_insert = False then
       Begin touche_insert := true; CursorInsert; end
       Else If Touche_insert = true then
       Begin touche_insert := false; Normalcursor; end;
       goto En_attente_de_commande
     end;

   Tabulation :
     Begin Touche_tab := true; exit; end;

   En_attente_de_commande :
   Begin
     Repeat
     Touche := Readkey;
     ch := Touche;
     If (I > Length(Rep)) then Fleche_active := false;
     If ((Touche >= char(32)) and (Touche <= char(255))) then
     Begin
       If ((Touche_insert = True) and (Fleche_active = True)) then
       Begin
         Insert(Touche,Rep,I);
         For Position := I to Length(Rep) do
         Begin Write(Rep[Position]) end;
         Gotoxy(I+1,1); Inc(I);
       end
       Else If ((Touche_insert = False) or (Fleche_active = false)) then
            Begin
              Rep[I] := Touche;
              If Fleche_active = false then Rep := Rep + Rep[I];
              Write(Rep[I]);
              Inc(I);
            end;
     end
     Else If ch = char(27) then goto Escape
     Else If ch = char(8) then goto Backspace
     Else If ch = char(9) then goto Tabulation
     Else If ch = char(0) then
          Begin
            ch := Readkey;
                 If ch = char(75) then goto Fleche_gauche
            Else If ch = char(77) then goto Fleche_droite
            Else If ch = char(83) then goto Effacement
            Else If ch = char(82) then goto Insertion
            Else If ch = char(80) then goto Fleche_bas
            Else If ch = char(72) then goto Fleche_haut
          end;
     Until (ch = Sentinel);
   end;
   RepFinal := Rep;
 End;
{---------------------------------------------------------------------------}
Procedure Centrer(Phrase:String ; x1,x2,Ligne:integer);
Begin
  Gotoxy(2,Ligne);
  For I := 1 to (((x2-x1)-Length(Phrase)) div 2) do Write (' ');
  Write(Phrase);
end;
{----------------------------------------------------------------------------}
Procedure Message_erreur (Message:integer;CouleurFond:integer);
Var DosError_Message : String[80];
    IOResult_Message : String[80];
Begin
  EffaceCursor;
  DessineBoite(9,7,72,19,4,true,0,12,True,CouleurFond,CouleurFond);
  DessineBoite(12,8,69,10,4,true,12,0,False,12,12);
  TextColor (14); Centrer('Errors Messages',12,69,2);
  DessineBoite(12,11,69,18,4,true,12,0,False,12,12);
  TextColor (15);
    Write('KLUDA!!!');
  Centrer ('Nospied <Enter> Lai turpinatu!',12,69,7);
  Readln;
 end;
{----------------------------------------------------------------------------}
Procedure Barre_menu_bas(Ecran:String; Couleur:integer);
Begin
  Window (1, 25, 80, 25);
  Textbackground (Couleur);
  Clrscr;
  If (Ecran = 'Principal') then
     Begin
       TextColor(15);
       Gotoxy(45,1); Write ('Izgatavoja: ');
       TextColor(14);
       Gotoxy(57,1); Write ('Davis Mosans');

       TextColor(15);
       Gotoxy(5,1); Write ('  : Citas speles');
       TextColor(14);
       Gotoxy(4,1); Write ('Tab');

       TextColor(15);
       Gotoxy(27,1); Write ('   : Iziet');
       TextColor(14);
       Gotoxy(27,1); Write ('ESC');
     end
  Else Begin
         TextColor(15);
         Gotoxy(62,2); Write ('   : Atteikties');
         TextColor(14);
         Gotoxy(62,1); Write ('ESC');
       end;
end;
{----------------------------------------------------------------------------}
Procedure BackGroundPrincipal(Couleur : integer);
Begin
  Window (1, 1, 80, 25);
  Textbackground (7);
  Clrscr;

  Window (1, 1, 80, 1);
  Textbackground (Couleur);
  Clrscr;
  TextColor(15);
  Centrer('Mazas spelites  ',1,80,1);
end;
{----------------------------------------------------------------------------}
 Function Open(PathFileName:FileName;CouleurFond:integer): boolean;
 var fp : Text;
 begin
   {$I-}
   Assign(fp,PathFileName);
   Reset(fp);
   IOError := IOResult;
   {$I+}
   IF IOError <> 0 then Begin Open:=False; Message_Erreur(2,CouleurFond); end
   Else Begin Open:=True; Close(fp); end;
 end { Open };
{----------------------------------------------------------------------------}
Procedure Message_Traitement(PathFileName:FileName);
Begin
  EffaceCursor;
  BackGroundPrincipal(1);
  DessineBoite(9,7,72,19,1,true,0,9,True,7,7);
  DessineBoite(12,8,69,10,1,true,9,0,False,9,9);
  TextColor (14); Gotoxy (22,2);
  Write ('Status Information');
  DessineBoite(12,11,69,18,1,true,9,0,False,9,9);
  TextColor (15); Centrer('Applying modification',12,69,2);
  TextColor(14);  Centrer(PathFileName,12,69,3);
  TextColor (15) ; Centrer('Please Wait',12,69,7);
  Delay(1500);
end;

{----------------------------------------------------------------------------}
Procedure Modification_Ds_Fichier(PathFileName:FileName;
                                  OriginalString, NewString : String);
Var Match : Boolean;
    ResetTab : Integer;
    OldFile : File of Char;
    NewFile : File of Char;
    StringReadLine : String;
    TabReadLine : Array [1..255] of Char;
    Path : DirStr;
    FileName : NameStr;
    Extension : ExtStr;

Begin
  Assign(OldFile,PathFileName);
  Message_Traitement(PathFileName);
  If (open(PathFileName,7)) then
  Begin
    Fsplit(PathFileName,Path,FileName,Extension);
    Assign(NewFile,Path+FileName+'.TMP');
    Rewrite(NewFile);
    Reset(OldFile);
    While not EOF(OldFile) do
    Begin
      For ResetTab:= 1 to 255 do TabReadLine[ResetTab]:=#0;
      I:=1;
      Repeat
        Read(OldFile, ch);
        TabReadLine[I]:=ch;
        inc(I);
      until (ch=Char(10)) or EOF(OldFile);
      StringReadLine:=TabReadLine;
      For J := 1 to I do
      Begin
        If Upcase(OriginalString[1])=Upcase(TabReadLine[J]) then
        Begin
          Inc(J);
          K:=2;
          Match := True;
          While Match and (K <= Length(OriginalString)) do
          Begin
            If Upcase(OriginalString[K])=Upcase(TabReadLine[J]) then
            Begin Inc(J); Inc(K); end
            Else Match:=False;
          end;
          If Match then
          Begin
            J := J-Length(OriginalString);
            Delete(StringReadLine,J,Length(OriginalString));
            Insert(NewString,StringReadLine,J);
            J := J+(Length(OriginalString)-1);
          end;
        end;
      end;
      K:=1;
      For ResetTab:= 1 to 255 do TabReadLine[ResetTab]:=#0;
      Repeat
        TabReadLine[K]:=StringReadLine[K];
        Inc(K);
      Until StringReadLine[K]=#0;
      I:=1;
      Repeat
        Write(NewFile,TabReadLine[I]);
        inc(I);
      until (TabReadLine[I]=#0);
    end;
  Close(OldFile);
  Close(NewFile);
  Rename(OldFile,Path+FileName+'.OLD');
  Rename(NewFile,PathFileName);
  Delay(1500);
  TextColor (15) ; Centrer('Press <Enter> to continue!',12,69,7);
  Readln;
  end;
end;
{----------------------------------------------------------------------------}
Procedure Manual_installation(TypeOfInstallation:integer);
Begin
  EffaceCursor;
  BackGroundPrincipal(1);
  DessineBoite(9,7,72,19,1,true,0,9,True,7,7);
  DessineBoite(12,8,69,10,1,true,9,0,False,1,1);
  TextColor (14);
  Centrer('Special installation',12,69,2);
  DessineBoite(12,11,69,18,1,true,9,0,False,1,1);
  TextColor (15); Centrer('Please start in '+OSystem,12,69,3);
  If (TypeOfInstallation=1) then Begin end
  Else Begin
   TextColor(14);
   end;
  TextColor (15) ; Centrer('Press <Enter> to continue!',12,69,7);
  Readln;
end;
{----------------------------------------------------------------------------}
Procedure ExecuteExec(ProgramName,CmdLine:String);
  Begin
    BackGroundPrincipal(1);
    Window(1,2,80,25); TextBackGround(0); TextColor(7); ClrScr;
    SwapVectors;
    ChDir(Source_drive+':\'+Path);
    Exec(ProgramName,CmdLine);
    SwapVectors;
    IF DOSError <> 0 then Begin Message_Erreur(1,0); exit; end;
  end;
{----------------------------------------------------------------------------}
Procedure Install_game;
Label A5,A10,A15,A20,A30,A40,A50;
VAR C,N,M,B,A,x,y : INTEGER;
Begin
  NormalCursor;
  Quit:=False;
  Touche_esc:=false;
{----------------------------------------------------------------------------}
 IF NAME=NAME1 THEN BEGIN

C:=50;

DessineBoite(1,1,80,25,1,FALSE,0,0,FALSE,0,0);
clrscr;
x:=79;
y:=23;
textcolor(9);
Gotoxy(1,1); Write('Ú');
For I := 2 to (x*2-x*1) do
Begin Gotoxy(I,1); Write('Ä'); end;
Writeln;
For J := 2 to (y*2-y*1) do
Begin Gotoxy(1,J); Write('³'); end;
Writeln;
Gotoxy(1,y*2-y*1+1); Write('À');
textcolor(0);
Gotoxy(x*2-x*1+1,1); Write('¿');
For J := 2 to (y*2-y*1) do
Begin Gotoxy(x*2-x*1+1,J); Write('³'); end;
Writeln;
For I := 2 to (x*2-x*1) do
Begin Gotoxy(I,y*2-y*1+1); Write('Ä'); end;
Writeln;
Gotoxy(x*2-x*1+1,y*2-y*1+1); Write('Ù');

A5: IF C <=0 THEN GOTO A40;
textcolor(white);
gotoxy(3,3);writeln ('                       ');
gotoxy(3,5);writeln ('                       ');
gotoxy(3,3);WRITELN ('TAVS KREDITS IR ',C,'.');
gotoxy(3,5);wRITELN ('IEVADI LIKMI.');
repeat
repeat
repeat
textcolor(yellow);
gotoxy(3,7);writeln('                                                                            ');
gotoxy(3,8);writeln('                     ');
gotoxy(3,7);Read_integer(d);
gotoxy(3,7);
gotoxy(3,7);
if Touche_esc = True then exit;
until (d in [1..100]);
until (d in [1..100]);
until (d in [1..100]);
if d > c then goto a5;
if d <= 0 then goto a5;
GOTO A10;

A10: textcolor(white);
gotoxy(3,9);writeln ('                                                    ');
gotoxy(3,9);WRITELN ('IEDOMAJIES KADU SKAITLI NO 1 LIDZ 5 UN UZRAKSTI TO.');
textcolor(yellow);
gotoxy(3,11);writeln ('                                  ');
gotoxy(3,11);READLN (B);
IF B<1 THEN GOTO A10;
IF B>5 THEN GOTO A10;

A15: RANDOMIZE;
A:=(RANDOM(5));
textcolor(white);
IF A=0 THEN GOTO A15;
IF A=B THEN GOTO A20;
gotoxy(3,13);writeln('                               ');
gotoxy(3,13);WRITELN ('TU ZAUDEJI LOTERIJA.');
C:=C-D;
gotoxy(3,15); writeln ('                                                   ');
gotoxy(3,15); wrITELN ('VAJADZIGAIS SKAITLIS ',A,', TAVS SKAITLIS ',B,'.');
GOTO A5;


A20: gotoxy(3,13); writeln ('                            ');
gotoxy(3,13);WRITELN ('TU TIKO UZVAREJI LOTEREJA.');
WRITELN ('');
C:=C+D;
GOTO A5;


GOTO A50;
A40: textcolor(white);
gotoxy(3,17); writeln ('                         ');
gotoxy(3,17); WRITELN ('TEV BEIDZAS KREDITS.');
A50: WRITELN ('');
READLN;
END
{----------------------------------------------------------------------------}
  Else If Name=Name2  then Begin

  DessineBoite(1,1,80,25,1,FALSE,0,0,FALSE,0,0);
  DESSINEBOITE(2,2,79,24,1,TRUE,0,9,FALSE,0,0);
  TEXTCOLOR(yellow);
  end
{----------------------------------------------------------------------------}
  Else If Name=Name3  then Begin
  DessineBoite(1,1,80,25,3,FALSE,0,0,FALSE,0,0);
  DESSINEBOITE(2,2,79,24,3,TRUE,0,9,FALSE,0,0);
  TEXTCOLOR(34);
  GOTOXY(3,4); WRITELN('SIVAD');
  gotoxy(3,5);readln;

  end
{----------------------------------------------------------------------------}
  Else If Name=Name4  then Begin
                             end
{----------------------------------------------------------------------------}
  Else If Name=Name5  then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name6 ) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name7 ) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name8 ) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name9 ) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name10) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name11) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name12) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name13) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name14) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name15) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name16) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name17) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name18) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name19) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name20) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name21) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name22) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name23) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name24) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name25) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name26) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name27) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name28) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name29) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name30) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name31) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name32) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name33) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name34) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name35) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name36) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name37) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name38) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name39) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name40) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name41) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name42) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name43) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name44) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name45) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name46) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name47) then Begin
                             end
                {---------------------------------------------}
  Else If (Name=Name48) then Begin
                             end;
                {---------------------------------------------}

end;
{----------------------------------------------------------------------------}

{----------------------------------------------------------------------------}
Procedure Menu_texte;

Var Question_Answer : Char;
    Printer_Device : String[4];

Begin
    EffaceCursor;
  DessineBoite(9,7,72,19,5,true,0,13,True,3,3);
  DessineBoite(12,8,69,10,5,true,13,0,False,13,13);
  TextColor (14); Centrer('Speles palaisana.',12,69,2);
  DessineBoite(12,11,69,18,5,true,13,0,False,13,13);
    TextColor(15); Centrer('Ieladejam.',12,69,4); TextColor(15);
    TextColor(15); Centrer('Ludzu uzgaidi...',13,72,5); TextColor(15);
    Delay(1500);
    SwapVectors;
    Exec(ProgramCommandCom, CmdLine) ;
    SwapVectors;
    SwapVectors;
    SwapVectors;
    SwapVectors;
    SwapVectors;
    SwapVectors;
    Install_game; end;
{----------------------------------------------------------------------------}
Procedure Fill_the_blanks;

Label SourceDrive, DestinationDrive, DestinationDirectory;
var DiskNumber : integer;
    SpaceDiskString : String[10];

function IntToStr(I: Longint): String;
{ Convert any integer type to a string }
var
 S: string[10];
begin
 Str(I, S);
 IntToStr := S;
end;

Procedure Write_Space_Disk;
begin
end;
Begin
If (Destination_drive_Access = False) then Begin
   Window(26,18,30,18); TextBackground(3); Clrscr; TextColor(14);
   EffaceCursor; Write_Space_Disk; NormalCursor; end;
SourceDrive:
  Begin
    Window(21,17,25,17); TextBackground(3); Clrscr; TextColor(14);
    If Touche_Esc = True then Exit;
  end;

DestinationDrive:
  Begin
  If (Destination_drive_Access = True) then Begin
    Window(26,18,30,18); TextBackground(3); Clrscr; TextColor(14);
    If Touche_Esc = True then Exit;
    end;
  end;


DestinationDirectory:
  Begin
  If (Destination_directory_Access = True) then Begin
    Window(30,19,72,19); TextBackground(3); Clrscr; TextColor(14);
    If Touche_Esc = True then Exit;
   end;
   end;

   EffaceCursor;
   Window (7, 16, 61, 16);
   Textbackground (3);
   Clrscr;
   TextColor (15);
   Write ('Vai gribi spelet so speli? ja vai Ne');
   Textcolor (14);
   Gotoxy (28, 1);   Write ('J');
   Gotoxy (35, 1);   Write ('N');
   Repeat
     ch := Readkey;
   Until (Upcase(Ch)=char(74)) or (Upcase(Ch)=char(78)) or (Upcase(ch)=char(27));
      Clrscr;
   NormalCursor;

  Case (Upcase(ch)) of
  'J': Begin Menu_Texte; end;
  'N' : Begin Clrscr; end;
  char(27) : begin end;
  end;
end;
{----------------------------------------------------------------------------}
Procedure Installation_Menu;

Begin
  NormalCursor;
  Touche_insert := false;
  BackGroundPrincipal(3);
  Barre_menu_bas('Autre',3);
  DessineBoite(2,4,78,22,3,true,0,11,True,7,7);
  DessineBoite(5,5,75,7,3,true,11,0,False,13,13);
  TextColor (15); Centrer('Speles Info',5,75,2);

  Window(5,8,75,8); TextColor (14); Centrer(Name,5,75,1);

  DessineBoite(5,9,75,13,3,true,11,0,False,13,13);
  TextColor(15);
  Gotoxy(3,2);Write('Izgatavoja : ');
  TextColor(14); Write(Txt_file);
  TextColor(15);
  Gotoxy(3,3);Write('Gads       : ');
  TextColor(14); Write(OSystem); TextColor(15);

  DessineBoite(5,14,75,21,3,true,11,0,False,13,13);

  TextColor(15);
  Gotoxy(3,2);Write('');
  Gotoxy(3,4);Write('');
  Gotoxy(3,5);Write('');
  Gotoxy(3,6);Write('');
  Gotoxy(3,7);Write('');
  Fill_the_blanks;
  If Erreur = True then begin
                          Erreur := False;
                          Installation_Menu; end;
end;
{----------------------------------------------------------------------------}
Procedure InitiationVariables(VarName:String; VarMegs:integer;
          VarPath:Filename; VarOSystem, VarTxt_file, VarRun_file:String;
          VarModification_file:String; VarDestination_drive:Char;
          VarDestination_directory:String);
Begin
  Name:=VarName ;
  Megs:=VarMegs ;
  Path:=VarPath ;
  OSystem:=VarOSystem ;
  Txt_file:=VarTxt_file ;
  Run_file:=VarRun_file ;
  Modification_file:=VarModification_file ;
  Destination_drive:=VarDestination_drive ;
  If (Destination_drive=#0) then Destination_drive_Access:=True
  Else Destination_drive_Access:=False;
  Destination_directory:=VarDestination_directory ;
  If (Destination_directory='') then Destination_directory_Access:=True
  Else Destination_directory_Access:=False;
  Installation_Menu;

end;
{----------------------------------------------------------------------------}
Procedure Choix_du_Jeux;
var krasa:integer;
Label Page1, Page2, Pirmais, Otrais, Turp, Pirmais2, Otrais2, Turp2;

Begin
  NormalCursor;
  Touche_insert := false;
  BackGroundPrincipal(1);
  Barre_menu_bas('Principal',1);
  DessineBoite(2,4,78,22,1,true,0,9,True,7,7);
  DessineBoite(5,5,75,7,1,true,9,0,False,13,13);
  TextColor (15); Centrer('Spelu tabula ',5,75,2);
  Krasa:=6;
  Goto Page1;

Page1: Begin
  Choice:=0;
  Touche_Esc := False;
  DessineBoite(5,8,75,21,1,true,9,0,False,13,13);
  TextColor (14);

currented:=1;
tr:=0;
trs:=1;

Pirmais: done:=FALSE;
choices[1]:= '  -  '+name1+'  -  ';
choices[2]:= '  -  '+name2+'  -  ';
choices[3]:= '  -  '+name3+'  -  ';
choices[4]:= '  -  '+name4+'  -  ';
choices[5]:= '  -  '+name5+'  -  ';
choices[6]:= '  -  '+name6+'  -  ';
choices[7]:= '  -  '+Name7+'  -  ';
choices[8]:= '  -  '+Name8+'  -  ';
choices[9]:= '  -  '+Name9+'  -  ';
choices[10]:= '  -  '+Name10+'  -  ';
choices[11]:= '  -  '+Name11+'  -  ';
choices[12]:= '  -  '+Name12+'  -  ';
gotoxy(42,2); writeln ('  -  '+name13+'  -  ');
gotoxy(42,3); writeln ('  -  '+name14+'  -  ');
gotoxy(42,4); writeln ('  -  '+name15+'  -  ');
gotoxy(42,5); writeln ('  -  '+name16+'  -  ');
gotoxy(42,6); writeln ('  -  '+name17+'  -  ');
gotoxy(42,7); writeln ('  -  '+name18+'  -  ');
gotoxy(42,8); writeln ('  -  '+Name19+'  -  ');
gotoxy(42,9); writeln ('  -  '+Name20+'  -  ');
gotoxy(42,10); writeln ('  -  '+Name21+'  -  ');
gotoxy(42,11); writeln ('  -  '+Name22+'  -  ');
gotoxy(42,12); writeln ('  -  '+Name23+'  -  ');
gotoxy(42,13); writeln ('  -  '+Name24+'  -  ');
choice:=0;
textcolor(14);
textbackground(1);
for current:=1 to 12 do begin
gotoxy(7,current+1);
write(choices[current]);
end;
current:=trs;
currented:=0;
trs:=0;
repeat
{ highlight current option }
gotoxy(7,current+1);
textcolor(14);
textbackground(Krasa);
write(choices[current]);
{ process input }
while not(keypressed) do begin end;
poga:=readkey;

If poga = Char(9) then begin goto Page2 end

Else If Poga = Char(0) then begin
     poga:=readkey;
     case poga of
     #72:begin
         gotoxy(7,current+1);
         textcolor(14);
         textbackground(1);
         write(choices[current]);
         dec(current);
         if (current=0) then currented:=12;
         if currented = 12 then tr:=12;
         if tr=12 then goto Otrais;
         end;

     #80:begin
         gotoxy(7,current+1);
         textcolor(14);
         textbackground(1);
         write(choices[current]);
         inc(current);
         if (current=13) then currented:=1;
         if currented=1 then tr:=1;
         if tr=1 then goto otrais;
         end;

         #75:begin
         textcolor(14);
         textbackground(1);
         tr:=current;
         goto otrais;
         end;
         #77:begin
         textcolor(14);
         textbackground(1);
         tr:=current;
         goto otrais;
         end;
         end;
         end
Else If Poga = Char(13) then Begin
            case current of
                 1:begin
                   choice:=1;
                   done:=TRUE;
                   end;
                 2:begin
                   choice:=2;
                   done:=TRUE;
                   end;
                 3:begin
                   choice:=3;
                   done:=TRUE;
                   end;
                 4:begin
                   choice:=4;
                   done:=TRUE;
                   end;
                 5:begin
                   choice:=5;
                   done:=TRUE;
                   end;
                 6:begin
                   choice:=6;
                   done:=TRUE;
                   end;

                 7:begin
                   choice:=7;
                   done:=TRUE;
                   end;
                 8:begin
                   choice:=8;
                   done:=TRUE;
                   end;
                 9:begin
                   choice:=9;
                   done:=TRUE;
                   end;
                 10:begin
                   choice:=10;
                   done:=TRUE;
                   end;
                 11:begin
                   choice:=11;
                   done:=TRUE;
                   end;

                 12:begin
                   choice:=12;
                   done:=true;
                   end;
            end;
            end
Else If Poga = Char(27) then begin
            quit:=true;
            exit;
            end;
until (done);
goto Turp;
Otrais: choice:=0;
done:=FALSE;
gotoxy(7,2); writeln ('  -  '+name1+'  -  ');
gotoxy(7,3); writeln ('  -  '+name2+'  -  ');
gotoxy(7,4); writeln ('  -  '+name3+'  -  ');
gotoxy(7,5); writeln ('  -  '+name4+'  -  ');
gotoxy(7,6); writeln ('  -  '+name5+'  -  ');
gotoxy(7,7); writeln ('  -  '+name6+'  -  ');
gotoxy(7,8); writeln ('  -  '+Name7+'  -  ');
gotoxy(7,9); writeln ('  -  '+Name8+'  -  ');
gotoxy(7,10); writeln ('  -  '+Name9+'  -  ');
gotoxy(7,11); writeln ('  -  '+Name10+'  -  ');
gotoxy(7,12); writeln ('  -  '+Name11+'  -  ');
gotoxy(7,13); writeln ('  -  '+Name12+'  -  ');

choicesed[1]:= '  -  '+Name13+'  -  ';
choicesed[2]:= '  -  '+Name14+'  -  ';
choicesed[3]:= '  -  '+Name15+'  -  ';
choicesed[4]:= '  -  '+Name16+'  -  ';
choicesed[5]:= '  -  '+Name17+'  -  ';
choicesed[6]:= '  -  '+Name18+'  -  ';
choicesed[7]:= '  -  '+Name19+'  -  ';
choicesed[8]:= '  -  '+Name20+'  -  ';
choicesed[9]:= '  -  '+Name21+'  -  ';
choicesed[10]:= '  -  '+Name22+'  -  ';
choicesed[11]:= '  -  '+Name23+'  -  ';
choicesed[12]:= '  -  '+Name24+'  -  ';

textcolor(14);
textbackground(1);
for currented:=1 to 12 do begin
gotoxy(42,currented+1);
write(choicesed[currented]);
end;
currented:=tr;
tr:=0;
repeat
{ highlight current option }
gotoxy(42,currented+1);
textcolor(14);
textbackground(Krasa);
write(choicesed[currented]);
{ process input }
while not(keypressed) do begin end;
poga:=readkey;
case poga of
        #9:begin
        goto Page2;
        End;
        #0:begin
           poga:=readkey;
           case poga of
                #72:begin
                    gotoxy(42,currented+1);
                    textcolor(14);
                    textbackground(1);
                    write(choicesed[currented]);
                    dec(currented);
                    if (currented=0) then current:=12;
                    if current = 12 then trs:=12;
                    if trs=12 then goto Pirmais;

                    end;
                #80:begin
                    gotoxy(42,currented+1);
                    textcolor(14);
                    textbackground(1);
                    write(choicesed[currented]);
                    inc(currented);
                    if (currented=13) then current:=1;
                    if current = 1 then trs:=1;
                    if trs=1 then goto Pirmais;
                    end;
                #75:begin
                    textcolor(14);
                    textbackground(1);
                    trs:=currented;
                    goto pirmais;
                    end;
                #77:begin
                    textcolor(14);
                    textbackground(1);
                    trs:=currented;
                    goto pirmais;
                    end;
            end;
            end;
        #13:begin
             case currented of
                 1:begin
                   choice:=13;
                   done:=TRUE;
                   end;
                 2:begin
                   choice:=14;
                   done:=TRUE;
                   end;
                 3:begin
                   choice:=15;
                   done:=TRUE;
                   end;
                 4:begin
                   choice:=16;
                   done:=TRUE;
                   end;
                 5:begin
                   choice:=17;
                   done:=TRUE;
                   end;
                 6:begin
                   choice:=18;
                   done:=TRUE;
                   end;

                 7:begin
                   choice:=19;
                   done:=TRUE;
                   end;
                 8:begin
                   choice:=20;
                   done:=TRUE;
                   end;
                 9:begin
                   choice:=21;
                   done:=TRUE;
                   end;
                 10:begin
                   choice:=22;
                   done:=TRUE;
                   end;
                 11:begin
                   choice:=23;
                   done:=TRUE;
                   end;

                 12:begin
                   choice:=24;
                   done:=true;
                   end;
            end;
            end;
        #27:begin
            quit:=true;
            exit;
            end;
        end;
until (done);

turp: textbackground(1);
TextColor (15);
  TextColor(14);
  Case (Choice) of
  1 : Begin InitiationVariables( Name1 ,Megs1 ,Path1 ,OSystem1 ,Txt_file1 ,Run_file1 ,
            Modification_file1 , Destination_drive1 ,Destination_directory1 ); end;
  2 : Begin InitiationVariables( Name2 ,Megs2 ,Path2 ,OSystem2 ,Txt_file2 ,Run_file2 ,
            Modification_file2 , Destination_drive2 ,Destination_directory2 ); end;
  3 : Begin InitiationVariables( Name3 ,Megs3 ,Path3 ,OSystem3 ,Txt_file3 ,Run_file3 ,
            Modification_file3 , Destination_drive3 ,Destination_directory3 ); end;
  4 : Begin InitiationVariables( Name4 ,Megs4 ,Path4 ,OSystem4 ,Txt_file4 ,Run_file4 ,
            Modification_file4 , Destination_drive4 ,Destination_directory4 ); end;
  5 : Begin InitiationVariables( Name5 ,Megs5 ,Path5 ,OSystem5 ,Txt_file5 ,Run_file5 ,
            Modification_file5 , Destination_drive5 ,Destination_directory5 ); end;
  6 : Begin InitiationVariables( Name6 ,Megs6 ,Path6 ,OSystem6 ,Txt_file6 ,Run_file6 ,
            Modification_file6 , Destination_drive6 ,Destination_directory6 ); end;
  7 : Begin InitiationVariables( Name7 ,Megs7 ,Path7 ,OSystem7 ,Txt_file7 ,Run_file7 ,
            Modification_file7 , Destination_drive7 ,Destination_directory7 ); end;
  8 : Begin InitiationVariables( Name8 ,Megs8 ,Path8 ,OSystem8 ,Txt_file8 ,Run_file8 ,
            Modification_file8 , Destination_drive8 ,Destination_directory8 ); end;
  9 : Begin InitiationVariables( Name9 ,Megs9 ,Path9 ,OSystem9 ,Txt_file9 ,Run_file9 ,
            Modification_file9 , Destination_drive9 ,Destination_directory9 ); end;
  10: Begin InitiationVariables( Name10,Megs10,Path10,OSystem10,Txt_file10,Run_file10,
            Modification_file10, Destination_drive10,Destination_directory10); end;
  11: Begin InitiationVariables( Name11,Megs11,Path11,OSystem11,Txt_file11,Run_file11,
            Modification_file11, Destination_drive11,Destination_directory11); end;
  12: Begin InitiationVariables( Name12,Megs12,Path12,OSystem12,Txt_file12,Run_file12,
            Modification_file12, Destination_drive12,Destination_directory12); end;
  13: Begin InitiationVariables( Name13,Megs13,Path13,OSystem13,Txt_file13,Run_file13,
            Modification_file13, Destination_drive13,Destination_directory13); end;
  14: Begin InitiationVariables( Name14,Megs14,Path14,OSystem14,Txt_file14,Run_file14,
            Modification_file14, Destination_drive14,Destination_directory14); end;
  15: Begin InitiationVariables( Name15,Megs15,Path15,OSystem15,Txt_file15,Run_file15,
            Modification_file15, Destination_drive15,Destination_directory15); end;
  16: Begin InitiationVariables( Name16,Megs16,Path16,OSystem16,Txt_file16,Run_file16,
            Modification_file16, Destination_drive16,Destination_directory16); end;
  17: Begin InitiationVariables( Name17,Megs17,Path17,OSystem17,Txt_file17,Run_file17,
            Modification_file17, Destination_drive17,Destination_directory17); end;
  18: Begin InitiationVariables( Name18,Megs18,Path18,OSystem18,Txt_file18,Run_file18,
            Modification_file18, Destination_drive18,Destination_directory18); end;
  19: Begin InitiationVariables( Name19,Megs19,Path19,OSystem19,Txt_file19,Run_file19,
            Modification_file19, Destination_drive19,Destination_directory19); end;
  20: Begin InitiationVariables( Name20,Megs20,Path20,OSystem20,Txt_file20,Run_file20,
            Modification_file20, Destination_drive20,Destination_directory20); end;
  21: Begin InitiationVariables( Name21,Megs21,Path21,OSystem21,Txt_file21,Run_file21,
            Modification_file21, Destination_drive21,Destination_directory21); end;
  22: Begin InitiationVariables( Name22,Megs22,Path22,OSystem22,Txt_file22,Run_file22,
            Modification_file22, Destination_drive22,Destination_directory22); end;
  23: Begin InitiationVariables( Name23,Megs23,Path23,OSystem23,Txt_file23,Run_file23,
            Modification_file23, Destination_drive20,Destination_directory23); end;
  24: Begin InitiationVariables( Name24,Megs24,Path24,OSystem24,Txt_file24,Run_file24,
            Modification_file24, Destination_drive24,Destination_directory24); end;

       end;
  exit;
       end;

Page2: Begin
  Touche_Esc := False;
  DessineBoite(5,8,75,21,1,true,9,0,False,13,13);
  TextColor (14);

currented:=1;
tr:=0;
trs:=1;

Pirmais2: done:=FALSE;
choices[1]:= '  -  '+name25+'  -  ';
choices[2]:= '  -  '+name26+'  -  ';
choices[3]:= '  -  '+name27+'  -  ';
choices[4]:= '  -  '+name28+'  -  ';
choices[5]:= '  -  '+name29+'  -  ';
choices[6]:= '  -  '+name30+'  -  ';
choices[7]:= '  -  '+Name31+'  -  ';
choices[8]:= '  -  '+Name32+'  -  ';
choices[9]:= '  -  '+Name33+'  -  ';
choices[10]:= '  -  '+Name34+'  -  ';
choices[11]:= '  -  '+Name35+'  -  ';
choices[12]:= '  -  '+Name36+'  -  ';
gotoxy(42,2); writeln ('  -  '+name37+'  -  ');
gotoxy(42,3); writeln ('  -  '+name38+'  -  ');
gotoxy(42,4); writeln ('  -  '+name39+'  -  ');
gotoxy(42,5); writeln ('  -  '+name40+'  -  ');
gotoxy(42,6); writeln ('  -  '+name41+'  -  ');
gotoxy(42,7); writeln ('  -  '+name42+'  -  ');
gotoxy(42,8); writeln ('  -  '+Name43+'  -  ');
gotoxy(42,9); writeln ('  -  '+Name44+'  -  ');
gotoxy(42,10); writeln ('  -  '+Name45+'  -  ');
gotoxy(42,11); writeln ('  -  '+Name46+'  -  ');
gotoxy(42,12); writeln ('  -  '+Name47+'  -  ');
gotoxy(42,13); writeln ('  -  '+Name48+'  -  ');
choice:=0;
textcolor(14);
textbackground(1);
for current:=1 to 12 do begin
gotoxy(7,current+1);
write(choices[current]);
end;
current:=trs;
currented:=0;
trs:=0;
repeat
{ highlight current option }
gotoxy(7,current+1);
textcolor(14);
textbackground(Krasa);
write(choices[current]);
{ process input }
while not(keypressed) do begin end;
poga:=readkey;
case poga of
        #9:begin
        goto Page1;
        End;
        #0:begin
           poga:=readkey;
           case poga of
                #72:begin
                    gotoxy(7,current+1);
                    textcolor(14);
                    textbackground(1);
                    write(choices[current]);
                    dec(current);
                    if (current=0) then currented:=12;
                    if currented = 12 then tr:=12;
                    if tr=12 then goto Otrais2;
                    end;

                #80:begin
                    gotoxy(7,current+1);
                    textcolor(14);
                    textbackground(1);
                    write(choices[current]);
                    inc(current);
                    if (current=13) then currented:=1;
                    if currented=1 then tr:=1;
                    if tr=1 then goto otrais2;
                    end;

                #75:begin
                    textcolor(14);
                    textbackground(1);
                    tr:=current;
                    goto otrais2;
                    end;
                #77:begin
                    textcolor(14);
                    textbackground(1);
                    tr:=current;
                    goto otrais2;
                    end;
            end;
            end;
        #13:begin
            case current of
                 1:begin
                   choice:=25;
                   done:=TRUE;
                   end;
                 2:begin
                   choice:=26;
                   done:=TRUE;
                   end;
                 3:begin
                   choice:=27;
                   done:=TRUE;
                   end;
                 4:begin
                   choice:=28;
                   done:=TRUE;
                   end;
                 5:begin
                   choice:=29;
                   done:=TRUE;
                   end;
                 6:begin
                   choice:=30;
                   done:=TRUE;
                   end;

                 7:begin
                   choice:=31;
                   done:=TRUE;
                   end;
                 8:begin
                   choice:=32;
                   done:=TRUE;
                   end;
                 9:begin
                   choice:=33;
                   done:=TRUE;
                   end;
                 10:begin
                   choice:=34;
                   done:=TRUE;
                   end;
                 11:begin
                   choice:=35;
                   done:=TRUE;
                   end;

                 12:begin
                   choice:=36;
                   done:=true;
                   end;
            end;
            end;
        #27:begin
            quit:=true;
            exit;
            end;
end;
until (done);
goto Turp2;
Otrais2: choice:=0;
done:=FALSE;
gotoxy(7,2); writeln ('  -  '+name25+'  -  ');
gotoxy(7,3); writeln ('  -  '+name26+'  -  ');
gotoxy(7,4); writeln ('  -  '+name27+'  -  ');
gotoxy(7,5); writeln ('  -  '+name28+'  -  ');
gotoxy(7,6); writeln ('  -  '+name29+'  -  ');
gotoxy(7,7); writeln ('  -  '+name30+'  -  ');
gotoxy(7,8); writeln ('  -  '+Name31+'  -  ');
gotoxy(7,9); writeln ('  -  '+Name32+'  -  ');
gotoxy(7,10); writeln ('  -  '+Name33+'  -  ');
gotoxy(7,11); writeln ('  -  '+Name34+'  -  ');
gotoxy(7,12); writeln ('  -  '+Name35+'  -  ');
gotoxy(7,13); writeln ('  -  '+Name36+'  -  ');

choicesed[1]:= '  -  '+Name37+'  -  ';
choicesed[2]:= '  -  '+Name38+'  -  ';
choicesed[3]:= '  -  '+Name39+'  -  ';
choicesed[4]:= '  -  '+Name40+'  -  ';
choicesed[5]:= '  -  '+Name41+'  -  ';
choicesed[6]:= '  -  '+Name42+'  -  ';
choicesed[7]:= '  -  '+Name43+'  -  ';
choicesed[8]:= '  -  '+Name44+'  -  ';
choicesed[9]:= '  -  '+Name45+'  -  ';
choicesed[10]:= '  -  '+Name46+'  -  ';
choicesed[11]:= '  -  '+Name47+'  -  ';
choicesed[12]:= '  -  '+Name48+'  -  ';

textcolor(14);
textbackground(1);
for currented:=1 to 12 do begin
gotoxy(42,currented+1);
write(choicesed[currented]);
end;
currented:=tr;
tr:=0;
repeat
{ highlight current option }
gotoxy(42,currented+1);
textcolor(14);
textbackground(Krasa);
write(choicesed[currented]);
{ process input }
while not(keypressed) do begin end;
poga:=readkey;
case poga of
        #9:begin
        goto Page1;
        End;
        #0:begin
           poga:=readkey;
           case poga of
                #72:begin
                    gotoxy(42,currented+1);
                    textcolor(14);
                    textbackground(1);
                    write(choicesed[currented]);
                    dec(currented);
                    if (currented=0) then current:=12;
                    if current = 12 then trs:=12;
                    if trs=12 then goto Pirmais2;

                    end;
                #80:begin
                    gotoxy(42,currented+1);
                    textcolor(14);
                    textbackground(1);
                    write(choicesed[currented]);
                    inc(currented);
                    if (currented=13) then current:=1;
                    if current = 1 then trs:=1;
                    if trs=1 then goto Pirmais2;
                    end;
                #75:begin
                    textcolor(14);
                    textbackground(1);
                    trs:=currented;
                    goto pirmais2;
                    end;
                #77:begin
                    textcolor(14);
                    textbackground(1);
                    trs:=currented;
                    goto pirmais2;
                    end;
            end;
            end;
        #13:begin
             case currented of
                 1:begin
                   choice:=37;
                   done:=TRUE;
                   end;
                 2:begin
                   choice:=38;
                   done:=TRUE;
                   end;
                 3:begin
                   choice:=39;
                   done:=TRUE;
                   end;
                 4:begin
                   choice:=40;
                   done:=TRUE;
                   end;
                 5:begin
                   choice:=41;
                   done:=TRUE;
                   end;
                 6:begin
                   choice:=42;
                   done:=TRUE;
                   end;

                 7:begin
                   choice:=43;
                   done:=TRUE;
                   end;
                 8:begin
                   choice:=44;
                   done:=TRUE;
                   end;
                 9:begin
                   choice:=45;
                   done:=TRUE;
                   end;
                 10:begin
                   choice:=46;
                   done:=TRUE;
                   end;
                 11:begin
                   choice:=47;
                   done:=TRUE;
                   end;

                 12:begin
                   choice:=48;
                   done:=true;
                   end;
            end;
            end;
        #27:begin
            quit:=true;
            exit;
            end;
        end;
until (done);

turp2: textbackground(1);
TextColor (15);
TextColor(14);

 Case (Choice) of

  24: Begin InitiationVariables( Name24,Megs24,Path24,OSystem24,Txt_file24,Run_file24,
            Modification_file24, Destination_drive24,Destination_directory24); end;
  25: Begin InitiationVariables( Name25,Megs25,Path25,OSystem25,Txt_file25,Run_file25,
            Modification_file25, Destination_drive25,Destination_directory25); end;
  26: Begin InitiationVariables( Name26,Megs26,Path26,OSystem26,Txt_file26,Run_file26,
            Modification_file26, Destination_drive26,Destination_directory26); end;
  27: Begin InitiationVariables( Name27,Megs27,Path27,OSystem27,Txt_file27,Run_file27,
            Modification_file27, Destination_drive27,Destination_directory27); end;
  28: Begin InitiationVariables( Name28,Megs28,Path28,OSystem28,Txt_file28,Run_file28,
            Modification_file28, Destination_drive28,Destination_directory28); end;
  29: Begin InitiationVariables( Name29,Megs29,Path29,OSystem29,Txt_file29,Run_file29,
            Modification_file29, Destination_drive29,Destination_directory29); end;
  30: Begin InitiationVariables( Name30,Megs30,Path30,OSystem30,Txt_file30,Run_file30,
            Modification_file30, Destination_drive30,Destination_directory30); end;
  31: Begin InitiationVariables( Name31,Megs31,Path31,OSystem31,Txt_file31,Run_file31,
            Modification_file31, Destination_drive31,Destination_directory31); end;
  32: Begin InitiationVariables( Name32,Megs32,Path32,OSystem32,Txt_file32,Run_file32,
            Modification_file32, Destination_drive32,Destination_directory32); end;
  33: Begin InitiationVariables( Name33,Megs33,Path33,OSystem33,Txt_file33,Run_file33,
            Modification_file33, Destination_drive33,Destination_directory33); end;
  34: Begin InitiationVariables( Name34,Megs34,Path34,OSystem34,Txt_file34,Run_file34,
            Modification_file34, Destination_drive34,Destination_directory34); end;
  35: Begin InitiationVariables( Name35,Megs35,Path35,OSystem35,Txt_file35,Run_file35,
            Modification_file35, Destination_drive35,Destination_directory35); end;
  36: Begin InitiationVariables( Name36,Megs36,Path36,OSystem36,Txt_file36,Run_file36,
            Modification_file36, Destination_drive36,Destination_directory36); end;
  37: Begin InitiationVariables( Name37,Megs37,Path37,OSystem37,Txt_file37,Run_file37,
            Modification_file37, Destination_drive37,Destination_directory37); end;
  38: Begin InitiationVariables( Name38,Megs38,Path38,OSystem38,Txt_file38,Run_file38,
            Modification_file38, Destination_drive38,Destination_directory38); end;
  39: Begin InitiationVariables( Name39,Megs39,Path39,OSystem39,Txt_file39,Run_file39,
            Modification_file39, Destination_drive39,Destination_directory39); end;
  40: Begin InitiationVariables( Name40,Megs40,Path40,OSystem40,Txt_file40,Run_file40,
            Modification_file40, Destination_drive40,Destination_directory40); end;
  41: Begin InitiationVariables( Name41,Megs41,Path41,OSystem41,Txt_file41,Run_file41,
            Modification_file41, Destination_drive41,Destination_directory41); end;
  42: Begin InitiationVariables( Name42,Megs42,Path42,OSystem42,Txt_file42,Run_file42,
            Modification_file42, Destination_drive42,Destination_directory42); end;
  43: Begin InitiationVariables( Name43,Megs43,Path43,OSystem43,Txt_file43,Run_file43,
            Modification_file43, Destination_drive43,Destination_directory43); end;
  44: Begin InitiationVariables( Name44,Megs44,Path44,OSystem44,Txt_file44,Run_file44,
            Modification_file44, Destination_drive44,Destination_directory44); end;
  45: Begin InitiationVariables( Name45,Megs45,Path45,OSystem45,Txt_file45,Run_file45,
            Modification_file45, Destination_drive45,Destination_directory45); end;
  46: Begin InitiationVariables( Name46,Megs46,Path46,OSystem46,Txt_file46,Run_file46,
            Modification_file46, Destination_drive46,Destination_directory46); end;
  47: Begin InitiationVariables( Name47,Megs47,Path47,OSystem47,Txt_file47,Run_file47,
            Modification_file47, Destination_drive47,Destination_directory47); end;
  48: Begin InitiationVariables( Name48,Megs48,Path48,OSystem48,Txt_file48,Run_file48,
            Modification_file48, Destination_drive48,Destination_directory48); end;

         end; end;
end;
{----------------------------------------------------------------------------}
Begin
  Randomize;
  Clrscr;
  NormalCursor;
  Source := '';
  Quit := False;
  Erreur := False;
  Touche_insert := false;
  Repeat
  Choix_du_Jeux;
  Until Quit = True;
  fin(False);
END.
