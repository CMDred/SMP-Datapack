#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------PLAYTIME-----------------#
scoreboard players remove Hours Temp 24
scoreboard players add Days Temp 1
execute if score Hours Temp matches 23.. run function bcsmp:mobs/difficulty_scaling/playtime/convert/hours_to_days
#------------------------------------------#