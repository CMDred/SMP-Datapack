#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
data modify storage bcsmp:factions Factions[0].Leader set from entity @s UUID
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1 1
tellraw @a [{"nbt":"Factions[0].Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"selector":"@s"},{"text":" is the new leader of ","color": "white"},{"nbt":"Factions[0].Name","storage":"bcsmp:factions","interpret":true},{"text":"!","color":"white"},{"text":" A","obfuscated":true}]
data modify storage bcsmp:factions FactionToCreate set from storage bcsmp:factions Factions[0]
#------------------------------------------#