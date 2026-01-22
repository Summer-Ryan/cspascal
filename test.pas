PROGRAM testconcat;
USES csp;
VAR
  s : STRINg;

  BEGIN
   Concat('Mr','Murry') = 'MrMurry' THEN
    Writeln('Pass')
   Else
    Writln('Fail');
    If cancat('hello', 'world') = 'Hello world'  THEN
     Writeln('pass')
