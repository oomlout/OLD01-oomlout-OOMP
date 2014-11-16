@echo off
set WIKBdirectory=C:\GH\oomlout-WIKB\


echo on

REM
REM 	UPLOADING PART PAGES
REM

python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd C:\GH\oomlout-OOMP\parts\ -wb projects/oomp/part/ -fa '-wiki.html'




REM     UPLOADING Index Files

	REM AllParts
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\allParts-wiki.html -wb projects/oomp/allParts


	REM PictureIndex
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\pictureIndex-wiki.html -wb projects/oomp/pictureIndex

	REM FamilyIndex
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\familyIndex-wiki.html -wb projects/oomp/familyIndex 

	REm Completness Test
set extra=completenessIndex
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\%extra%-wiki.html -wb projects/oomp/%extra%


REM
REM		UPLOADING Info Files
REM

set extra=idDescribed
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\%extra%-wiki.html -wb projects/oomp/%extra%

set extra=idCodes
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\%extra%-wiki.html -wb projects/oomp/%extra%

set extra=tagsDescribed
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\%extra%-wiki.html -wb projects/oomp/%extra%

set extra=resources
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOMP\parts\%extra%-wiki.html -wb projects/oomp/%extra%







