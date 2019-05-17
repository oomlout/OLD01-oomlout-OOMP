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

OOMP-generate-Redirects.bat

REM 
REM 	Individual Part Pages
REM

OOMP-generate-PartsPages.bat

REM
REM     Generating all project pages
REM

OOMP-generate-ProjectPages.bat

REM
REM      Generating Index Files
REM 

OOMP-generate-IndexPages.bat

REM
REM		Generating Info Files
REM


OOMP-generateiInfoFiles.bat


REM
REM     Generating all SPEC LABels
REM

OOMP-generate-Labels.bat
