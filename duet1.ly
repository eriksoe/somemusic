				% Komponeret 26/10-19
				% Erik Søe Sørensen

%% Mål: Duet, 2 violiner, 3/4 takt.
%\include "event-listener.ly"

\version "2.18.2"
\header {
  title = "Duet"
  composer = "Erik Søe Sørensen"
}

rit = { \override TextSpanner.bound-details.left.text = \markup { "rit." } }

PartOne = {
      %% "A"
      %% I ii V I
      <<
      	\context Voice = "Violin 1" \relative {|e'4\mf d c | f8( e d2)}
	\context Voice = "Violin 2" \relative {|c2. | a4 b c }
      >>
      <<
	\context Voice = "Violin 1" \relative {|b4 c d | g,2.}
	\context Voice = "Violin 2" \relative {|d2. | b8( a g4) f  }
      >>
      %% I ii V I
      <<
      	\context Voice = "Violin 1" \relative {|e'4 d c | d8( e f2)}
	\context Voice = "Violin 2" \relative {|c2. | a4 d b }
      >>
      <<
	\context Voice = "Violin 1" \relative {|g4 d' b | c2. }
	\context Voice = "Violin 2" \relative {|g,4. g8 g4 | c2. }
      >>

      %% "B"
      %% IV IV V vi(?)
      <<
      	\context Voice = "Violin 1" \relative {|a4^\p( c2) | c4 b a}
      	\context Voice = "Violin 2" \relative {|f4\f g a | f8 e d2}
      >>
      <<
       	\context Voice = "Violin 1" \relative {|a4( d2) | e2.}
       	\context Voice = "Violin 2" \relative {|d4 g d | e2.}
       >>

      %% "A"
      %% I ii V I
      <<
	\context Voice = "Violin 1" \relative {|e'4\mf d c | d8( e f2)}
	\context Voice = "Violin 2" \relative {|c2. | a4 d b }
      >>
      <<
	\context Voice = "Violin 1" \relative {|g'4 b, d | c2 r4 }
	\context Voice = "Violin 2" \relative {|g,4. g8 g4 | c2 r4 }
      >>
    }

PartTwo = {
  \repeat volta 2 {
      %% "C", rep.1
      %% I I I I
      <<
	\context Voice = "Violin 1" \relative {|r2. | c'4^\p c8( d e d)}
	\context Voice = "Violin 2" \relative {|c4_\p c8( d e d) | c4 r2 |}
      >>
      <<
	\context Voice = "Violin 1" \relative {|c'4 r2 | e4^\mf e8( f g f) }
	\context Voice = "Violin 2" \relative {|e4_\mf e8( f g f) | e4 r2}
      >>
    } \alternative {
      {%% I IV V I
      <<
	\context Voice = "Violin 1" \relative {|g'2 e4 | f2 d8( c8)}
	\context Voice = "Violin 2" \relative {|e2\<  c4 | f2\f f4\>|}
      >>
      <<
	\context Voice = "Violin 1" \relative {|b4 b b | c2 r4}  % Staccatto here?
	\context Voice = "Violin 2" \relative {|g4.\mf g8 g4 | e2 g,4}
      >>}

      {%% I IV V I
     <<
     	\context Voice = "Violin 1" \relative {|g'2 e4 | f2 d8 c8}
     	\context Voice = "Violin 2" \relative {|e8\< d8 c4 c4 | f8 g8 a4\f\> a4|}
     >>
     <<
     	\context Voice = "Violin 1" \relative {|b4 b b | c2 r4}
     	\context Voice = "Violin 2" \relative {|g8\mf d8 g4 g4 | e2 r4}
     >>}
      % <<
      % 	%\context Voice = "Violin 1" \relative {|g'4 g8 g8 f8 e8 | f4 f8 f d c}
      % 	\context Voice = "Violin 1" \relative {|g'4 g8 f8 e4 | f4 f8 d c4}
      % 	%\context Voice = "Violin 2" \relative {|c2 d8 e8| f2 f8 f8|}
      % 	\context Voice = "Violin 2" \relative {|c4. d8 c4| f2 f4|}
      % >>
      % <<
      % 	\context Voice = "Violin 1" \relative {|b4 b8 b8 b4 | c2.}
      % 	\context Voice = "Violin 2" \relative {|g4. d8 g4 | e2.}
      % >>}
      }
    }

PartThree = {
  \repeat volta 2 {
      %% "D"
      %% I ii vi I
      <<
	\context Voice = "Violin 1" \relative {|c'4 d e | e2 b4| a4 b c | c2 g4|}
	\context Voice = "Violin 2" \relative {|e8( g e2) | g8( b g2) | c,2 c4 | e8( g e2)|}
      >>
      } \alternative {
      %% vi I IV V
      <<
	\context Voice = "Violin 1" \relative {|a4 g f| g2 c,4 | a'4 g a | b2.}
	\context Voice = "Violin 2" \relative {|c8( d e4) d4 | c4 b a |f2 f4|g2.}
      >>

      %% I ii vi I
      % <<
      % 	\context Voice = "Violin 1" \relative {|c'4 d e | e2 b4| a4 b c | c2 g4|}
      % 	\context Voice = "Violin 2" \relative {|e8 g e2 | g8 b g2 | c,8 e c2 | e8 g e2|}
      % >>
      %% vi I IV V
      <<
	\context Voice = "Violin 1" \relative {|a4 g f| g2 c4| d4\staccato c\staccato b\staccato| c2.}
	\context Voice = "Violin 2" \relative {|c8( d e4) d4 | c8( d8 e2)|f4\staccato e\staccato d\staccato | c2. }
      >>
      }
    }

PartFourSynthesis = {
      %% "A"+"D" synthesis
      %% I I I I
      <<
     	\context Voice = "Violin 1" \relative {|e'4 d c|f8 e d2}
     	\context Voice = "Violin 2" \relative {|c4 c8( d e d) | d4 d8( e f e) |}
      >>
      <<
     	\context Voice = "Violin 1" \relative {|b4 c d | g,2.}
     	\context Voice = "Violin 2" \relative {|g,4 g8 g a b | c4 c8( d e d) |}
      >>
      %% I ii V I
      <<
      	\context Voice = "Violin 1" \relative {|e'4 d c | d8 e f2}
     	\context Voice = "Violin 2" \relative {|c4 c8( d e d) | d4 d8( e f e) |}
      >>
      <<
      	\context Voice = "Violin 1" \relative {|g4 d' b | c2. }
     	\context Voice = "Violin 2" \relative {|g,4 g8 g a b | c2 d8 e |}
      >>

      %% IV IV V vi(?)
      <<
      	\context Voice = "Violin 1" \relative {|a4 c8 d e f | f4 f8 e d c}
      	\context Voice = "Violin 2" \relative {|f4 g a | f8 e d2}
      >>
      <<
       	\context Voice = "Violin 1" \relative {|b4 c8 d e8. f16( | e2.)}
       	\context Voice = "Violin 2" \relative {|d4 g d | e2 d8 c}
       >>

      %% I ii V ii
      <<
      	\context Voice = "Violin 1" \relative {|e'4 d c | d8 e f2}
      	\context Voice = "Violin 2" \relative {|c2. | a4 d b }
      >>
      <<
      	\context Voice = "Violin 1" \relative {|g'4 b,\staccato( d\staccato) | c2 d4 }
      	\context Voice = "Violin 2" \relative {|g,2 b4 | a2 b4} % D.C
      >>
      %% Repetition, with PAC:
      %% I ii V I
      <<
      	\context Voice = "Violin 1" \relative {|e'4 d c | d8 e f2}
      	\context Voice = "Violin 2" \relative {|c2. | a4 d b }
      >>
      <<
      	\context Voice = "Violin 1" \relative {|g'4 b,\staccato( d\staccato) | c2.}
%      	\context Voice = "Violin 2" \relative {|g,2 b4 | c2.} % Replaced with decoration
      	\context Voice = "Violin 2" \relative {\rit
					       |g,4\startTextSpan g8 g a b | c2.\stopTextSpan |}
      >>
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

      \PartOne
      \break
      \PartTwo
      \break
      \PartThree
      \break
      \PartOne
      \break
      \PartFourSynthesis

}
  }
\score {
  \musik
  \layout { }
  }
%showLastLength = R1*48
\score {
  \new Staff \with {midiInstrument = #"violin"} {
    \unfoldRepeats \musik
  }
  \midi {
    midiInstrument = violin
    \tempo 4 = 120
  }
}
