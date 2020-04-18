# Curly-quotes

Curly-quotes is a simple utility that converts 'straight' "quotes" to
typographically pleasing ‘curly’ “quotes”.

## Installation

``` sh
make install
```

## Usage

Text is read from a file argument or from standard input, and the same
text is written to standard output, but with straight quotes converted
to curly quotes.

    $ cat example
    "It'll never work," she said.
    What's this 'emergency balloon' for?
    
    $ curly-quotes < example
    “It’ll never work,” she said.
    What’s this ‘emergency balloon’ for?
    
    $ curly-quotes example
    “It’ll never work,” she said.
    What’s this ‘emergency balloon’ for?

## Bugs and notes

Exceptions are made for some English words that begin with apostrophes.

  - 'Tis but a scratch\! → ’Tis but a scratch\!
  - That'll teach 'em\! → That’ll teach ’em\!

Two digit years are assumed to be contractions of four digit years,

  - Back in '76 → Back in ’76
  - The '80s → The ’80s

but this could mistake a two digit number at the beginning of single
quote pair:

  - Titled '99 Problems' → Titled ’99 Problems’

The program is not a perfect grammarian; fortunately its guesswork can
be overriden by manually curling the quotes in the input—those pass
through untouched.
