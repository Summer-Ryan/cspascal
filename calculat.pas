PROGRAM calculatgrade;
CONST
  MAXSIZE = 20;
TYPE
  List = ARRAY[1..MAXSIZE] OF REAL;
VAR
  grades : List;
  average, sum : REAL;
  i : INTEGER;
  assynments : INTEGER;

 FUNCTION CalculateAverage(gradeList : List; num : INTEGER) : REAL;
VAR sum : REAL;
BEGIN
 sum := 0;
 FOR i := 0 TO  num DO sum := sum + gradeList[i];
 calculateAverage := sum/num;
END;



BEGIN
 Writeln('how many assynments are in the class?');
 read(assynments);
 FOR i := 1 TO assynments DO
 BEGIN
 writeln('what grade did you get for assynment#', i, ' : ');
 read(grades[i]);
 END;
 FOR i := 1 TO assynments DO writeln(grades[i]);
 Read(i);

 sum := sum + (grades[i]);
 writeln('sum = ', sum);
 Readln(i);
 END.
