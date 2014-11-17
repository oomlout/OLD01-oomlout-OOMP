@echo on
set TPGEdirectory=C:\GH\oomlout-TPGE\

set OOBBpartsDirectory=C:\GH\oomlout-OOMP\parts\

set extra=newItem
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\OOMP-%extra%.Source.oomp -tm template/OOMP-%extra%.tmpl.oomp -of %OOBBpartsDirectory%AAAA!!0,newOOMP.oompType,oompType!!-!!0,newOOMP.oompSize,oompSize!!-!!0,newOOMP.oompColor,oompColor!!-!!0,newOOMP.oompDesc,oompDesc!!-!!0,newOOMP.oompIndex,oompIndex!!\!!0,newOOMP.oompType,oompType!!-!!0,newOOMP.oompSize,oompSize!!-!!0,newOOMP.oompColor,oompColor!!-!!0,newOOMP.oompDesc,oompDesc!!-!!0,newOOMP.oompIndex,oompIndex!!.oomp
	


