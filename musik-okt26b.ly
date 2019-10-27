				% Komponeret 26/10-19
				% Erik Søe Sørensen

%% Mål: Duet, 2 violiner, 3/4 takt.

\version "2.18.2"
\header {
  title = "Duet"
  composer = "Erik Søe Sørensen"
}
musik = \transpose c d' {
    \time 3/4
    \key c \major
    {
      <<
	%% Create voices:
	\context Voice = "Violin 1" {\voiceOne}
	\context Voice = "Violin 2" {\voiceTwo}
      >>
      %% "A"
      %% I ii V I
      <<
      	\context Voice = "Violin 1" \relative {|e'4 d c | f8 e d2}
	\context Voice = "Violin 2" \relative {|c2. | a4 b c }
      >>
      <<
	\context Voice = "Violin 1" \relative {|b4 c d | g,2.}
	\context Voice = "Violin 2" \relative {|d2. | b8 a g4 f  }
      >>
      %% I ii V I
      <<
      	\context Voice = "Violin 1" \relative {|e'4 d c | d8 e f2}
	\context Voice = "Violin 2" \relative {|c2. | a4 d b }
      >>
      <<
	\context Voice = "Violin 1" \relative {|g4 d' b | c2. }
	\context Voice = "Violin 2" \relative {|g,4. g8 g4 | c2. }
      >>

      %% "B"
      %% IV IV ii vi(?)
      <<
      	\context Voice = "Violin 1" \relative {|a2. | c4 b a}
      	\context Voice = "Violin 2" \relative {|f4 g a | f8 e d2}
      >>
      <<
       	\context Voice = "Violin 1" \relative {|a4 d2 | e2.}
       	\context Voice = "Violin 2" \relative {|d4 g d | e2.}
       >>

      %% "A"
      %% I ii V I
      <<
      	\context Voice = "Violin 1" \relative {|e'4 d c | d8 e f2}
	\context Voice = "Violin 2" \relative {|c2. | a4 d b }
      >>
      <<
	\context Voice = "Violin 1" \relative {|g'4 b, d | c2. }
	\context Voice = "Violin 2" \relative {|g,4. g8 g4 | c2. }
      >>

      %% I I I I
      <<
	\context Voice = "Violin 1" \relative {|s2. | c'4 c8 d e d}
      	\context Voice = "Violin 2" \relative {|c4 c8 d e d | c4 s2 |}
      >>
      <<
	\context Voice = "Violin 1" \relative {|c'4 s2 | e4 e8 f g f }
      	\context Voice = "Violin 2" \relative {|e4 e8 f g f | e4 s2}
      >>

      %% vi
      <<
	\context Voice = "Violin 1" \relative {|g'2 e4 | f2 d8 c8}
      	%\context Voice = "Violin 2" \relative {|a4}
      >>
      <<
	\context Voice = "Violin 1" \relative {|b4 b b | c2.}
      	%\context Voice = "Violin 2" \relative {|a4}
      >>

}
  }
\score {
  \musik
  \layout { }
  }
showLastLength = R1*5
\score {
  \new Staff \with {midiInstrument = #"violin"} {
    \unfoldRepeats \musik
  }
  \midi {
    midiInstrument = violin
    \tempo 4 = 120
  }
}
