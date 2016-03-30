Resources   
================================================== 


Basic   
---------------------------
| Resource | Filename | Description | 
| -------- | -------- | ----------- |  
| Datasheet | %%ID%%-datasheet.pdf | A manufacturer's datasheet is the primary source of info for most parts. Physical measurements like length, width, height, pitch are almost always listed along with a dimensional CAD drawing of the part. Electrical specifications describe the voltage and power a part is rated to handle so you know if it meets your needs. More complicated parts like chips also have detailed information about the function of each pin, and how the chip works | 
| OOMP XML | %%ID%%.oomp | An XML data file that describes each part is also linked in the datasheet section. This file, in the OOMP XML descriptor format, contains all the information we use to build the part webpage. We hope it will be useful for part management software, cool web applications, and other special sauce. | 

Images
--------------------------------------------

| Resource | Filename | Description | 
| -------- | -------- | ----------- |
|  Main Image| %%ID%%.jpg| Main image of a part.| 
|  Size Reference Image | %%ID%%_RE.jpg | Image of the part next to a commonly known object to give an idea of size. Currently using a sharpened pencil.|
|  Bottom Image | %%ID%%_BOTTOM.jpg | Image of the parts bottom, most useful for SMD components. | 
|  Additional Images | %%ID%%_##.jpg | Additional images of a part. Different angles etc. |

Diagram
--------------------------------------------------
| Resource | Filename | Description | 
| -------- | -------- | ----------- |
|  Breadboard Layout | %%ID%%-bbls.(.cdr, .pdf, .png, .svg) | Diagram to scale for how it looks plugged into a bradboard. Can be used to make easy to follow breadboard diagrams. |
|  Schematic Diagram | %%ID%%_schem.(.cdr, .pdf,  .png, .svg) | Diagram used for drawing a schematic in an illustrating program. All parts scaled to fit together on a 10x10 mm grid) |

3D
--------------------------

| Resource | Filename | Description |
| -------- | -------- | ----------- | 
|  3D Model | %%ID%%.skp | 3D model of the part in Sketchup Foramt |
|  3D Render | %%ID%%-3d.png | Rendering of the 3d model. |
|  3D Perspective (ISO) | %%ID%%_ISO.(pdf,png,svg) | Rendering of the 3d model (drafting style). |
|  3D Perspective (Top) | %%ID%%_TOP.(pdf,png,svg) | Rendering of the 3d model from the top (drafting style). |
|  3D Perspective (Front) | %%ID%%_FRONT.(pdf,png,svg) | Rendering of the 3d model from the front (drafting style). | 
|  3D Perspective (Right) | %%ID%%_RIGHT.(pdf,png,svg) | Rendering of the 3d model from the right (drafting style). |

Label
-----------------------------------

| Resource | Filename | Description | 
| -------- | -------- | ----------- |
|  Specification Label | %%ID%%-label-back.(.pdf, .svg) | Label with main specifications on it. |
|  Retail Label | %%ID%%-label-front.(.pdf, .svg) | Label with a rendering of the part, OOMP details, and links. |
|  Inventory Label | %%ID%%_inventory.(pdf,svg) | Label for keeping inventory, on a shelf. Includes name, OOMP details etc. |

@@bottomText,oompBasic.type,value@@