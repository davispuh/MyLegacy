  uses Graph;

var
 GraphDriver, GraphMode: Integer;
 Palette: PaletteType;
begin
 GraphDriver := Detect;
 InitGraph(GraphDriver, GraphMode,' ');
 Randomize;
 if GraphResult <> grOk then
   Halt(1);
 GetPalette(Palette);

   if Palette.Size <> 1 then
     SetBkColor(1);
   LineTo(Random(GetMaxX),Random(GetMaxY));
  readln;
 CloseGraph;
end.


