#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------ARMOR-------------------#
data modify entity @s ArmorItems set value [{},{},{},{}]
scoreboard players set #PiecesCount Temp 0
execute unless score #PiecesCount Temp matches 2.. run loot replace entity @s armor.head loot bcsmp:mobs/difficulty_scaling/armor/tier_6-10/head
function bcsmp:mobs/difficulty_scaling/armor/count_pieces
execute unless score #PiecesCount Temp matches 2.. run loot replace entity @s armor.chest loot bcsmp:mobs/difficulty_scaling/armor/tier_6-10/chest
function bcsmp:mobs/difficulty_scaling/armor/count_pieces
execute unless score #PiecesCount Temp matches 2.. run loot replace entity @s armor.legs loot bcsmp:mobs/difficulty_scaling/armor/tier_6-10/legs
function bcsmp:mobs/difficulty_scaling/armor/count_pieces
execute unless score #PiecesCount Temp matches 2.. run loot replace entity @s armor.feet loot bcsmp:mobs/difficulty_scaling/armor/tier_6-10/feet
function bcsmp:mobs/difficulty_scaling/armor/count_pieces
execute unless score #PiecesCount Temp matches 2 run data modify entity @s ArmorItems[0] set value {id:"minecraft:leather_boots",Count:1b}
function bcsmp:mobs/difficulty_scaling/armor/count_pieces
execute if score #PiecesCount Temp matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:leather_helmet",Count:1b}
function bcsmp:mobs/difficulty_scaling/armor/count_pieces
#------------------------------------------#