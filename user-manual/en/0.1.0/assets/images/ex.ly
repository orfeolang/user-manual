%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Writing Rhythms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Whole Note
\score{
  \relative c'
  {
    \numericTimeSignature
    c1
  }
  \layout{}
}

% Half Note
\score{
  \relative c'
  {
    \numericTimeSignature
    c2 d
  }
  \layout{}
}

% Quarter Note
\score{
  \relative c'
  {
    \numericTimeSignature
    c4 d ees f
  }
  \layout{}
}

% Eight Note
\score{
  \relative c'
  {
    \numericTimeSignature
    c8 d ees f g aes b? c
  }
  \layout{}
}

% Triplet
\score{
  \relative c'
  {
    \numericTimeSignature
    \tuplet 3/2 { c4 d ees }
    \tuplet 3/2 { f8 g aes }
    b? c
  }
  \layout{}
}

% Sixteenth Note
\score{
  \relative c'
  {
    \numericTimeSignature
    c16 d ees f
    g16 aes8 b?16
    c8 b16 aes
    g f ees8
  }
  \layout{}
}

% Quintuplet
\score{
  \relative c'
  {
    \numericTimeSignature
    \tuplet 5/4 { c16 d ees f g }
    \tuplet 5/4 { aes8 b? c16~ c16 b8 aes }
    \tuplet 5/4 { g16 f ees d c }
  }
  \layout{}
}

% Dotted Rhythms
\score{
  \relative c'
  {
    \numericTimeSignature
    c4.. d16 ees8. f16 g aes8.
  }
  \layout{}
}

% Mixture
\score{
  \relative c'
  {
    \numericTimeSignature
    c8. d32 ees
    \tuplet 3/2 { f8. g16 aes8 }
    b?32 c8..
    c4
  }
  \layout{}
}

% New Complexity
\score{
  \relative c'
  {
    \numericTimeSignature
    \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \tuplet 5/4 {
      c4
      \tuplet 4/3 {
        d8. ees16 f4 g8 aes b?4
      }
      c4
    }
  }
  \layout{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Orfeo Examples
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 16th-Note Shuffle
\score{
  {
    \new DrumStaff
    \drummode {
      \stemUp
      \numericTimeSignature
      \override TupletBracket.bracket-visibility = ##f

      \tuplet 3/2 {
        <bd cymr>16[
        \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1
        r
        \set stemLeftBeamCount = #1
        cymr
      }
      \tuplet 3/2 {
        \set stemRightBeamCount = #1
        cymr
        \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1
        r
        <bd cymr>]
      }

      \tuplet 3/2 {
        <sn cymr>[
        \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1
        r
        \set stemLeftBeamCount = #1
        cymr
      }
      \tuplet 3/2 {
        \set stemRightBeamCount = #1
        <bd cymr>
        \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1
        r
        cymr]
      }

      \tuplet 3/2 {
        cymr[
        \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1
        r
        \set stemLeftBeamCount = #1
        <bd cymr>
      }
      \tuplet 3/2 {
        \set stemRightBeamCount = #1
        cymr
        \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1
        r
        <bd cymr>]
      }

      \tuplet 3/2 {
        <sn cymr>[
        \set stemLeftBeamCount = #1
        \set stemRightBeamCount = #1
        r
        \set stemLeftBeamCount = #1
        cymr
      }
      \tuplet 3/2 {
        cymr
        cymr
        cymr]
      }
    }
  }
  \layout{}
}
