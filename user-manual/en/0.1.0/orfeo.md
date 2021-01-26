# The Orfeo Language

<br>

> [!Version]
> __0.1.0__

## Introduction

> "Language shapes the way we think, and determines what we can think about."  
> Benjamin Lee Whorf

Orfeo is a high-level domain-specific meta programming language designed to musically
organize data for a temporal, spatial, or other kind of numerically divided
line, e.g., a timeline divided in seconds, a spatial line divided in metres,
a mass line divided in kilograms.

It aims to be a great tool for all types of musicians and does not require prior
computer programming knowledge. Orfeo programs, also known as scores, are
designed to look and feel like traditional music notation. The main difference
is that you organize data instead of musical notes.

Orfeo programs, also known as scores, are
designed to look and feel like traditional music notation, but instead of manipulating
musical notes you manipulate data whose type is defined on a per application basis.


The main difference
is that you organize data instead of musical notes.

In Orfeo,


The main difference is organizing data instead of musical notes.

data is deffined on a per application basis - give an example

- talk about how the data is abstract
daata can be note names, nummbers, configurations, etc… make your own applications
anything an application desires.


- rhythimcal accuracy - possible, and impossible.
Tuplet Expressions

---



storing data


The Orfeo programming language is designed to feel musical. It mimics western notation in many ways.
It is organized around Tuplet Expressions






Orfeo is a high-level domain-specific meta programming language for organizing data throughout time in a musical way. It aims to be a great tool for all types of musicians and does not require prior computer programming knowledge. Orfeo programs, also known as scores, are designed to look and feel like music notation. The main difference is organizing data instead of musical notes.

daata can be note names, nummbers, configurations, etc… make your own applications

anything an application desires.
The main difference are you will be organizing data instead of musical notes and you will have much greater rhythmic precision for doing so.

s higher degree of rhythimcal accuracy and abstract data.


Orfeo is designed to help you musically organize your data in a fun and powerful way.




Orfeo aims to be a great tool.

It is designed to help

A tool for musicians s

high level meta language
an abstract data manipulation language
what are notes in orfeo…

daata can be note names, nummbers, configurations, etc… make your own applications

Once an Orfeo score is completed

Orfeo program (or score)

– What kind of laanguage, what does it do. – aspects o the language

text-based humaan reaadable laanguage

orfeo code is compiled to Eco files that caan be used by applicaations in a variety of ways.

what orfeo does
organize data in a musical way
how orfeo works



Orfeo is 60 a la noir at its base. (by default)


> [!NOTE]
> A metronome is coming in v0.2.0!


## Extension

Orfeo files use the `.orfeo` extension.

## Syntax


### Datum

A datum is a piece of data. It is the _note_ in Orfeo.


Applications that use Orfeo define what a datum should be. (give example)

There are two types of
datum: a pure datum and a stringed datum.

#### Pure Datum

A Pure Datum can contain `English letters`, `numbers`, and the following characters `.`, `_`, `-`, `/`, `[`, `]`, `♮`, `♭`, `♯`.

Ex:








```orfeo
A
F♯
5
-10.5
440Hz
A/F♯
B♭[vol99-pan34]
```

#### Stringed Datum

A datum can be expressed as a `string` by being encapsulated with double-quotes `"`.
Doing so permits the `datum` to contain anything expect for double-quotes `"`.

Ex:

```orfeo
"abc"
"123"
"Monteverdi's L'Orfeo."
"[̲̅$̲̅(̲̅5)̲̅$̲̅]"
```

### Duration









## Tuplet Expression

The Tuplet Expression is the bread and butter of the Orfeo language. It defines none, one,
or many Datum (individual pieces of data) to be divided evenly over a given
Duration.

The Tuplet Expression is encapsulated by parenthesis. It starts by optionally
defiining

top tuplet expression, nested tuplet expressions




```orfeo
(:4 A B C D)
```

```dataline
0 A
1 B
2 C
3 D
4
```

## Duration







## Rhythm Flags and Dots

Rhythm flags and dots are used to created dotted rhythms just like in traditional western
musical scores. They can be attached to tuplet expressions and datum.

Flags and dots are sugars.

## Flags

Flags are indicated using a caret `^`. For tuplet expressions, they are placed
as a prefix to the opening parenthesis `^()`. For datum, they are placed as a
prefix `^a`. You may have as many flags as you wish, ex: `^^^a`. Each flag cuts
the duration by half. For example, three flags cuts the duration by eight.

```orfeo
  ^(a a a a) == (:0.5   a a a a)
^^^(a a a a) == (:0.125 a a a a)

          ^a == (:0.5 a)
        ^^^a == (:0.125 a)
```

## Dots

## The Comment Hack

Although commenting is not yet implemented in `Orfeo v0.1.0`, they are possible
through a hackish workaround. By using a `tuplet expression` with
a duration of `0`, we force Orfeo to ignore every datum and tuplet expression
found within that parent tuplet expression. This can be used to either create
a single line textual comment, a multiline textual comment, or to comment
out portions of code.  

1. Single Line Comment

```orfeo
(:0 "This is a textual comment.")
```

2. Multi Line Comment

```orfeo
(:0
  "Line 1 of a multiline textual comment."
  "Line 2 of a multiline textual comment."
  "Line 3 of a multiline textual comment."
)
```

3. Commenting Out Portions of Code

```orfeo
  (:0
    (:4/4 C D E F)
    (:4/4 C D E F)
    (:4/4 C D E F)
  )
```
> [!NOTE]
> Real commenting will be part of Orfeo v0.2.0

## Writing Rhythms

- This section shows how to write rhythms.
- when there is more than one way in orfeo, we show it

---
---
---

### Whole Note

![Whole Note](assets/images/orfeo_writing-rhythms/whole-note.svg)

```orfeo
(:4/4 C)
```

```dataline
0 C
4
```

### Half Note

![Half Note](assets/images/orfeo_writing-rhythms/half-note.svg)

```orfeo
(:4/4 C D)
```

```dataline
0 C
2 D
4
```

### Quarter Note

![Quarter Notes](assets/images/orfeo_writing-rhythms/quarter-note.svg)

```orfeo
(:4/4 C D E♭ F)
```

```dataline
0 C
1 D
2 E♭
3 F
4
```

### Eight Note

![Eight Notes](assets/images/orfeo_writing-rhythms/eight-note.svg)

```orfeo
(:4/4 (C D) (E♭ F) (G A♭) (B[♮] C))
```

```orfeo
(:4/4 C D E♭ F G A♭ B[♮] C)
```

```orfeo
(:4/4 ^C ^D ^E♭ ^F ^G ^A♭ ^B[♮] ^C)
```

```dataline
0   C
0.5 D
1   E♭
1.5 F
2   G
2.5 A♭
3   B[♮]
3.5 C
4
```

### Triplet

![Triplet](assets/images/orfeo_writing-rhythms/triplet.svg)

```orfeo
(:4/4 (:2 C D E♭) (F G A♭) (B[♮] C))
```

```orfeo
(:4/4 (:2 C D E♭) (F G A♭) ^B[♮] ^C)
```

```dataline
0     C
0.666 D
1.333 E♭
2     F
2.333 G
2.666 A♭
3     B[♮]
3.5   C
4
```

### Sixteenth Note

![Sixteenth Note](assets/images/orfeo_writing-rhythms/sixteenth-note.svg)

```orfeo
(:4/4 (C D E♭ F) (^G A♭ ^B[♮]) (C (B A♭)) ((G F) E♭))
```

```orfeo
(:4/4 (C D E♭ F) (^G A♭ ^B[♮]) (C ^B ^A♭) (^G ^F E♭))
```

```orfeo
(:4/4 ^^C ^^D ^^E♭ ^^F ^^G ^A♭ ^^B[♮] ^C5 ^^B ^^A♭ ^^G ^^F ^E♭)
```

```dataline
0    C
0.25 D
0.5  E♭
0.75 F
1    G
1.25 A♭
1.75 B[♮]
2    C
2.5  B
2.75 A♭
3    G
3.25 F
3.5  E♭
4
```

### Quintuplet

![Quintuplet](assets/images/orfeo_writing-rhythms/quintuplet.svg)

```orfeo
(:4/4 (C D E♭ F G) (:2 A♭ B[♮] C B A♭) (G F E♭ D C))
```

```dataline
0   C
0.2 D
0.4 E♭
0.6 F
0.8 G
1   A♭
1.4 B[♮]
1.8 C
2.2 B
2.6 A♭
3   G
3.2 F
3.4 E♭
3.6 D
3.8 C
4
```

### Dotted Rhythms

![Dotted Rhythms](assets/images/orfeo_writing-rhythms/dotted-rhythms.svg)

```orfeo
(:4/4 C.. ^^D (E♭. ^F) (^G A♭.))
```

```dataline
0    C
1.75 D
2    E♭
2.75 F
3    G
3.25 A♭
4
```

### Mixture

![Mixture](assets/images/orfeo_writing-rhythms/mixture.svg)

```orfeo
(:4/4 (C. ^(D E♭)) (F. ^G A♭) (^^B[♮] C..) C)
```

```orfeo
(:4/4 (C. ^^D ^^E♭) (F. ^G A♭) (^^B[♮] C..) C)
```

```dataline
0     C
0.75  D
0.875 E♭
1     F
1.5   G
1.666 A♭
2     B[♮]
2.125 C
3     C
4
```

### New Complexity

![New Complexity](assets/images/orfeo_writing-rhythms/new-complexity.svg)

```orfeo
(:4/4 (:5 C (:3 (D. ^E♭) F (G A♭) B[♮]) C))
```

```orfeo
(:4/4 C (:3 ^D. ^^E♭ F ^G ^A♭ B[♮]) C)
```

```dataline
0    C
0.8  D
1.25 E♭
1.4  F
2    G
2.3  A♭
2.6  B[♮]
3.2  C
4
```

## Examples

### La Musica’s Entrance

![Orfeo: La Musica's Entrance](assets/images/examples/Orfeo-La-Musica-Entrance.svg)

```orfeo
(:=
  (:4/2 _ (_ "D5 Dal") "D5~ mio" (D5 "D5 per-" "D5 mes-". ^"D5 so a-"))
  (:4/2 "D5 ma-" "D5 to" (_ "D5 a") ("C5 noi" "A4 ne"))
  (:4/2 "B♭4 ve-" "A4 gno")
)
```

```dataline
0    _
2    _
3    D5 Dal
4    D5~ mio
6    D5
6.5  D5 per-
7    D5 mes-
7.75 D5 so a-
8    D5 ma-
10   D5 to
12   _
13   D5 a
14   C5 noi
15   A4 ne
16   B♭4 ve-
20   A4 gno
24
```

### 16th-Note Shuffle

![Orfeo: La Musica's Entrance](assets/images/examples/16-note-shuffle.svg)

```orfeo
(:=
  (:4 )
  (:4 )
  (:4 )
)
```





## Copyright

Copyright (c) 2019-2020, [Pierre-Emmanuel Lévesque](https://github.com/pelevesque)

## License

MIT
