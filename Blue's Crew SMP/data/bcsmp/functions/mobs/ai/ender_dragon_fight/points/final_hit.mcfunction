#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
# Add points because final kill (run the function directly)
scoreboard players set @s AddEndPoints 5
function bcsmp:mobs/ai/ender_dragon_fight/points/add_points
tag @s add FinalHit

# Dragon Killed
function bcsmp:mobs/ai/ender_dragon_fight/end_fight_and_announce_winners


# Revoke
advancement revoke @s only bcsmp:mobs/ender_dragon_fight/kill_dragon
#------------------------------------------#