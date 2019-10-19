				% Komponeret 15/10-19
				% Erik Søe Sørensen

%% Mål: Optakt; variation i rytme.
%% Blanding af chord-only takter og passing/neighbour.

\version "2.18.2"
\header {
  title = "Stykke nr. 4"
  composer = "Erik Søe Sørensen"
}
%showLastLength = R1*3
\score {
  \transpose c d' {
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

      %% V ii? I I
      c8 | d8 c b, a, g,4 r8
      e8 | f8 e d c b,4 r8
      g8 | c'4 b8 a g c' c d
         | e4 d c r8

      %% V I 
      e8 | d g, g, g, g,4 r8
      f8 | e c c c c4 r8
      a8 | g c' b a g a g f
         | e4 d c4 r8 %c2. r8

      % %% I V IV V
      % g8 | c'4 c'8 b c'4 r8
      % c'8| b4 b8 a g4 r8
      % g8 | f8 a g f e4 d8 c8
      %    | e4 g c'

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
         | d4 g c' r8

    }
  }
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}
