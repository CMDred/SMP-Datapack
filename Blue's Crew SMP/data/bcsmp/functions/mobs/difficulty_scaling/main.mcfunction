#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------PLAYTIME-----------------#
execute as @a run function bcsmp:mobs/difficulty_scaling/playtime/tick
#-----------------NEW MOB------------------#
execute as @e[type=#bcsmp:hostile,tag=!Registered] run function bcsmp:mobs/difficulty_scaling/new_mob
#--------------GET PLAYTIME----------------#
execute as @a[scores={GetPlaytime=1..}] run function bcsmp:mobs/difficulty_scaling/playtime/get_playtime
scoreboard players enable @a GetPlaytime
#------------------------------------------#