@echo off
set TPGEdirectory=C:\GH\oomlout-TPGE\
set WIKBdirectory=C:\GH\oomlout-WIKB\
set id=CRHO-I01-B-02PI-01

REM      Generate Page
python %TPGEdirectory%TPGEmain.py -id %id% -bd C:\KB\oomp-scripts\oomp-gen\parts\%id%\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-template.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%id%\%id%-wiki.html

REM Upload Page
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\%id%\%id%-wiki.html -wb projects/oomp/part/%id% 

