#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
tag @s add Phase2
playsound entity.wither.spawn master @a ~ ~ ~ 10 1 1
tellraw @a [{"text":"The Dragon is now","color":"red"},{"text":" enraged","color":"dark_red"},{"text":"!"}]

# Summon Protective Totem
execute in the_end positioned 0 75 0 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/summon_find_y
scoreboard players set #TotemHealth Temp 100
#------------------------------------------#