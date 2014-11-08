@echo on
set TPGEdirectory=C:\GH\oomlout-TPGE\


set OOBBpartsDirectory=C:\GH\oomlout-OOMP\parts\


REM
REM     Generating all part pages
REM

python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html

REM 
REM 	Markdown Pages
REM

python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm template/OOMP-template.tmpl.md -of %OOBBpartsDirectory%%%%%ID%%%%\README.md


REM
REM      Generating Index Files
REM

set extra=allParts
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html
	
	REM PictureIndex
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-pictureIndex.tmpl.html -of %OOBBpartsDirectory%pictureIndex-wiki.html
	REM FamilyIndex
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-familyIndex.tmpl.html -of %OOBBpartsDirectory%familyIndex-wiki.html
	REM COmpletness Test
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-completenessIndex.tmpl.html -of %OOBBpartsDirectory%completenessIndex-wiki.html


REM
REM		Generating Info Files
REM


set extra=idDescribed
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html
	
set extra=idCodes
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html
	
set extra=tagsDescribed
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html
	
set extra=resources
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html
		
