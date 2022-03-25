#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s remove IsInFactionArea
data modify storage bcsmp:factions FactionLeft set from entity @e[tag=FactionCenter,distance=..250,limit=1] data.Faction
tellraw @s [{"nbt":"FactionLeft.Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"text":"You left ","color": "white"},{"nbt":"FactionLeft.Name","storage":"bcsmp:factions","interpret":true},{"text":"'s area.","color":"white"},{"text":" A","obfuscated":true}]
#------------------------------------------#