@echo off
REM Possibly need to change PYTHON3 in PYTHON.
REM Make Sure the drawio.exe is in the PATH-variable
python3 draw-io-export.py -d generatedImages -s 2 -f PNG "Diagrams.drawio" 2> nul

