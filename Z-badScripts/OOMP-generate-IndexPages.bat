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
REM      Generating Index Files
REM 

REM PictureIndex Github wiki

python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndex.tmpl.md -of %OOMPWikiDirectory%pictureIndexRaw.md

REM PictureIndex Type Github wiki

python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndexType.tmpl.md -of %OOMPWikiDirectory%typePictureIndex%%%%ID%%%%.md -ui oompType.code


REM SEEEDIndex Github wiki

REM 333 python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-seeedIndex.tmpl.md -of %OOMPWikiDirectory%seeedIndex.md


REM PictureIndex Static HTML

REM python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndexStatic.tmpl.html -of %OOBBpartsDirectory%pictureIndex.html


REM PictureIndexAll
REM python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-pictureIndexAll.tmpl.html -of %OOBBpartsDirectory%pictureIndexAll-wiki.html

REM FamilyIndex
REM python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-familyIndex.tmpl.md -of %OOMPwikiDirectory%familyIndex.md
	
	
	
	
	REM COmpletness Test
REM python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-completenessIndex.tmpl.html -of %OOBBpartsDirectory%completenessIndex-wiki.html

