@echo off
set IMAGdirectory=C:\GH\oomlout-IMAG\


set FOOTPRINTDirectory=C:\GH\oomlout-OOMP\OOMP-footprint\




REM
REM Generate Image Resolution Single
REM

	REM      Generate Directory Of Images
python %IMAGdirectory%IMAGPNGmain.py -di %FOOTPRINTDirectory% -re 87,90,140,420,600,1500 