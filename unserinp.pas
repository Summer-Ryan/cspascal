PROGRAM useinput;
VAR
  n : INTEGER;
  Times : INTEGER;
  i : INTEGER;
FUNCTION GetValue : INTEGER;
 VAR
     a : INTEGER;
 FUNCTION Valid(x : INTEGER) : Boolean ;
  BEGIN
    Valid :=  (a > -1 ) AND ( a < 51);

  END;
 BEGIN
   REPEAT
   Writeln('enter a number between 0 and 50');
   Read(a);
   IF NOT valid(a) THEN  writeln ('try agian');
   UNTIL Valid(a);
   GetValue := a;
 END;

BEGIN
   Write('how many times?');
   Read(times);
   FOR  i := 1 TO times DO
   BEGIN

   n := GetValue;
 END;
END.