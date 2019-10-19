				% Komponeret 19/10-19
				% Erik Søe Sørensen

%% Mål: Punkteret rytme; variation i rytme. Længere noder visse steder.

\version "2.18.2"
\header {
  title = "Stykke nr. 5"
  composer = "Erik Søe Sørensen"
}
musik = \transpose c d' {
    \time 4/4
    \key c \major
    {
      %% I IV I V
      <<{
      | c4 g e8. d16 e8. d16
      | c4 g, a, b,
      | c4 g e8. d16 e8. f16
      | g4 a g f
    }
	{\chordmode {\transpose c c,, {c1 f c g}}}>>

      %% iii-vi IV
      <<{
      | g8. a16 b8. c'16
       c'8. b16 a8. g16 |
      | a8. g16 f8. e16
       e4 d |
    }
	{\chordmode {\transpose c c,, {e2:m a:m f1}}}>> % e:m f ?

      %% I V-I
      <<{
      | c4 g e8. d16 e8. d16
      %| g,4 a,8 b,8 c2
      %| g,4 g,16 a, b,8 c2 |
      | g,4 \tuplet 3/1 {g,4 a, b,} c2 |
      %| g,8. g,16 a,8. a,16 b,4 c2 |
    }
	{\chordmode {\transpose c c,, {c1/g g2 c2}}}>>
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
    \tempo 4 = 100
  }
}
