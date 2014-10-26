@echo off
set WIKBdirectory=C:\GH\oomlout-WIKB\


echo on

REM     UPLOADING Index Files

	REM AllParts
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\allParts-wiki.html -wb projects/oomp/part/allParts


	REM PictureIndex
REM python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\pictureIndex-wiki.html -wb projects/oomp/part/pictureIndex

	REM FamilyIndex
REM python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\familyIndex-wiki.html -wb projects/oomp/part/familyIndex 



REM
REM		UPLOADING Info Files
REM

set extra=idDescribed
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html -wb projects/oomp/%extra%

set extra=idCodes
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html -wb projects/oomp/%extra%

set extra=tagsDescribed
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html -wb projects/oomp/%extra%

set extra=resources
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\%extra%-wiki.html -wb projects/oomp/%extra%



REM     Uploading all part pages
REM python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd C:\KB\oomp-scripts\oomp-gen\parts\ -wb projects/oomp/part/ -fa '-wiki.html'


