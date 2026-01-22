PROGRAM GradeClassifier(Input, output);
VAR
    grade : INTEGER;
    CLASS : CHAR;

FUNCTION ClassifyGrade(grade : INTEGER) : CHAR;
   BEGIN
    IF grade < 60 THEN ClassifyGrade :='f'
    ELSE IF grade >= 90 THEN ClassifyGrade :='a'
    ELSE IF (grade < 90) AND (grade >= 80) THEN ClassifyGrade :='b'
    ELSE IF (grade < 80) AND (grade >= 70) THEN ClassifyGrade :='c'
    ELSE ClassifyGrade :='d';
   END;

PROCEDURE PrintGradeClass(class : CHAR);
  BEGIN
   IF Class = 'a' THEN writeln('you got an A')
   ELSE IF class = 'b' THEN writeln( 'you got a B')
   ELSE IF class = 'c' THEN writeln( 'you got a C')
   ELSE IF class = 'd' THEN writeln( 'you got a D')
   ELSE IF class = 'f' THEN writeln( 'you got a F');
  END;

BEGIN
    REPEAT
    writeln('enter your grade');
    read(grade);
    IF (grade < 0) or (grade > 100) THEN write('please and a grade between 0 and 100');
    UNTIL (grade >=0) AND (grade <= 100);
    Class := ClassifyGrade(Grade);
    PrintGradeClass(class);
    Read(grade);
END.