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
