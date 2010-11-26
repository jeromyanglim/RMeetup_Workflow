
all: output/Rmeetup_Workflow_fullscreen.pdf

	
output/Rmeetup_Workflow_fullscreen.pdf: Rmeetup_Workflow.tex
	mkdir -p output
	cp *.tex output
	cd output; texify --run-viewer --pdf Rmeetup_Workflow_fullscreen.tex 
