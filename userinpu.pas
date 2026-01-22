PROGRAM userinput;
CONST
   size = 7;
TYPE
   gradeList = ARRAY[SIZE] of INTEGER;
VAR
  n, times, i, sum : INTEGER;
  grade : GradeList;

FUNCTION GetValue(low, high : INTEGER) : INTEGER


FUNCTION GetValue : INTEGER;
  VAR
    num : INTEGER;
  FUNCTION Valid(a, low, high : INTEGER) : Boolean;
    BEGIN
      Valid := (a >= low) AND (a <= high) { in between 0 and 50 }
    END;
  BEGIN
    REPEAT
    Write('Enter a number between ', low ', and ', high);
    Read(num);
    IF NOT Valid(num, low, high) THEN Writeln('Try again');
    UNTIL Valid(num, low, high);
    GetValue := num;
  END;

BEGIN
{ Ask the user how many numbers they will enter }
{ Loop that many times }
{ Sum up all the numbers the user gives }
  Times := GetValue(4, 7);
  sum := 0;
  FOR i := 1 TO times DO
  BEGIN
    grades[i] := GatVlaue(0, 100);
  END;

  FOR i := 1 TO times DO sum := sum + Grades[i];

  writeln('the sum = ', sum);
  writeln(' average = ', sum/times);
  Read(n);
END.