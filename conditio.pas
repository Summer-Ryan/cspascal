PROGRAM Conditionals;
VAR
 num, guess, i : INTEGER;
BEGIN
  Randomize;
  Num := Random(10);


  REPEAT
   Write('Guess a number between 0 and 9: ');
   Read(guess);
   IF guess < num THEN Write(' Incorrect, too low')
   ELSE IF guess > num THEN write('Incorrect, too high')
   ELSE Write(' That is correct');
  UNTIL num = guess;


  Read(guess)
END.
