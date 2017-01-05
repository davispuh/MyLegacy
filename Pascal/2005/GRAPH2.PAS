uses Crt, Graph;

procedure setgraph;
var
 Gd, Gm: Integer;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 if GraphResult <> grOk then begin writeln('Nav faila *.BGI'); readln; Halt(1); end;
end;

begin
setgraph;
setbkcolor(3);
setcolor(red);
Line(100,100,230,230);
Readln;
CloseGraph;
end.



