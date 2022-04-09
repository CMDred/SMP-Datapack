#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------PLAYER DAMAGE RANKINGS----------#
tag @a[tag=End_RankingTest,limit=1] add End_RankingTestCurrent

execute if score @p[tag=End_RankingTestCurrent] EndPoints < Current End_PtsRanking run tag @a remove End_RankingTestLowest
execute if score @p[tag=End_RankingTestCurrent] EndPoints < Current End_PtsRanking run tag @p[tag=End_RankingTestCurrent] add End_RankingTestLowest
execute if score @p[tag=End_RankingTestCurrent] EndPoints < Current End_PtsRanking run scoreboard players operation Current End_PtsRanking = @p[tag=End_RankingTestCurrent] EndPoints

tag @a[tag=End_RankingTestCurrent] remove End_RankingTest
tag @a[tag=End_RankingTestCurrent] remove End_RankingTestCurrent
execute if entity @e[tag=End_RankingTest] run function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/ranking/loop2
#------------------------------------------#