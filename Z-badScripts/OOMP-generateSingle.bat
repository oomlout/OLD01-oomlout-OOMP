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

REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-Redirect-template.tmpl.html -of %REDIdirectory%@@%%%%ID%%%%,oompPart.oompID,hexID@@\index.html

REM 
REM 	Redirect Pages Datasheet
REM 

REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectDatasheet-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%D\index.html
REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectDatasheet-template.tmpl.html -of %REDIdirectory%@@%%%%ID%%%%,oompPart.oompID,hexID@@D\index.html

REM 
REM 	Redirect Pages BOM
REM 

REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectBOM-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%BOM\index.html
REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-RedirectBOM-template.tmpl.html -of %REDIdirectory%@@%%%%ID%%%%,oompPart.oompID,hexID@@BOM\index.html



REM 
REM 	In directory HTML Pages
REM

REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-templateStatic.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%.html


REM 
REM 	Github Wiki Markdown Pages
REM

REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-templateGithub.tmpl.md -of %OOMPwikiDirectoryParts%%%%%ID%%%%.md

REM 
REM 	Readme Markdown Pages
REM


REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-template.tmpl.md -of %OOBBpartsDirectory%%%%%ID%%%%\README.md


REM
REM     Generating all project pages
REM

set extra=projectIndex
	REM All Parts
REM SS python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPwikiDirectory%%extra%.md

REM SS python %TPGEdirectory%TPGEmain.py -rm A -bd %OOMPprojectsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOBBpartsDirectory% -tm %OOMPdirectory%template/OOMP-projectPage.tmpl.md -of %OOMPwikiDirectory%\projects\%%%%ID%%%%.md




REM
REM      Generating Index Files
REM 

REM PictureIndex Github wiki

REM SS python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndex.tmpl.md -of %OOMPWikiDirectory%pictureIndexRaw.md

REM PictureIndex Type Github wiki

python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-typePictureIndex.tmpl.md -of %OOMPWikiDirectory%typePictureIndex%%%%ID%%%%.md -ui oompType.code
