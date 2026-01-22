PROGRAM sub;
VAR
    s1, s2 : STRING;
    i, j : INTEGER;

FUNCTION substring(s : STRING; start, len : INTEGER) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
 BEGIN

   FOR i := 1 TO len DO
    temps[i] := s[i + start - 1];
    temps[0] := chr(len);
    substring := temps;
 END;


BEGIN
 s1 := substring('HelloMurryYouSuck', 3, 8);
 Writeln('hello -> ', s1);
 Read(i);
END.