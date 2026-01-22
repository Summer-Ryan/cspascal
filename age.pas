 PROGRAM AgeClassifier(Input, Output);
 VAR
    age : INTEGER;
    class : CHAR;

FUNCTION ClassifyAge(age : INTEGER) : CHAR;
    BEGIN
     IF age < 13 THEN ClassifyAge := 'c'
     ELSE IF age > 19 THEN ClassifyAge := 'a'

     ELSE ClassifyAge := 't';
    END;

PROCEDURE PrintAgeClass(class : CHAR);
  BEGIN
    IF class = 'c' THEN writeln('You are a kid')
    ELSE IF class = 'a' THEN writeln('you are an adult')
    ELSE IF class = 't' THEN writeln('you are a teenager');
  END;

BEGIN
    Writeln('enter your age');
    Read(age);
    IF (age < 0) or (age > 120 ) THEN write('please enter number betweem 0 and 120');
    UNTIL (age >= 0) AND (age <= 120);
    class := ClassifyAge(age);
    PrintAgeClass(class);
    Read(age);
END.