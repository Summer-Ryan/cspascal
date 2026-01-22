UNIT csp;

INTERFACE

CONST
  SIZE = 255;

TYPE
  List = ARRAY[0..SIZE] OF INTEGER;

FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Insert(VAR aList: LIST; i, value : INTEGER);
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE PrintList(aList : LIST);
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
PROCEDURE Bubblesort(VAR aList : LIST);
FUNCTION Sum(aList : LIST) : INTEGER;
FUNCTION Average(aList : LIST) : REAL;
FUNCTION Pow(n, p : INTEGER) : INTEGER;
FUNCTION concat(s1, s2 : STRING) : STRING;
FUNCTION Len(s: STRING) : INTEGER;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
FUNCTION Median(aList : LIST) : REAL;
FUNCTION LinearSearch(aList : LIST ; value : INTEGER : BOOLEAN;
PROCEDURE Swap(VAR a, b : INTEGER);
PROCEDURE SelectionSort(VAR aList : LIST);

IMPLEMENTATION

PROCEDURE SelectionSort(VAR aList : LIST);
VAR
   i, j, min : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    min := i;
    FOR j :=i + 1 TO Length(aList) DO
    BEGIN
      IF aList[j] < aList[min] THEN min := j;
    END
    Swap(aList[i], aList[min]);
  END;
END.
PROCEDURE Swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  b := a;
  b := temp;
END.

FUNCTION Median(aList : LIST) : REAL;
BEGIN
 IF Length(aList) MOD 2 = 0 THEN
   Median := (aList[Length(aList) DIV 2] + aList[Length(aList) DIV 2 + 1]) / 2
 ELSE
   Median:= aList[Length(aList) DIV 2 + 1 ];
END;


FUNCTION Length(aList : LIST) : INTEGER;
BEGIN
  Length := aList[0];
END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN
  aList[0] := Length(aList)+ 1;
  aList[length(aList) ] := value;
END;

FUNCTION LinearSearch(aList : LIST ; value : INTEGER : BOOLEAN;
VAR
 i, count : INTEGER;
 found : BOOLEAN;
BEGIN
 found := FALSE;
 count := 0;
 FOR i := 1 TO length(aList) DO
 BEGIN
  count := count + 1;
  IF aList[i] = value THEN
  BEGIN
   Found := TRUE;
   Break;
  END;
 END;
 Writeln('number of searches = ', count );
 Linearsearch := Found;
END;

FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
 l, r, mid, count : INTEGER;
 Found : BOOLEAN;
BEGIN
 Found := FALSE;
 l := 1;
 r ;= Length(aList);
 count := 0;
 REPEAT
  count := count + 1 ;
  mid := (l + r) DIV 2;
  IF aList[mid] = value THEN BEGIN
   Found := TRUE;
   Break;
  END;
  ELSE IF aList[mid] < value THEN 1 := mid + 1
  ELSE r := mid - 1;
 UNTIL l > r ;
 Writeln(' number of searches = ', count);
 Binarysearch := Found;
 END;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO n DO
    Append(aList, Random(100));
END;

PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
 IF i > Length(aList) THEN Append(aList, value)
 ELSE  IF i > 0 THEN
 BEGIN
 aList[0] := Length(aList) + 1;
 FOR index := Length(aList) DOWNTO i DO
 aList[index] := aList[index -1];
 aList[i] := value;
 END;
END;

PROCEDURE PrintList(aList : LIST);
 VAR
   i : INTEGER;
 BEGIN
    For i := 1 To Length(aList) DO
  writeLn('Element #', i, ' = ',aList[i]);
 END;

PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
VAR
  index : INTEGER;
BEGIN
 IF (i <=  Length(aList)) AND (i > 0) THEN
 BEGIN
 FOR index := i TO Length(aList) - 1 DO
 aList[index] := aList[index + 1];
 aList[0] := Length(aList) - 1;
END;
END;


FUNCTION Average(aList : LIST) : REAL;
BEGIN
  Average := sum(aList)/Length(aList)

END;

FUNCTION Sum(aList : LIST) : INTEGER;
VAR
  i, total : INTEGER;
BEGIN
  total := 0;
  FOR i := 1 To Length(aList) DO
   total := total + aList[i];
 Sum := total;
END;

FUNCTION Len(s : STRING) : INTEGER;
  BEGIN
    Len := ord(s[0]);
  END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
 VAR
  i : INTEGER;
  temps : STRING;
 BEGIN
 IF n > Len(s) THEN n := Len(s);
 FOR i := 1 TO n DO
 temps[i] := s[i];
 temps[0] := Chr(n);
 Prefix := temps
 END;


FUNCTION Reverse(s : STRING) : STRING;
 VAR
  i : INTEGER;
  temps : STRING;
 BEGIN

 FOR i := 1 TO len(s) DO
 temps[i]:= s[Len(s) - i + 1];
  temps[0] := s[0];
 Reverse := temps;
 END;

FUNCTION concat(s1, s2 : STRING) : STRING;
  VAR
    temps : STRING;
    i : INTEGER;
  BEGIN
   temps[0] := chr(Len(s1) + Len(s2));
     FOR i := 1 TO len(s1) DO
     temps[i] := s1[i];
     FOR i := 1 TO Len(s2) DO
     Temps[Len(s1) + i] := s2[i];
  END;

PROCEDURE Bubblesort(VAR aList : LIST);
VAR
  i, j, temp : INTEGER;
BEGIN
 FOR i := 1 TO Length(aList) - 1 DO
    FOR j := 1 TO Length(aList) - i DO
    IF alist[j] > aList[j + 1] THEN
         Swap(aList[j], aList[j+ 1]);
END;

FUNCTION Pow(n, p : INTEGER) : INTEGER;
  VAR
    prod, i : INTEGER;
  BEGIN
    IF p < 0 THEN prod := 0
    ELSE
    BEGIN
      prod := 1;
      FOR i := 1 TO p DO
          prod := prod*n;
      END;
      Pow := prod;
    END;

FUNCTION Substring(s : STRING;start, n : INTEGER) : STRING;
VAR
temps : STRING;
i : INTEGER;
BEGIN
IF start > Len(s) THEN Substring := ''
ELSE
BEGIN
If n > Len(s) - start + 1 THEN n := Len(s);
FOR i := 1 TO n DO
   temps[i] := s[start + i - 1];
   temps[0] := chr(n);
 substring := temps;
 END;

END;


END.