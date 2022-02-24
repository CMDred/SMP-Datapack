#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------RESET TAGS----------------#
tag @a remove FirstPlace
tag @a remove SecondPlace
tag @a remove ThirdPlace
tag @a remove FourthPlace
tag @a remove FifthPlace
#------GET NUMBER OF PLAYERS W/ POINTS-----#
scoreboard players set Global End_PtsRanking 0
execute as @a[scores={EndPoints=1..}] run scoreboard players add Global End_PtsRanking 1
#----------PLAYER POINTS RANKINGS----------#
tag @a[scores={EndPoints=1..}] add End_Ranking
function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/ranking/loop
tag @a remove End_Ranking
#------------------------------------------#