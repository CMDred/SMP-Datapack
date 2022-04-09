#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
tag @a remove LaserTarget
scoreboard players set #Reach Temp 120
scoreboard players reset #ChargeTime Temp
scoreboard players reset #BeforeLaser Temp
scoreboard players set in RandMath 220
scoreboard players set in1 RandMath 280
function bcsmp:random/range_lcg
scoreboard players operation #LaserTime Temp = out RandMath

playsound entity.generic.explode hostile @a[tag=IsInEnd] ~ ~ ~ 10 1 1
playsound block.beacon.deactivate hostile @a[tag=IsInEnd] ~ ~ ~ 10 1 1
playsound entity.ender_dragon.shoot hostile @a[tag=IsInEnd] ~ ~ ~ 10 1 1

execute anchored eyes positioned ^ ^ ^ facing entity @e[tag=LaserTargetMarker,limit=1] feet run function bcsmp:mobs/ai/ender_dragon_fight/abilities/laser/raycast
kill @e[tag=LaserTargetMarker]
#------------------------------------------#