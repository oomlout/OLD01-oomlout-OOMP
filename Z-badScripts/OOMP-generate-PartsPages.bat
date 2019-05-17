@echo on
set TPGEdirectory=C:\GH\oomlout-TPGE\
set REDIdirectory=C:\GH\oomlout-OOMP\redirects\

set OOBBpartsDirectory=C:\GH\oomlout-OOMP\parts\
set OOMPwikiDirectory=C:\GH\oomlout-OOMP.wiki\
set OOMPwikiDirectoryParts=C:\GH\oomlout-OOMP.wiki\parts\
set OOMPprojectsDirectory=C:\GH\oomlout-OOMP\projects\
set OOMPDirectory=C:\GH\oomlout-OOMP\
set INKSdirectory=C:\GH\oomlout-INKS\


REM 
REM 	In directory HTML Pages
REM

REM 222 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-templateStatic.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%.html


REM 
REM 	Github Wiki Markdown Pages
REM

python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-templateGithub.tmpl.md -of %OOMPwikiDirectoryParts%%%%%ID%%%%.md

REM 
REM 	Readme Markdown Pages
REM


python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-template.tmpl.md -of %OOBBpartsDirectory%%%%%ID%%%%\README.md

