#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
execute if score #CurrentType Temp matches 2 run scoreboard players remove #TotemHealth Temp 1
execute store result bossbar bcsmp:totem_health value run scoreboard players get #TotemHealth Temp 
execute if score #TotemHealth Temp matches ..0 as @e[tag=ProtectiveTotem] at @s run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/die
execute if score #CurrentType Temp matches 2 run playsound entity.player.hurt master @s ~ ~ ~ 1 0 1
advancement revoke @s only bcsmp:mobs/ender_dragon_fight/hit_totem_ranged
#------------------------------------------#