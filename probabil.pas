PROGRAM probability;
VAR
 i : INTEGER;
 p : INTEGER;
BEGIN
 Randomize;
 p := Random(10);
 IF p >= 8 THEN Writeln('Red')
 ELSE IF p >= 3 THEN Writeln('blue')
 ELSE Writeln('yellow');
 Readln;
END.