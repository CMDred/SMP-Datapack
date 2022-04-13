#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
function bcsmp:factions/create_faction

# get item thrower and make them join the faction and be the leader
execute as @e[type=item,tag=FactionPaper,distance=..1.5,limit=1] store result score #UUID0 Temp run data get entity @s Thrower[0]
execute as @e[type=item,tag=FactionPaper,distance=..1.5,limit=1] store result score #UUID1 Temp run data get entity @s Thrower[1]

data modify storage bcsmp:factions FactionToJoin set from storage bcsmp:factions NewFaction
execute as @a[distance=..10] run function bcsmp:factions/villager/check_if_owner
kill @e[type=item,tag=FactionPaper,distance=..1.5,limit=1]
kill @e[type=item,tag=FactionBanner,distance=..1.5,limit=1]

summon marker ~ ~ ~ {Tags:["FactionCenter"]}
data modify entity @e[type=marker,tag=FactionCenter,sort=nearest,limit=1] data.Faction set from storage bcsmp:factions NewFaction

execute if data entity @s Item{id:"minecraft:white_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 white_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:orange_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 orange_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:magenta_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 magenta_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:light_blue_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 light_blue_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:yellow_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 yellow_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:lime_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 lime_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:pink_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 pink_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:gray_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 gray_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:light_gray_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 light_gray_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:cyan_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 cyan_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:purple_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 purple_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:blue_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 blue_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:brown_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 brown_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:green_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 green_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:red_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 red_wool replace #minecraft:wool
execute if data entity @s Item{id:"minecraft:black_wool"} run fill ~5 ~10 ~4 ~-5 ~11 ~-4 black_wool replace #minecraft:wool

execute as @e[type=villager,tag=FactionOutpostVillager,sort=nearest,limit=1] run function bcsmp:factions/villager/convert_to_faction_advisor

data remove storage bcsmp:factions NewFaction

kill @s
#------------------------------------------#
