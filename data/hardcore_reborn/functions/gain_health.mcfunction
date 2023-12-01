advancement revoke @s only hardcore_reborn:health_gain
execute as @s store result score @s reborn.max_health run attribute @s minecraft:generic.max_health base get
execute as @s store result score #random_fake_player reborn.random run random value 0..99
execute unless score #random_fake_player reborn.random matches 0..10 run scoreboard players set @s reborn.max_health 0
execute if score @s reborn.max_health matches 2 run attribute @s minecraft:generic.max_health base set 4
execute if score @s reborn.max_health matches 4 run attribute @s minecraft:generic.max_health base set 6
execute if score @s reborn.max_health matches 6 run attribute @s minecraft:generic.max_health base set 8
execute if score @s reborn.max_health matches 8 run attribute @s minecraft:generic.max_health base set 10
execute if score @s reborn.max_health matches 10 run attribute @s minecraft:generic.max_health base set 12
execute if score @s reborn.max_health matches 12 run attribute @s minecraft:generic.max_health base set 14
execute if score @s reborn.max_health matches 14 run attribute @s minecraft:generic.max_health base set 16
execute if score @s reborn.max_health matches 16 run attribute @s minecraft:generic.max_health base set 18
execute if score @s reborn.max_health matches 18 run attribute @s minecraft:generic.max_health base set 20