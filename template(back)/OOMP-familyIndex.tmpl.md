Families:
==============================  
Within the OOMP ID system there are also families of components. These are common components available in either a variety of colours or values.    Each family shares four common elements, either:    
TYPE - SIZE - COLOR - INDEX
			    (ex.    
			__CRHO-I01-B-###-01__ - 2.54mm XX Pin Black Crimp Housing 
			    __ RESE-W04-X-###-01__ - 1/4 Watt XXXX Ohm Resistor)    
			Or:    
			__TYPE - SIZE - DESCRPTION - INDEX__
			    (ex. 
			    __LEDS-10-#-FROS-01__ - 10 mm Frosted XXX LED 
			    __WIRS-G28-#-STAN-01__ - 28 AWG XXX Stranded Wire)
			        
		Each family of components is assigned either a two or three charachter hexadecimal name space, then the following one to three charachters are used to describe the individual components value.    
(ex.    __CRHO-I01-B__ 
    Namespace: __DA##__ 
    
__CRHO-I01-B-04PI-01__ 2.54mm 4 Pin Black Crimp Housing HEX: __DA04__    
__CRHO-I01-B-08PI-01__ 2.54mm 8 Pin Black Crimp Housing HEX: __DA08__    
__CRHO-I01-B-10PI-01__ 2.54mm 10 Pin Black Crimp Housing HEX: __DA0A__    
__RESE-W04-X__    Namespace: __AE###__
    
__RESE-W04-X-O561-01__ 1/4 Watt 560 Ohm Resistor HEX: __AE561__
    
__RESE-W04-X-O103-01__ 1/4 Watt 10 k Ohm Resistor HEX: __AE103__)

::::
^^0,100,%%U%%^^
==%%U%%,oompFamily.familyName,familyName==!!%%U%%,oompFamily.familyName,familyName!! - __!!%%U%%,oompFamily.familyHexNameSpaceDisplay,familyHexNameSpaceDisplay!!__~~
------------------------------------------------------~~
| __.:Type:.__ <br /> !!%%U%%,oompFamily.familyType,familyType!! | __.:Size:.__ <br/>  !!%%U%%,oompFamily.familySize,familySize!! | __.:Color:.__ <br/> !!%%U%%,oompFamily.familyColor,familyColor!! | __.:Desc:.__ <br/> !!%%U%%,oompFamily.familyDesc,familyDesc!! | __.:Index:.__ <br/> !!%%U%%,oompFamily.familyIndex,familyIndex!! |~~
| ----- | ------ | ------ | ------ | ------ |~~  ~~  ~~
| &nbsp; | __Value__ | __ID <br/> Hex ID__ | __Name__ |~~
| ------ | --------- | ------------------- | -------- |~~
^^0,500,%%T%%^^??inFamily,!!%%T%%,oompPart.oompID,oompID!!,!!%%U%%,oompFamily.name,familyName!!??| [[http://oomlout.com/oomlout-OOMP/parts/!!%%T%%,oompPart.oompType,oompID!!/!!%%T%%,oompPart.oompType,oompID!!_87.jpg]] | [<<!!%%U%%,oompFamily.familyType,familyType!!,,@@!!%%T%%,oompPart.oompType,oompType!!,oompType.code,name@@<< <<!!%%U%%,oompFamily.familySize,familySize!!,,@@!!%%T%%,oompPart.oompSize,oompSize!!,oompSize.code,name@@<< <<!!%%U%%,oompFamily.familyColor,familyColor!!,,@@!!%%T%%,oompPart.oompColor,oompColor!!,oompColor.code,name@@<< <<!!%%U%%,oompFamily.familyDesc,familyDesc!!,,@@!!%%T%%,oompPart.oompDesc,oompDesc!!,oompDesc.code,name@@<<  <<!!%%U%%,oompFamily.familyIndex,familyIndex!!,,@@!!%%T%%,oompPart.oompIndex,oompIndex!!,oompIndex.code,name@@<<](https://github.com/oomlout/oomlout-OOMP/wiki/!!%%T%%,oompPart.oompType,oompID!!) | [!!%%T%%,oompPart.oompType,oompID!! <br/> __!!%%T%%,oompPart.oompType,hexID!!__](https://github.com/oomlout/oomlout-OOMP/wiki/!!%%T%%,oompPart.oompType,oompID!!) | [__!!%%T%%,oompPart.oompType,name!!__](https://github.com/oomlout/oomlout-OOMP/wiki/!!%%T%%,oompPart.oompType,oompID!!) | ~~""    &nbsp;    &nbsp;""~~ ~~
;;;;
