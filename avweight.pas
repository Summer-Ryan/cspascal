PROGRAM AverageWeightt;
CONST
  MAXSIZE = 20;
TYPE
   List = ARRAY[1..MAXSIZE] OF REAL;
VAR
  weights : List;
  teamsize : INTEGER;
  average : REAL;
  Sum : REAL;
  i : INTEGER;
BEGIN
 Writeln('how many players are on the team ?');
 Read(teamsize);
 FOR i := 1 TO teamsize DO
 BEGIN
 Writeln('what is the weight of player #', i, ': ');
 Read(weights[i]);
 END;
 FOR i := 1 TO teamsize DO writeln(weights[i]);
 Read(i);

 sum := 0
 FOR


 END;


END.