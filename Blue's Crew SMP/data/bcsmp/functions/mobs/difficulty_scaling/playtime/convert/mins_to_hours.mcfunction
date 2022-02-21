#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------PLAYTIME-----------------#
scoreboard players remove Minutes Temp 60
scoreboard players add Hours Temp 1
execute if score Minutes Temp matches 59.. run function bcsmp:mobs/difficulty_scaling/playtime/convert/mins_to_hours
#------------------------------------------#