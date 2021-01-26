# The Dataline File Format

<br>

> [!Version]
> __0.1.0__

## Introduction

The Dataline file format is for storing data on a temporal, spatial, or other
kind of numerically divided line, e.g., a timeline divided in seconds, a spatial
line divided in metres, a mass line divided in kilograms.

It is a simple open-source plaintext human readable and editable file format
with Unicode support.

Although designed as the compilation target for the Orfeo programming language,
Dataline is a flexible meta file format that can serve a wide range of other
uses since its measurement unit and data type are abstract and left for
applications to specify.

## Extension

Dataline files should use the `.dataline` extension.

## Syntax

Dataline's syntax is composed of two word types called a location and a datum,
and one phrase type — made from those words — called a point.

### Location

A location indicates a position in time, space, or any other numerical sequence
like a collection of masses. It is left for applications to specify which
measurement unit should be represented by locations, e.g., seconds, minutes,
hours, years, centimetres, metres, kilograms.

A location is a nonnegative number, i.e., an integer or a float with a value of
zero or more. Leading zeros are not permitted.

Following are five valid locations:

```
0
.203
0.666
1.014
12
```

### Datum

A datum is a piece of data.

It may represent any kind of information and be of any length. All Unicode
characters are supported except for vertical whitespaces, i.e. a datum cannot be
multi-line. The first and last characters must be non-whitespace characters;
horizontal whitespaces may be used everywhere else. In the event of an
application requiring a datum padded by whitespaces, a quoting character should
be used to encapsulate it.

Following are five valid datums:

```
415Hz
B♭4
🎺 + 🎷 = horns
This sentence is one datum
"     This datum is padded by whitespaces     "
```

> [!WARNING]
> The definition of a datum in Orfeo is much more restrictive than in Dataline.

### Point

A point consists of a location optionally followed by horizontal whitespace and
a datum.

Following are three valid points:

```dataline
0
1.014 415Hz
12    🎺 + 🎷 = horns
```

## Grammar

Dataline files are made from none, one, or many points which must be organized
by location in ascending or descending order with allowed repetitions. Each
point must be on its own line and may optionally be padded by horizontal
whitespace. Empty lines are permitted.

### Symbol Guide

Following is a symbol guide for the Point Layouts and EBNF sections below:

```guide
? = zero or one
* = zero or more
+ = one or more
| = logical OR
( = group start
) = group end

<hws>   = horizontal whitespace
<nonws> = non-whitespace
```

### Point Layouts

Following are all eight possible point layouts:

```
<location>
<location> <hws>+
<hws>+ <location>
<hws>+ <location> <hws>+
<location> <hws>+ <datum>
<location> <hws>+ <datum> <hws>+
<hws>+ <location> <hws>+ <datum>
<hws>+ <location> <hws>+ <datum> <hws>+
```

### EBNF

Following is a custom Extended Backus-Naur Form for Dataline:

```EBNF
<Dataline_v0.1.0>  = <line>*
<line>             = <hws>* <point>? <hws>* <newline>
<point>            = <location> (<hws>+ <datum>)?
<location>         = <nonnegative-int> | <nonnegative-real>
<nonnegative-int>  = <zero> | <positive-int>
<nonnegative-real> = (<nonnegative-int> <period> <digit>*) |
                     (<period> <digit>+)
<positive-int>     = <nonzero-digit> <digit>*
<digit>            = <zero> | <nonzero-digit>
<datum>            = <word> (<hws>+ <word>)*
<word>             = <nonws>+
<newline>          = \n
<hws>              = \h
<nonws>            = \S
<zero>             = 0
<nonzero-digit>    = [1-9]
<period>           = .
```

## Examples

> [!NOTE]
> Commenting will be added in Dataline v0.2.0  
> For now, comments are presented in the form of a point with a datum prefixed
> by `#`

### To the Underworld!

```dataline
0 # Orpheus Ventures to the Underworld
0 # Locations represent seconds

  1 Sounds of birds and rustling leaves whistle in the air.
  5 Orpheus walks the forest in search of his love Eurydice.
 20 Upon finding her dead, he sings a melody of mourning.
 50 Orpheus walks the forest towards the Underworld.
 65 He sings a melody to charm the ferryman Charron.
 95 Sounds of oars pushing through water mark the crossing of the Styx.
110 Orpheus reaches the entrance to the Underworld.
115 He sings a melody to charm Cerberus.
145 Orpheus climbs down into the Underworld.
160 He sings a melody to charm Hades.
190 Hades revives Eurydice, but forbids Orpheus to look at her.
195 Orpheus climbs out of the Underworld and Eurydice follows.
210 Upon seeing the Sun, he turns to see her.
215 She disappears into nothingness.
```

### La Musica's Entrance

```dataline
0 # La Musica's Entrance in Monteverdi's L'Orfeo
0 # Locations represent beats

1     | R
2       R
2.5     D5  Dal
3       D5~ mio
4       D5
4.25    D5  per-
4.5     D5  mes-
4.875   D5  so a-
5     | D5  ma-
6       D5  to
7       R
7.5     D5  a
8       C5  noi
8.5     A4  ne
9     | B♭4 ve-
11      A4  gno
12    |
```

![Orfeo: La Musica's Entrance](assets/images/examples/Orfeo-La-Musica-Entrance.svg)

### Monteverdi's Life

```dataline
0 # Monteverdi's Life (excerpt)
0 # Locations represent years

1567 Monteverdi's Birth
1607 L'Orfeo's First Performance
1643 Monteverdi's Death
```

### Spectral Colours

```dataline
800 # Spectral Colours by Wavelengths
800 # Locations represent nanometres

740 Red
633 → Helium-neon laser
614 → Red (sRGB primary)

600 Orange

590 Yellow
589 → Sodium-vapor lamp
577 → Munsell 5Y for V = 10, C = 22
570 → Yellow (sRGB secondary)

564 Lime

560 Green
552 → Harlequin
549 → Green (sRGB primary)
503 → Munsell 5G for V = 4, C = 29

500 Cyan

490 Blue
488 → Azure (sRGB definition)
482 → Munsell 5B for V = 5, C = 20
466 → Blue (RGB primary)

446 Indigo

400 Violet
```

### A Game of Chess

```dataline
0 # Gioachino Greco vs Anonymous, 1620
0 # King's Gambit: Accepted. Becker Defense (C34) 1-0
0 # Locations represent move numbers

1  e4   e5
2  f4   exf4
3  Nf3  h6
4  Bc4  g5
5  h4   f6
6  Nxg5 fxg5
7  Qh5+ Ke7
8  Qf7+ Kd6
9  Qd5+ Ke7
10 Qe5#
```

## Copyright

Copyright (c) 2019-2020, [Pierre-Emmanuel Lévesque](https://github.com/pelevesque)

## License

MIT
