PROGRAM stats;
USES csp;
VAR
  myList : LIST;
  n, val : INTEGER;
BEGIN
REPEAT
  Writeln('how many ramdom numbers for your list?');
  Readln(n);
  IF (n <= 0) OR (n > SIZE) THEN
   Writeln('your number must be between 1 and ', SIZE);
  UNTIL (n > 0) AND (n <=  SIZE);
  RandomList(myList, n);
  Bubblesort(myList);
  PrintList(myList);
  Writeln('The average = ', Average(myList):3:2 );
  writeln('the median = ', Median(myList):3:2 );
  Readln;
END.