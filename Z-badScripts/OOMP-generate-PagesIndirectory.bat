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
REM 	Redirect Pages
REM 

REM 111 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
REM 111 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-Redirect-template.tmpl.html -of %REDIdirectory%@@%%%%ID%%%%,oompPart.oompID,hexID@@\index.html

REM 
REM 	Redirect Pages Datasheet
REM 

python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectDatasheet-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%D\index.html
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectDatasheet-template.tmpl.html -of %REDIdirectory%@@%%%%ID%%%%,oompPart.oompID,hexID@@D\index.html

REM 
REM 	Redirect Pages BOM
REM 

REM 111 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectBOM-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%BOM\index.html
REM 111 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectBOM-template.tmpl.html -of %REDIdirectory%@@%%%%ID%%%%,oompPart.oompID,hexID@@BOM\index.html
