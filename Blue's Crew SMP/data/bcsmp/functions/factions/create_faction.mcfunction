#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
data modify storage bcsmp:factions FactionToCreate set from storage bcsmp:factions NewFaction
tellraw @a [{"nbt":"FactionToCreate.Color","interpret": true,"storage":"bcsmp:factions"},{"text":"A ","obfuscated": true},{"text":" A new faction, ","color": "white"},{"nbt":"FactionToCreate.Name","storage":"bcsmp:factions","interpret": true},{"text":", was created!","color": "white"},{"text":" A","obfuscated": true}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~
data modify storage bcsmp:factions Factions append from storage bcsmp:factions FactionToCreate
#------------------------------------------#

