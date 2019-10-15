				% Komponeret 15/10-19
				% Erik Søe Sørensen

\version "2.18.2"
\header {
  title = "Stykke nr. 3"
  composer = "Erik Søe Sørensen"
}
%showLastLength = R1
\score {
  \transpose c d' {
    \time 4/4
    \key c \major
    {
      %% I IV I V
      g8 g e e
      a8 a f f
      g8 g e c
      d8 c b, g,

      %% I IV V/V V
      g8 g e e
      a8 a f f
      d8 d fis fis
      g8 d g4
      %%g8 d g8. f16
      %%g8 g16 d g4

      %% I ii I V
      e8 c e4
      f8 d f4
      e8 c e c
      d8 c b, g,

      %% I IV V I
      g8 g e e
      a8 a f f
      g8 d b g
      c'4
}
  }
  \layout {}
  \midi {
    \tempo 4 = 80
  }
}
