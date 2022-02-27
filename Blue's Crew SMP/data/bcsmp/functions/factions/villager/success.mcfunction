#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
kill @e[tag=FactionPaper,distance=..1.5,limit=1]
kill @e[tag=FactionBanner,distance=..1.5,limit=1]

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
tag @e[tag=FactionOutpostVillager,sort=nearest,limit=1] add FactionCreated

kill @s
#------------------------------------------#