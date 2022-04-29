#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy

team add white {"text":"White","color":"#ffffff"}
team add gold {"text":"Orange","color":"#e67417"}
team add dark_red {"text":"Magenta","color":"#d52bff"}
team add aqua {"text":"Light Blue","color":"#1fd6f2"}
team add yellow {"text":"Yellow","color":"#ffcb2e"}
team add green {"text":"Lime","color":"#52c718"}
team add light_purple {"text":"Pink","color":"#e087cb"}
team add dark_gray {"text":"Gray","color":"#383838"}
team add gray {"text":"Light Gray","color":"#828282"}
team add dark_aqua {"text":"Cyan","color":"#006653"}
team add dark_purple {"text":"Purple","color":"#7e008c"}
team add blue {"text":"Blue","color":"#2800c9"}
team add dark_blue {"text":"Brown","color":"#451f09"}
team add dark_green {"text":"Green","color":"#125716"}
team add red {"text":"Red","color":"#ff1c1c"}
team add black {"text":"Black","color":"#0d0d0d"}

team modify white prefix {"text":"[White] ","color":"#ffffff"}
team modify gold prefix {"text":"[Orange] ","color":"#e67417"}
team modify dark_red prefix {"text":"[Magenta] ","color":"#d52bff"}
team modify aqua prefix {"text":"[Light Blue] ","color":"#1fd6f2"}
team modify yellow prefix {"text":"[Yellow] ","color":"#ffcb2e"}
team modify green prefix {"text":"[Lime] ","color":"#52c718"}
team modify light_purple prefix {"text":"[Pink] ","color":"#e087cb"}
team modify dark_gray prefix {"text":"[Gray] ","color":"#383838"}
team modify gray prefix {"text":"[Light Gray] ","color":"#828282"}
team modify dark_aqua prefix {"text":"[Cyan] ","color":"#006653"}
team modify dark_purple prefix {"text":"[Purple] ","color":"#7e008c"}
team modify blue prefix {"text":"[Blue] ","color":"#2800c9"}
team modify dark_blue prefix {"text":"[Brown] ","color":"#451f09"}
team modify dark_green prefix {"text":"[Green] ","color":"#125716"}
team modify red prefix {"text":"[Red] ","color":"#ff1c1c"}
team modify black prefix {"text":"[Black] ","color":"#0d0d0d"}


scoreboard objectives add GetFactionList trigger
scoreboard objectives add LeaveFaction trigger

scoreboard objectives add MoveEggID dummy
scoreboard objectives add FactionID dummy

schedule clear bcsmp:factions/area_of_effect/main
schedule function bcsmp:factions/area_of_effect/main 1s
#------------------------------------------#

