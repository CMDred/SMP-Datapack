#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
scoreboard players add #ChargeTime Temp 1
execute if score #ChargeTime Temp matches 1 run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.01 1 1
execute if score #ChargeTime Temp matches 1 run tag @r[distance=..60,gamemode=!creative,gamemode=!spectator] add LaserTarget
execute if score #ChargeTime Temp matches 1 at @a[tag=LaserTarget,limit=1] run summon marker ~ ~ ~ {Tags:["LaserTargetMarker"]}

particle flash ~ ~ ~ 1 1 1 0.10 20 force
execute if score #ChargeTime Temp matches 80.. run function bcsmp:mobs/ai/ender_dragon_fight/abilities/laser/shoot
#------------------------------------------#