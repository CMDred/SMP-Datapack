#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute if score #FightOnGoing Temp matches 1.. run scoreboard players set @s AddEndPoints 1

# Check if p2
execute store result score #Health Temp run data get entity @e[type=ender_dragon,limit=1] Health
execute if score #Health Temp matches ..100 as @e[type=ender_dragon,tag=!Phase2] run function bcsmp:mobs/ai/ender_dragon_fight/abilities/start_p2


advancement revoke @s only bcsmp:mobs/ender_dragon_fight/hit_dragon
#------------------------------------------#