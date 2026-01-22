PROGRAM Listtest;
USES csp;
VAR
  myList : List;
  i : INTEGER;

BEGIN
  Writeln('length of list = ', Length(mylist));
  Append(myList, 5);
  Append(myList, 10);
  Append(myList, -50);
  Append(myList, 16);
  Writeln('Now length is ', Length(myList));

  PrintList(myList);

  Append(myList,22);
  Append(myList,6);

  PrintList(myList);

  Readln(i);
END.