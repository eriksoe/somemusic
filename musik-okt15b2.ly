				% Komponeret 15-19/10-19
				% Erik Søe Sørensen

%% Mål: Optakt; variation i rytme.
%% Blanding af chord-only takter og passing/neighbour.

\version "2.18.2"
\header {
  title = "Stykke nr. 4b"
  composer = "Erik Søe Sørensen"
}
musik = \transpose c d' {
    \time 4/4
    \key c \major
    {
      \partial 8
      %% I V IV V
      %g4 | c'8 g e g c'
      g8 | c'4 c'8 b c'4 r8
      c'8| b4 b8 a g4 r8
      g8 | f8 a g f e4 c8 e8
         | g4 f8 e d4 r8

      %% I V IV-I ii?-I
      g8 | c'4 c'8 b c'4 r8
      c'8 | d' c' b a g4 r8
      g8 | f8 a g f e g f e
         | d4 b, c r8

      %% V ii? I I-V
      %% V ii? I I
      c8 | 
      \repeat volta 2 {
         | d8 c b, a, g,4 r8
      e8 | f8 e d c b,4 r8
      g8 | c'4 b8 a g c' c d
       }
      \alternative {
	{| e4 c d r8
      c8 | }
	{| e4 d c r8
      g8 | }
	}
      
      %% I V IV V
      %g8
         | c'4 c'8 b c'4 r8
      c'8| b4 b8 a g4 r8
      g8 | f8 a g f e4 c8 e8
         | g4 f8 e d4 r8

      %% I V IV-I V-I
      g8 | c'4 c'8 b c'4 r8
      c'8 | d' c' b a g4 r8
      g8 | f8 a g f e g f e
         | d4 g c' r8

    }
  }
\score {
  \musik
  \layout { }
  }
%showLastLength = R1*2
\score {
  \unfoldRepeats \musik
  \midi {
    \tempo 4 = 120
  }
}
