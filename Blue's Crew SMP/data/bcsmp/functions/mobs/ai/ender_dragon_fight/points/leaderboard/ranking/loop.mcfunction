#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------PLAYER DAMAGE RANKINGS----------#
scoreboard players set Current End_PtsRanking 2147483647
tag @a[tag=End_Ranking] add End_RankingTest
function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/ranking/loop2

scoreboard players operation @p[tag=End_RankingTestLowest] End_PtsRanking = Global End_PtsRanking
tag @p[tag=End_RankingTestLowest] remove End_Ranking
tag @p[tag=End_RankingTestLowest] remove End_RankingTestLowest

scoreboard players remove Global End_PtsRanking 1
execute if score Global End_PtsRanking matches 1.. run function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/ranking/loop
#------------------------------------------#