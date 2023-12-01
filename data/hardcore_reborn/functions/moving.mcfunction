execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] store result score @s reborn.newposx run data get entity @s Pos[0]
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] store result score @s reborn.newposy run data get entity @s Pos[1]
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] store result score @s reborn.newposz run data get entity @s Pos[2]
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players set @s reborn.moving 0
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.newposx -= @s reborn.posx
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.newposy -= @s reborn.posy
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.newposz -= @s reborn.posz
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.newposx *= @s reborn.newposx
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.newposy *= @s reborn.newposy
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.newposz *= @s reborn.newposz
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.moving += @s reborn.newposx
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.moving += @s reborn.newposy
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run scoreboard players operation @s reborn.moving += @s reborn.newposz
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] if score @s reborn.moving matches 256.. run function hardcore_reborn:scoretp/tp
execute as @e[type=player] at @s store result score @s reborn.posx run data get entity @s Pos[0]
execute as @e[type=player] at @s store result score @s reborn.posy run data get entity @s Pos[1]
execute as @e[type=player] at @s store result score @s reborn.posz run data get entity @s Pos[2]
execute as @e[type=player] at @s store result score @s reborn.roty run data get entity @s Rotation[0]
execute as @e[type=player] at @s store result score @s reborn.rotx run data get entity @s Rotation[1]
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] at @s store result score @s reborn.extra_reborn run fill ~-7 ~-5 ~-7 ~7 ~3 ~7 minecraft:air replace minecraft:conduit