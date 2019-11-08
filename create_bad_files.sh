#!/bin/bash

array=($(ls ImportFiles/))

array2=(webm ogv fnt shader tscn tres po anim atlastex cubemap curvetex font largetex material mesh meshlib meshtex multimesh oggstr phymat res sample scn shape stylebox tex theme translation vs world ogg png bmp hdr jpg jpeg svg svgz tga exr webp csv wav obj dae gltf glb escn fbx pmx image ttf otf stex tex3d texarr dds pkm gdnlib gdns gd gdc gde pvr)
new_name=""

for i in "${array[@]}"
do
    for j in "${array2[@]}"
    do
        new_name=$i"."$j
        cp "ImportFiles/"$i "ImportFiles/"$new_name
    done
done
