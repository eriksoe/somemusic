.PHONY: %.build %.build-and-play

%.build: %.ly
	lilypond $<

%.build-and-play: %.ly
	lilypond $< && timidity $*.midi


%.watch: %.ly
	inotifywait  -m -e CLOSE_WRITE "$<" | while read s; do ${MAKE} "$*.build-and-play" ; done

