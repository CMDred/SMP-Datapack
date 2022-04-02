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

team add nocol
team modify nocol collisionRule never

summon giant ~1.8 ~-6 ~-2.2 {Team:"nocol",Invulnerable:1b,NoAI:1b,NoGravity:1b,ActiveEffects:[{Id:14b,Ambient:1b,Amplifier:1b,Duration:99999,ShowIcon:0b,ShowParticles:0b},{Id:11b,Ambient:1b,Amplifier:5b,Duration:99999,ShowIcon:0b,ShowParticles:0b}],Tags:["ProtectiveTotem_Visual"]}

execute if score out RandMath matches 80..90 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/change_type/melee
execute if score out RandMath matches 91..100 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/change_type/ranged
#------------------------------------------#