#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
scoreboard players add #PlayersInEnd Temp 1
tag @s add IsInEnd
advancement revoke @s only bcsmp:mobs/ender_dragon_fight/enter_end
execute unless score #DragonDefeatedOnce Temp matches 1.. unless score #FightOnGoing Temp matches 1.. in the_end run fill 103 47 3 91 52 -3 barrier outline
execute unless score #DragonDefeatedOnce Temp matches 1.. unless score #FightOnGoing Temp matches 1.. run tellraw @s ["",{"text":"Welcome to the end. The fight can only start when the owner of the server says it. If you have owner rights, you can click ","color":"dark_purple"},{"text":" [HERE] ","color":"light_purple","bold":true,"clickEvent": {"action": "run_command","value": "/function bcsmp:mobs/ai/ender_dragon_fight/start_cooldown"}},{"text":"to inform all other players that the fight will start.","color": "dark_purple"}] 
#------------------------------------------#