#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy

team add white {"text":"White"}
team add gold {"text":"Orange"}
team add dark_red {"text":"Magenta"}
team add aqua {"text":"Light Blue"}
team add yellow {"text":"Yellow"}
team add green {"text":"Lime"}
team add light_purple {"text":"Pink"}
team add dark_gray {"text":"Gray"}
team add gray {"text":"Light Gray"}
team add dark_aqua {"text":"Cyan"}
team add dark_purple {"text":"Purple"}
team add blue {"text":"Blue"}
team add dark_blue {"text":"Brown"}
team add dark_green {"text":"Green"}
team add red {"text":"Red"}
team add black {"text":"Black"}

scoreboard objectives add GetFactionList trigger
scoreboard objectives add LeaveFaction trigger


schedule clear bcsmp:factions/area_of_effect/main
schedule function bcsmp:factions/area_of_effect/main 1s
#------------------------------------------#

