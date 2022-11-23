# Lovecraftian_Lisp
The platonic perfection all Lisp dialects converge towards!  Finally enough parentheses!  Truth in a joke.

Ever worked with a Lisp dialect and thought: "There are not enough parentheses?"

This is the Ultimate Lisp Data Structure, using only cons cells and empty lists!

Dedicated to Harold Abelson, Gerald Jay Sussman and Julie Sussman, and all who have
been been enlightened and/or sunk to despair by their book Structure and Interpretation of
Computer Programs.


lovecraft-encode takes as input any string, and converts it into Lovecraftian Lisp.
lovecraft-decode converts Lovecraftial Lisp back into strings.

Different encodings are handled automagically.

REQUIREMENTS:
DrRacket, or any other Racket implementation.
(It should be easy to modify the programs for any other Lisp you like to use.)


USAGE:
The .zip-files contain directories of compiled Windows 11 versions with necessary support.

For other systems, compile the files.

Run them as:
lovecraft-encode < input > output
lovecraft-decode < input > output

Or use Unix pipes:
echo "Iä! Iä! Cthulhu fhtagn!" | lovecraft-encode

(Remember!  Don't use named pipes - this program prefers nameless piping.)


EXAMPLE:
(Run in a Linux system)

hg@nothung ~/Scheme/Lovecraftian $ echo "Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn" | ./lovecraft-encode > evil

hg@nothung ~/Scheme/Lovecraftian $ cat evil

((()(())(())(())()(())(()))((())(())(())()()(())(()))((())()()()()(())(()))(()()(())()(())(())(()))(()()()(())()(())(()))(()(())(())()()(())(()))(()()()()()(()))(()()(())(())()(())(()))((())(())(())()()(())(()))((())()()()()(())(()))(()(())(())(())()(())(()))((())(())(())()()(()))(()()()(())()(())(()))((())()()()()(())(()))((())(())(())()()(())(()))((())(())(())()(())(())(()))(()()()()()(()))(()()()(())()(())(()))((())()(())()()(())(()))((())()()(())(())(())(()))(()()(())(())()(())(()))((())(())(())()()(()))(()(())()()(())()(()))(()()()()()(()))((())()(())()(())(())(()))(()()()(())()(())(()))(()()(())(())()(())(()))((())()(())()(())(())(()))(()()()(())()(())(()))(()()(())()(())(())(()))((())(())()()()()(()))(()()()()()(()))(()()()(())()(())(()))(()(())(())()()(())(()))((())()()()()(())(()))(()(())(())(())()(())(()))((())(())(())()()(()))((())(())(())()(())(())(()))(()()(())(())()(())(()))((())(())(())()()(())(()))((())()(())(())()(())(()))(()()()()()(()))((())()()(())()(())(()))((())()(())()(())(())(()))(()()(())(())()(())(()))((())(())(())()()(())(()))(()(())(())(())()(())(()))((())(())(())()()(()))(()()()(())()(())(()))(()()()()(())()(())))

hg@nothung ~/Scheme/Lovecraftian $ ./lovecraft-decode < evil

Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn

hg@nothung ~/Scheme/Lovecraftian $


BUGS:
- version 0.0 can only encode a single line of text
- awkward usage as taking only standard input and standard output, should be able to have file names as arguments

