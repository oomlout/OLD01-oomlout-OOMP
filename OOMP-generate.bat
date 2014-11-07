@echo on
set TPGEdirectory=C:\GH\oomlout-TPGE\



REM
REM     Generating all part pages
REM

python %TPGEdirectory%TPGEmain.py -rm A -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-template.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%%%%ID%%%%\%%%%ID%%%%-wiki.html




REM
REM      Generating Index Files
REM

set extra=allParts
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html
	
	REM PictureIndex
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-pictureIndex.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\pictureIndex-wiki.html
	REM FamilyIndex
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-familyIndex.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\familyIndex-wiki.html


REM
REM		Generating Info Files
REM


set extra=idDescribed
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html
	
set extra=idCodes
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html
	
set extra=tagsDescribed
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html
	
set extra=resources
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-%extra%.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html
		
