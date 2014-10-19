@echo off
set TPGEdirectory=C:\GH\oomlout-TPGE\



REM  python TPGEmain.py WHSN c:/GH/oomlout-WHSN/ 

REM python TPGEmain.py CRHO-I01-B-06PI-01 C:\KB\oomp-scripts\oomp-gen\parts\%%ID%%\ .oomp C:\KB\oomp-scripts\oomp-gen\parts/ template/OOMP-template.tmpl %%ID%%.html


echo on
REM      Generating Index Files
echo off
REM PictureIndex
REM python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-pictureIndex.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\pictureIndex-wiki.html

REM FamilyIndex
python %TPGEdirectory%TPGEmain.py -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\,C:\GH\oomlout-OOMP\ -tm template/OOMP-familyIndex.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\familyIndex-wiki.html

echo on
REM     Generating all part pages
echo off
REM python %TPGEdirectory%TPGEmain.py -rm A -bd C:\KB\oomp-scripts\oomp-gen\parts\ -xa .oomp -ex C:\KB\oomp-scripts\oomp-gen\parts\ -tm template/OOMP-template.tmpl.html -of C:\KB\oomp-scripts\oomp-gen\parts\%%%%ID%%%%\%%%%ID%%%%-wiki.html


