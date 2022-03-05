#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s add IsInFactionArea
data modify storage bcsmp:factions FactionEntered set from entity @e[tag=FactionCenter,distance=..200,limit=1] data.Faction
tellraw @s [{"nbt":"FactionEntered.Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"text":"You entered ","color": "white"},{"nbt":"FactionEntered.Name","storage":"bcsmp:factions","interpret":true},{"text":"'s area.","color":"white"},{"text":" A","obfuscated":true}]
#------------------------------------------#