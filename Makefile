
all: opt-uml

build-uml:
	plantuml -tsvg docs/*.puml -o ./cache/

opt-uml: build-uml
	mkdir -p docs/out/
	svgo -i ./docs/cache/* -o ./docs/out/ 

dev-uml:
	watch -n 0.5 make opt-uml