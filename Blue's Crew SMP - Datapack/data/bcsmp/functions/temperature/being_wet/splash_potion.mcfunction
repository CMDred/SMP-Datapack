#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------MAKE WET-----------------#
scoreboard players add @s WetTimer 12000
execute if score @s WetTimer matches 40001.. run scoreboard players set @s WetTimer 40000
effect clear @s luck
advancement revoke @s only bcsmp:temperature/splash_potion
#------------------------------------------#
