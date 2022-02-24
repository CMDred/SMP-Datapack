#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
bossbar set bcsmp:totem_health max 100
bossbar set bcsmp:totem_health value 100
bossbar set bcsmp:totem_health visible true
bossbar set bcsmp:totem_health players @a[predicate=bcsmp:mobs/is_in_end,distance=..150]
scoreboard players set in RandMath 80
scoreboard players set in1 RandMath 100
function bcsmp:random/range_lcg
scoreboard players operation #TotemChangeTypeTime Temp = out RandMath

execute if score out RandMath matches 80..90 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/change_type/melee
execute if score out RandMath matches 91..100 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/change_type/ranged
#------------------------------------------#