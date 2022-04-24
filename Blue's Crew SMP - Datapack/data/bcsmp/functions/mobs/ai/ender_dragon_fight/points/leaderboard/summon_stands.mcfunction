#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
kill @e[type=armor_stand,tag=End_Leaderboard]
execute in the_end positioned 4 60 0 run function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/check_block_loop
#------------------------------------------#