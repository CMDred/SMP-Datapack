#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute if score #FightOnGoing Temp matches 1.. run scoreboard players set @s AddEndPoints 3
tellraw @a ["",{"selector":"@s","color":"light_purple"},{"text":" destroyed an ender crystal!","color":"dark_purple"}]
advancement revoke @s only bcsmp:mobs/ender_dragon_fight/destroy_crystal
#------------------------------------------#