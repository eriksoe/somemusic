				% Komponeret 13/10-19
				% Erik Søe Sørensen
				% Sat i D-dur for violin.

\version "2.18.2"
\header {
  title = "Stykke for violin"
  composer = "Erik Søe Sørensen"
}
\score {
\transpose c d' {
  \key c \major
  \relative {
    e8 c e4 g g
    a8 f a4 g2

    a8 f a4 g e
    d2 g2 
    
    e8 c e4 g g
    a8 c a4 g2
    
    a8 g f4 e8 g e4
    d4 b c2
    
    %% B part:
    d8 b d4 f f
    e8 c e4 g2

    d8 b d4 f d
    e4 g g2

    %% A-ish part:
    e8 c e4 g g
    a8 c a4 g2
    
    a8 g f4 e8 g e4
    d4 g c,2
  }
}
\layout {}
\midi {
  \tempo 4 = 80
}
}