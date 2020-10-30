%% Mål: Duet, 2 violiner.

%%\include "event-listener.ly"

\version "2.18.2"
\header {
  title = "Solo 1"
  composer = "Erik Søe Sørensen"
}

PartOne = {
      %% I I I V
      <<
      	\context Voice = "Violin 1" \relative {
	  | c4 g' e8. d16 e8. d16
	  | c4 g a b
	  | c4 g' e8. d16 e8. f16
	  | g4 a g f
	}
      >>
      %% iii-vi IV
      <<
      	\context Voice = "Violin 1" \relative {
      	  | g8. a16 b8. c16
      	  c8. b16 a8. g16 |
      	  | a8. g16 f8. e16
      	  e4 d |
      	}
      >>

      %% I V-I
      <<
      	\context Voice = "Violin 1" \relative {
      	  | c4 g' e8. d16 e8. d16
      	  | g,4 \tuplet 3/1 {g4 a b} c2 |
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
    >>

    \PartOne
  }
}

\score {
  \musik
  \layout { }
}
%showLastLength = R1*3
\score {
  \new Staff \with {midiInstrument = #"violin"} {
    \unfoldRepeats \musik
  }
  \midi {
    midiInstrument = violin
    \tempo 4 = 120
  }
}
