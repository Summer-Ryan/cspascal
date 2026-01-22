PROGRAM averageheights;
CONST
 MAXTEAM = 22;

TYPE
  List = ARRAY[1..MAXTEAM] OF INTEGER;
VAR
   heights : List;
   teamNum : INTEGER;
   average : REAL;
   sum, i : INTEGER;
BEGIN
  writeln(' how many players are on team? ');
  Readln(teamNum);
  FOR i := 1 TO teamNum DO
  BEGIN
  Writeln('Enter height of player# ', i ,' : ');
  Readln(heights[i])
  END;
  FOR i := 1 TO teamNum DO writeln(heights[i]);


END.