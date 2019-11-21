%% Mål: Duet, 2 violiner.

%%\include "event-listener.ly"

\version "2.18.2"
\header {
  title = "Duet nr. 2"
  composer = "Erik Søe Sørensen"
}

PartPreOne = {
  <<
    \context Voice = "Violin 1" \relative {
      |c'4 r4 b4 r4
    }
    \context Voice = "Violin 2" \relative {
      |c4 g8. g16 a8. a16 b8. b16 |
    }
  >>
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
      	  c2 e  | b4 \tuplet 3/1 {b4 c d} c2
      	}
      >>

}

PartTwo= {
      <<
      	\context Voice = "Violin 1" \relative {
	  | c'4 g' e8. d16 e8. d16
	  | c8. c16 g8. g16 a4 b4
	  | c4 g' e8. d16 e8. f16
	  | g8. g16 a8. a16 g4 f4
	}
	\context Voice = "Violin 2" \relative {
	  | c4 b a g
	  | c2 d2
	  | c4 b a g
	  | g2 a2
	}
	%%{\chordmode {\transpose c c,, {c1 c1 c2 f2 g1}}}
      >>
      <<
	\context Voice = "Violin 1" \relative {
%	  g'8. f16 f8. e16 e8. d16% | e d c b
	}
	\context Voice = "Violin 2" \relative {
	}
      >>
  }

PartPreX = {
      << % I(4) V(4) I(2)
	\context Voice = "Violin 1" \relative {
	  %%|c'2 d8. c16 d8. c16
	  %%|r2. r8 d'8
	  | r1%c'4. c8 c4 b % <--
	  %%|c'2 c4 b4
	}
	\context Voice = "Violin 2" \relative {	
	  %%|c4 d8 e f4 g
	  %%|c4 g'8 e c4 g' % <--
	  %%|c4 c8 d c4 d
	  %% | c4 e8 g8 g2
	  | c2 e4 g
	}
      >>
  }


PartX = {
  %% Fifth progression:
  %% I IV vii iii
      <<
	\context Voice = "Violin 1" \relative {
	  |c'4 e g2
	  |f4 c a2
	  |b4 d f d
	  |e4 b g2
	}
	\context Voice = "Violin 2" \relative {
	  |g4 g8 e c2
	  |f4 f8 c a2
	  |d2 b4 d4
	  |e2. d4
	}
      >>
  
      %% vi ii V I
      <<
      	\context Voice = "Violin 1" \relative {
      	  |a4 c e2
      	  |d4 a f2
      	  |g4 b d b
      	  |c1
      	}
      	\context Voice = "Violin 2" \relative {
	  |e4 e8 c a2
	  |f4 f8 a d2
%%	  |d4 d8 b d4 d8 b %% Variation
%%	  |d4 b d b        %% Variation
	  |d2 b4 d
	  |c1
      	}
      >>
  }

PartY = {
  %% I ii vii I
  \repeat volta 2 {
    <<
      \context Voice = "Violin 1" \relative {
	% |g4 b d b
	% |c1

	|g'4 g8 e c2
	|d2 d4 c4
	|b4 d f d
      }
      \context Voice = "Violin 2" \relative {
	% |d2 b4 d
	% |c1

	|c2 c4 g'4
	|a4 a8 f d2

	| b2 b4 d4
      }
    >>
  } \alternative {
    <<
      \context Voice = "Violin 1" \relative {
	|c'2 g'2%4 g4
      }
      \context Voice = "Violin 2" \relative {
	| e4 e8 c g2
	%| e4 e8 f g2
      }
    >>
    <<
      \context Voice = "Violin 1" \relative {
	|c'1
      }
      \context Voice = "Violin 2" \relative {
	| c4 c8 g c2
      }
    >>
  }
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

    \PartPreOne
    \PartOne
    \break
    %\PartTwo
    \PartPreX
    \PartX
    \break
    \PartY
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
