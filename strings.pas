PROGRAM strings;
VAR
  name, msg : STRING;
  age : INTEGER;
BEGIN
writeln('enter your age');
 Readln(age);
 writeln('enter your name');
 readln(name);
 msg := 'hi ' + name + '. you are ' ;
 Writeln(msg, age,' years old');
 Writeln('your message is ', length(msg),' long');
 Readln(name);
END.