%% Mål: Duet, 2 violiner.

%%\include "event-listener.ly"

\version "2.18.2"
\header {
  title = "Solo 1"
  composer = "Erik Søe Sørensen"
}

OneA = {
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

OneB = {
      %% I ? ? ?
      <<
      	\context Voice = "Violin 1" \relative {
	  | c4 g' e8. d16 e8. d16
	  | c8. b16 a8. g16 a8. b16 a8. g16
	  | c4 g' e8. d16 e8. f16
	  | g8. a16 g8. f16 g4 c,4
	}
      >>
      %% ??
      <<
      	\context Voice = "Violin 1" \relative {
%      	  | a8. g16 f8. e16 d4 f4
      	  | a8. g16 f8. e16 d8. c16 b8. g16
	  | g'8. f16 e8. d16 c8. b16 a8. f16
	  | f'8. e16 d8. c16 b4 e4
	  | c4 \tuplet 3/2 {c8 d c} b4 g'4
      	}
      >>

      <<
      	\context Voice = "Violin 1" \relative {
      	  | a8. g16 f8. e16 d8. c16 b8. g16
	  | g'8. f16 e8. d16 c8. b16 a8. f16
	  | f'8. e16 d8. c16 b4 e4
	  | c4 \tuplet 3/2 {c8 d c} b4 \tuplet 3/2 {b8 c b}
	  | a1
      	}
      >>

}

TwoA = {
      %% i ? ? ?
      <<
      	\context Voice = "Violin 1" \relative {
	  | a,4 e' c8. b16 c8. b16
	  | a2 gis2
	  | a4 e' c8. b16 c8. d16
	  | e8. f16 e8. d16 e4 a,4
	}
      >>

      <<
      	\context Voice = "Violin 1" \relative {
	  %%| f8. e16 d8. c16 b4 e4
	  %%| dis8. c16 b8. a16 g4 c4
	  | f8. e16 d8. c16 b4 g4
	  | e'8. d16 c8. b16 a4 f4
	  | d'8. c16 b8. a16 b4 c
	  | b2 e2
	}
      >>

          <<
      	\context Voice = "Violin 1" \relative {
	  %%| f8. e16 d8. c16 b4 e4
	  %%| dis8. c16 b8. a16 g4 c4
	  | f8. e16 d8. c16 b4 g4
	  | e'8. d16 c8. b16 a4 f4
	  | d'8. c16 b8. a16 b4 c
	  | b2 a4.~a16 gis16

	  | a1
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

    %% Major part:
    \OneA
    \OneB
    %% Minor part:
    \break
    \TwoA
  }
}

\score {
  \musik
  \layout { }
}
%showLastLength = R1*8
\score {
  \new Staff \with {midiInstrument = #"violin"} {
    \unfoldRepeats \musik
  }
  \midi {
    midiInstrument = violin
    \tempo 4 = 120
  }
}
