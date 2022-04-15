#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tellraw @a [{"nbt":"Factions[0].Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"selector":"@s"},{"text":" was the leader of ","color": "white"},{"nbt":"Factions[0].Name","storage":"bcsmp:factions","interpret":true},{"text":", a new leader is chosen randomly!","color":"white"},{"text":" A","obfuscated":true}]
data modify storage bcsmp:factions NameLookingFor set from storage bcsmp:factions Factions[0].Name
execute as @a run function bcsmp:factions/check_if_in/start
execute as @a[tag=InFaction,sort=random,limit=1] run tag @s add ElectLeader
data modify storage bcsmp:factions FactionToJoin set from storage bcsmp:factions Factions[0]
execute as @a[tag=ElectLeader] run function bcsmp:factions/join_faction/start
tag @e remove InFaction
#------------------------------------------#
