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
