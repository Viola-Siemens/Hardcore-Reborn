execute as @e[type=player,gamemode=spectator,tag=!BannedPlayer,tag=!Administrator] at @s run tag @s add RebornPlayer
execute as @e[type=player,tag=RebornPlayer] run scoreboard players add @s reborn.death 1
execute as @e[type=player,tag=RebornPlayer] unless score @s reborn.death matches ..3 run tag @s add BannedPlayer
execute as @e[type=player,tag=RebornPlayer,tag=!BannedPlayer] run gamemode survival
execute as @e[type=player,tag=RebornPlayer,tag=!CuredPlayer] if score @s reborn.death matches ..1 run tellraw @s {"text":"一阵可怕的寒意直透脊椎，周围越来越冷","color":"dark_red"}
execute as @e[type=player,tag=RebornPlayer,tag=!CuredPlayer] if score @s reborn.death matches 2 run tellraw @s {"text":"头脑变得麻木，你感到强烈的恐惧和不安","color":"dark_red"}
execute as @e[type=player,tag=RebornPlayer,tag=!CuredPlayer] if score @s reborn.death matches 3 run tellraw @s {"text":"尖叫声在你周围回响，疯狂的山脉向你侵袭","color":"dark_red"}
execute as @e[type=player,tag=RebornPlayer,tag=CuredPlayer] run tag @s remove CuredPlayer
execute as @e[type=player,tag=RebornPlayer] unless score @s reborn.death matches ..3 run tellraw @s {"text":"痛苦结束了……","color":"dark_red"}
execute as @e[type=player,tag=RebornPlayer] at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~
execute as @e[type=player,tag=RebornPlayer] at @s run playsound minecraft:entity.warden.agitated ambient @s ~ ~ ~
execute as @e[type=player,tag=RebornPlayer] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~
execute as @e[type=player,tag=RebornPlayer] at @s run tag @s remove RebornPlayer
# execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run tp @s 0 -64 0
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run effect give @s minecraft:darkness 1
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] run effect give @s minecraft:nausea 5
execute as @e[type=player,tag=BannedPlayer,tag=!Administrator] if score @s reborn.extra_reborn matches 1.. run function hardcore_reborn:try_cure