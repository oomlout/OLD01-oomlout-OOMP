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


REM
REM     Generating all project pages
REM

set extra=projectIndex
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPwikiDirectory%%extra%.md

python %TPGEdirectory%TPGEmain.py -rm A -bd %OOMPprojectsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOBBpartsDirectory% -tm %OOMPdirectory%template/OOMP-projectPage.tmpl.md -of %OOMPwikiDirectory%\projects\%%%%ID%%%%.md




REM
REM      Generating Index Files
REM 

REM PictureIndex Github wiki

python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndex.tmpl.md -of %OOMPWikiDirectory%pictureIndexRaw.md

REM PictureIndex Type Github wiki

python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndexType.tmpl.md -of %OOMPWikiDirectory%typePictureIndex%%%%ID%%%%.md -ui oompType.code


REM SEEEDIndex Github wiki

REM 333 python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-seeedIndex.tmpl.md -of %OOMPWikiDirectory%seeedIndex.md


REM PictureIndex Static HTML

python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndexStatic.tmpl.html -of %OOBBpartsDirectory%pictureIndex.html


REM PictureIndexAll
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndexAll.tmpl.html -of %OOBBpartsDirectory%pictureIndexAll-wiki.html

REM FamilyIndex
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-familyIndex.tmpl.md -of %OOMPwikiDirectory%familyIndex.md
	
	
	
	
	REM COmpletness Test
REM python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-completenessIndex.tmpl.html -of %OOBBpartsDirectory%completenessIndex-wiki.html

REM
REM		Generating Info Files
REM

set extra=resourceCheck
	REM Resource Check
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPwikiDirectory%%extra%.md


set extra=Home
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPWikiDirectory%%extra%.md

set extra=sidebar
	REM All Parts	
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPWikiDirectory%_Sidebar.md

set extra=idDescribed
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPWikiDirectory%%extra%.md
	
set extra=idCodes
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPWikiDirectory%%extra%.md
	
set extra=tagsDescribed
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPWikiDirectory%%extra%.md
	



set extra=resources
	REM All Parts	
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.md -of %OOMPWikiDirectory%%extra%.md



REM
REM     Generating all SPEC LABels
REM

set extra=label-inventory

 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.svg -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-%extra%.svg
 python %INKSdirectory%INKSmain.py -id inkscape.exe -bd %OOMPDirectory% -fi %extra%

set extra=label-front

 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.svg -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-%extra%.svg
 python %INKSdirectory%INKSmain.py -id inkscape.exe -bd %OOMPDirectory% -fi %extra%


set extra=label-spec

 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.svg -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-%extra%.svg
 python %INKSdirectory%INKSmain.py -id inkscape.exe -bd %OOMPDirectory% -fi %extra%


set extra=label-smdBox

 python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm %OOMPdirectory%template/OOMP-%extra%.tmpl.svg -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-%extra%.svg
 python %INKSdirectory%INKSmain.py -id inkscape.exe -bd %OOMPDirectory% -fi %extra%
