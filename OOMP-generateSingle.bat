@echo off
set TPGEdirectory=C:\GH\oomlout-TPGE\
set WIKBdirectory=C:\GH\oomlout-WIKB\
set id=CRHO-I01-B-03PI-01
set OOBBpartsDirectory=C:\GH\oomlout-OOMP\parts\


REM
REM Generate Part Page
REM

	REM      Generate Page
REM python %TPGEdirectory%TPGEmain.py -id %id% -bd %OOBBpartsDirectory%%id%\ -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-template.tmpl.html -of %OOBBpartsDirectory%%id%\%id%-wiki.html

	REM Upload Page
REM python %WIKBdirectory%WIKBmain.py -si oomlout -bd %OOBBpartsDirectory%%id%\%id%-wiki.html -wb projects/oomp/part/%id% 

REM
REM Generate Info Page
REM
set extra=completenessIndex
	REM      Generate Page
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm template/OOMP-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html
	
	REM Upload Page	
python %WIKBdirectory%WIKBmain.py -si oomlout -bd %OOBBpartsDirectory%%extra%-wiki.html -wb projects/oomp/%extra%