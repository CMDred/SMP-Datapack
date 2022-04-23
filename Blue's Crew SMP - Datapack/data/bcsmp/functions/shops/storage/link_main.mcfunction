#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players remove @s LinkCD 1
scoreboard players set #Reach Temp 50
execute at @s as @e[type=marker,tag=Storage] if score @s LinkID = @p LinkID run tag @s add ThisStorage
execute at @s anchored feet positioned ^ ^ ^ positioned ~ ~1 ~ facing entity @e[type=marker,tag=ThisStorage] eyes run function bcsmp:shops/storage/link_particles_raycast
tag @e[type=marker] remove ThisStorage
#------------------------------------------#