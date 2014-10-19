@echo off
set TPGEdirectory=C:\GH\oomlout-TPGE\

REM      Generating Index Files

	REM PictureIndex
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-pictureIndex.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\pictureIndex-wiki.html
	REM FamilyIndex
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-familyIndex.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\familyIndex-wiki.html


REM     Generating all part pages
python %TPGEdirectory%TPGEmain.py -rm A -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\ -tm template/OOMP-template.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%%%%ID%%%%\%%%%ID%%%%-wiki.html


C:\GH\oomlout-WIKB\WIKB-uploadOOMP.bat