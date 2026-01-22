PROGRAM teststring;
USES csp;
VAR
  s : STRING;
BEGIN
  s := 'hello';
  IF prefix('hello', 10) = s THEN Writeln ('pass')
  ELSE writeln('fail');
  IF substring('hello', 3, 10) ='llo' THEN Writeln('pass')
  ELSE writeln('fail');
  IF substring ('hello', 7, 3) = '' THEN  writeln('pass')
  ELSE Writeln('fail');
  Readln;
  END.
