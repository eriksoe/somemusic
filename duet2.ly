%% Mål: Duet, 2 violiner.

%%\include "event-listener.ly"

\version "2.18.2"
\header {
  title = "Duet nr. 2"
  composer = "Erik Søe Sørensen"
}

PartOne = {
      %% I I I V
      <<
      	\context Voice = "Violin 1" \relative {
	  | c'4 g' e8. d16 e8. d16
	  | c2 b2
	  | c4 g' e8. d16 e8. f16
	  | g4 r2.
	}
	\context Voice = "Violin 2" \relative {
	  | c2 e2
	  | c4 g a b
	  | c2 e2
	  | g4 a g f
	}
	%%{\chordmode {\transpose c c,, {c1 c1 c2 f2 g1}}}
      >>
      %% iii-vi IV
      <<
      	\context Voice = "Violin 1" \relative {
      	  g'2 a2 | f2 d2
      	}
      	\context Voice = "Violin 2" \relative {
      	  | g8. a16 b8. c16
      	  c8. b16 a8. g16 |
      	  | a8. g16 f8. e16
      	  e4 d |
      	}
      >>

      %% I V-I
      <<
      	\context Voice = "Violin 1" \relative {
      	  | c'4 g' e8. d16 e8. d16
      	  | g,4 \tuplet 3/1 {g4 a b} c2 |
      	}
      	\context Voice = "Violin 2" \relative {
      	  c2 e  | b4 \tuplet 3/1 {d4 d d} c2
      	}
      >>

}

musik = \transpose c d' {
  \time 4/4
  \key c \major
  {
    <<
      %% Create voices:
      \context Voice = "Violin 1" {\voiceOne}
      \context Voice = "Violin 2" {\voiceTwo}
    >>

    \PartOne
    %%\break
  }
}

\score {
  \musik
  \layout { }
}
%showLastLength = R1*2
\score {
  \new Staff \with {midiInstrument = #"violin"} {
    \unfoldRepeats \musik
  }
  \midi {
    midiInstrument = violin
    \tempo 4 = 120
  }
}
