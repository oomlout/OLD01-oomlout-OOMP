@echo off
set TPGEdirectory=C:\GH\oomlout-TPGE\
set WIKBdirectory=C:\GH\oomlout-WIKB\
set id=CRHO-I01-B-02PI-01


REM
REM Generate Part Page
REM

	REM      Generate Page
REM python %TPGEdirectory%TPGEmain.py -id %id% -bd C:\KB\oomp-scripts\oomp-gen\parts\%id%\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-template.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%id%\%id%-wiki.html

	REM Upload Page
REM python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\%id%\%id%-wiki.html -wb projects/oomp/part/%id% 

REM
REM Generate Info Page
REM
set extra=familyIndex
	REM      Generate Page
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html
	
	REM Upload Page	
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html -wb projects/oomp/%extra%