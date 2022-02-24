#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/ranking/start
#-----------------SET TAGS-----------------#
tag @a[scores={End_PtsRanking=1}] add FirstPlace
tag @a[scores={End_PtsRanking=2}] add SecondPlace
tag @a[scores={End_PtsRanking=3}] add ThirdPlace
tag @a[scores={End_PtsRanking=4}] add FourthPlace
tag @a[scores={End_PtsRanking=5}] add FifthPlace
#----------------SET SIGNS-----------------#
execute in overworld run setblock 29999977 1 29832 oak_sign{Text1:'["",{"text":"Elapsed Time: ","color":"aqua","bold":true},{"score":{"name": "#DragonFightMinutes","objective": "Temp"},"color": "aqua","bold":true},{"text":"m ","color":"aqua","bold":true},{"score":{"name": "#DragonFightSeconds","objective": "Temp"},"color": "aqua","bold":true},{"text":"s","color":"aqua","bold":true}]',Text2:'["",{"text":"1. ","color":"yellow","bold":true},{"selector":"@a[tag=FirstPlace,limit=1]"},{"text":" - ","color":"yellow","bold":true},{"score":{"name": "@a[tag=FirstPlace,limit=1]","objective": "EndPoints"},"color": "aqua"},{"text":" pts","color":"yellow","bold":true}]',Text3:'["",{"text":"2. ","color":"yellow","bold":true},{"selector":"@a[tag=SecondPlace,limit=1]"},{"text":" - ","color":"yellow","bold":true},{"score":{"name": "@a[tag=SecondPlace,limit=1]","objective": "EndPoints"},"color": "aqua"},{"text":" pts","color":"yellow","bold":true}]',Text4:'["",{"text":"3. ","color":"yellow","bold":true},{"selector":"@a[tag=ThirdPlace,limit=1]"},{"text":" - ","color":"yellow","bold":true},{"score":{"name": "@a[tag=ThirdPlace,limit=1]","objective": "EndPoints"},"color": "aqua"},{"text":" pts","color":"yellow","bold":true}]'}
execute in overworld run setblock 29999977 1 29833 oak_sign{Text1:'["",{"text":"4. ","color":"yellow","bold":true},{"selector":"@a[tag=FourthPlace,limit=1]"},{"text":" - ","color":"yellow","bold":true},{"score":{"name": "@a[tag=FourthPlace,limit=1]","objective": "EndPoints"},"color": "aqua"},{"text":" pts","color":"yellow","bold":true}]',Text2:'["",{"text":"5. ","color":"yellow","bold":true},{"selector":"@a[tag=FifthPlace,limit=1]"},{"text":" - ","color":"yellow","bold":true},{"score":{"name": "@a[tag=FifthPlace,limit=1]","objective": "EndPoints"},"color": "aqua"},{"text":" pts","color":"yellow","bold":true}]'}

execute in overworld run data modify entity @e[tag=Line2,limit=1] CustomName set from block 29999977 1 29832 Text1
execute in overworld run data modify entity @e[tag=Line3,limit=1] CustomName set from block 29999977 1 29832 Text2
execute in overworld run data modify entity @e[tag=Line4,limit=1] CustomName set from block 29999977 1 29832 Text3
execute in overworld run data modify entity @e[tag=Line5,limit=1] CustomName set from block 29999977 1 29832 Text4
execute in overworld run data modify entity @e[tag=Line6,limit=1] CustomName set from block 29999977 1 29833 Text1
execute in overworld run data modify entity @e[tag=Line7,limit=1] CustomName set from block 29999977 1 29833 Text2

execute in overworld run setblock 29999977 1 29832 air
execute in overworld run setblock 29999977 1 29833 air
#------------------------------------------#