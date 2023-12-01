tp @s 0 0 0 0 0
execute if score @s reborn.posx matches 1.. run function hardcore_reborn:scoretp/x
execute if score @s reborn.posx matches ..-1 run function hardcore_reborn:scoretp/nx
execute if score @s reborn.posy matches 1.. run function hardcore_reborn:scoretp/y
execute if score @s reborn.posy matches ..-1 run function hardcore_reborn:scoretp/ny
execute if score @s reborn.posz matches 1.. run function hardcore_reborn:scoretp/z
execute if score @s reborn.posz matches ..-1 run function hardcore_reborn:scoretp/nz
execute if score @s reborn.roty matches 1.. run function hardcore_reborn:scoretp/ry
execute if score @s reborn.roty matches ..-1 run function hardcore_reborn:scoretp/rny
execute if score @s reborn.rotx matches 1.. run function hardcore_reborn:scoretp/rx
execute if score @s reborn.rotx matches ..-1 run function hardcore_reborn:scoretp/rnx