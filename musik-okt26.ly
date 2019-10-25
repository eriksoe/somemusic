				% Komponeret 26/10-19
				% Erik Søe Sørensen

\version "2.18.2"
\header {
  title = "Bacon"
  composer = "Erik Søe Sørensen"
}
musik = \transpose c d' {
    \time 4/4
    \key c \major
    {
      %% I V I ii-I
      | g2 e
      | d4 e d8 c a, g,
      | g4 g e2
      | d8 c d4 e2

      %% I V I ii-I
      | g2 e
      | d4 e d8 c a, g,
      | g4 a e2
      | d8 c d4 e2
      % | d8 c d8 a, c2

      | d8 c d a, c a, g, e,%f, e, d,
      | d8 c d a, c2
      | d8 c d a, c a, g, e,%f, e, d,
      | d4 g e4.

      f8
      | g2 e
      | d4 e d8 c a, g,
      | g4 g e2
      | d8 c d4 e2
      | g2 e

      | d4 e d8 c a, g,
      | g4 a e2
      %| d8 c d4 e2
      | d8 c d8 a, c2
}
  }
\score {
  \musik
  \layout { }
  }
%showLastLength = R1*3
\score {
  \unfoldRepeats \musik
  \midi {
    \tempo 4 = 120
  }
}
