#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------PLAYTIME-----------------#
scoreboard players operation Seconds Temp = @s PlaytimeSeconds
scoreboard players set Minutes Temp 0
scoreboard players set Hours Temp 0
scoreboard players set Days Temp 0

execute if score Seconds Temp matches 59.. run function bcsmp:mobs/difficulty_scaling/playtime/convert/secs_to_mins
execute if score Minutes Temp matches 59.. run function bcsmp:mobs/difficulty_scaling/playtime/convert/mins_to_hours
execute if score Hours Temp matches 23.. run function bcsmp:mobs/difficulty_scaling/playtime/convert/hours_to_days
#------------------------------------------#