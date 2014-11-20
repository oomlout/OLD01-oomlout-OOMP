@echo off
set IMAGdirectory=C:\GH\oomlout-IMAG\


set OOMPDirectory=C:\GH\oomlout-OOMP\




REM
REM Generate Image Resolution Single
REM

	REM      Generate Directory Of Images
python %IMAGdirectory%IMAGmain.py -di %OOMPDirectory% -re 87,140,420,1500 