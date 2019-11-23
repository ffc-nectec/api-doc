#!/bin/bash

## http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

java -jar plantuml.jar -charset UTF-8 -tsvg uml/*.plantuml
mv uml/*.svg data/image/
