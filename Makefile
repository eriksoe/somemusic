.PHONY: %.build %.build-and-play

%.build: %.ly
	lilypond $<

%.build-and-play: %.ly
	lilypond $< && timidity $*.midi

