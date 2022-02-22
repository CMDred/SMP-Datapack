#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute as @e[type=shulker,tag=Named,name=!"jeb_"] run function bcsmp:mobs/ai/shulker_color/reset
execute as @e[type=shulker,tag=Named] run function bcsmp:mobs/ai/shulker_color/main
#------------------------------------------#