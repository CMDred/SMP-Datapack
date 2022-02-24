#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
# Shulker
execute as @e[type=shulker,tag=Named,name=!"jeb_"] run function bcsmp:mobs/ai/shulker_color/reset
execute as @e[type=shulker,tag=Named] run function bcsmp:mobs/ai/shulker_color/main

# Dragon Fight
function bcsmp:mobs/ai/ender_dragon_fight/main
#------------------------------------------#