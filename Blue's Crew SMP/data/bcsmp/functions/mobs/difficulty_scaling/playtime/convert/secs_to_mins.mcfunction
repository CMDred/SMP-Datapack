#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------PLAYTIME-----------------#
scoreboard players remove Seconds Temp 60
scoreboard players add Minutes Temp 1
execute if score Seconds Temp matches 59.. run function bcsmp:mobs/difficulty_scaling/playtime/convert/secs_to_mins
#------------------------------------------#