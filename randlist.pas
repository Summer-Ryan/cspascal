PROGRAM RandList;
USES CSP;
var
  myList : List;
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO 20 DO
    Append(myList, Random(67) + 1);
  PrintList(myList);
  FOR i := 1 TO 20 DO
  IF myList[i] = 67 THEN
    Writeln('six seven');
  Readln;
END.