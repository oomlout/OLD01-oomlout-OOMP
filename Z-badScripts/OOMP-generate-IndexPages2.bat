@echo on
set TPGEdirectory=C:\GH\oomlout-TPGE\
set REDIdirectory=C:\GH\oomlout-OOMP\redirects\

set OOBBpartsDirectory=C:\GH\oomlout-OOMP\parts\
set OOMPwikiDirectory=C:\GH\oomlout-OOMP.wiki\
set OOMPwikiDirectoryParts=C:\GH\oomlout-OOMP.wiki\parts\
set OOMPprojectsDirectory=C:\GH\oomlout-OOMP\projects\
set OOMPDirectory=C:\GH\oomlout-OOMP\
set INKSdirectory=C:\GH\oomlout-INKS\



REM SimpleIndex Type Github wiki (to deal with long load time)

python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOMP\OOMP-helpers.oomp,%OOMPprojectsDirectory% -tm %OOMPdirectory%template/OOMP-quickIndexType.tmpl.md -of %OOMPWikiDirectory%typeQuickIndex%%%%ID%%%%.md -ui oompType.code


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

