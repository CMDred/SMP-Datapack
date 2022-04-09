#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
scoreboard players reset #BeforeChangeType Temp
scoreboard players set #HasChanged Temp 0
execute unless score #HasChanged Temp matches 1.. if score #CurrentType Temp matches 2 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/change_type/melee
execute unless score #HasChanged Temp matches 1.. if score #CurrentType Temp matches 1 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/change_type/ranged
scoreboard players set in RandMath 140
scoreboard players set in1 RandMath 180
function bcsmp:random/range_lcg
scoreboard players operation #TotemChangeTypeTime Temp = out RandMath
#------------------------------------------#