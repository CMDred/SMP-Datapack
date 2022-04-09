#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute if block ~ ~ ~ air positioned ~ ~4 ~ run function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/summon
execute unless block ~ ~ ~ air positioned ~ ~1 ~ run function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/check_block_loop
#------------------------------------------#