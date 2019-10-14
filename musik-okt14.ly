				% Komponeret 14/10-19
				% Erik Søe Sørensen
				% Sat i D-dur for violin.

\version "2.18.2"
\header {
  title = "Stykke nr. 2"
  composer = "Erik Søe Sørensen"
}
\score {
  \transpose c d' {
    \time 3/4
    \key c \major
    {
      %% I IV I vii°
      g8 e c8 a8 f c8
      g8 e c8 b,8 d f8
      |
      %% I ii vii° I
      g8 e c8 a8 f d8
      b,8 d f8 e4.
      |
      %% vii° I ii I
      b,16 d f8 f c16 e g8 g
      d16 f a8 f g4.
      |
      %% I IV V I
      g8 e c8 a8 f c8
      b,16 d g8 g c4.
      \bar "|."
    }
  }
  \layout {}
  \midi {
    \tempo 4 = 80
  }
}
