STEM := Rmeetup_Workflow
FULLSCREEN := $(STEM)_fullscreen
HANDOUT := $(STEM)_handout

fullscreen: 
	mkdir -p output
	cp *.tex images/* output
	cd output; texify --run-viewer --pdf $(FULLSCREEN).tex
	
handout: 	
	mkdir -p output
	cp *.tex images/* output
	cd output; texify --run-viewer --pdf $(HANDOUT).tex
	
clean:
	-rm output/*

backup:
	-mkdir backup
	-cp output/$(FULLSCREEN).pdf backup
	-cp output/$(HANDOUT).pdf backup  