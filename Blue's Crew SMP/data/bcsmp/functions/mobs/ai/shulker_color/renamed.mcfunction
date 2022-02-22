#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------------AI--------------------#
execute as @e[type=shulker,tag=!Named,name="jeb_"] run data modify entity @s Color set value 6
execute as @e[type=shulker,tag=!Named,name="jeb_"] run tag @s add Named
advancement grant @s only bcsmp:custom_advancements/rename_shulker_to_jeb
advancement revoke @s only bcsmp:mobs/rename_shulker
#------------------------------------------#