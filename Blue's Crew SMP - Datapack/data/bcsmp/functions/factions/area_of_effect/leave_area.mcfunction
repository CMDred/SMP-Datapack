#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s remove IsInFactionArea
execute if entity @e[type=marker,tag=FactionCenter,distance=..250] run data modify storage bcsmp:factions FactionLeft set from entity @e[type=marker,tag=FactionCenter,distance=..250,sort=nearest,limit=1] data.Faction
execute unless entity @e[type=marker,tag=FactionCenter,distance=..250] run data modify storage bcsmp:factions FactionLeft set from storage bcsmp:factions StoreFaction
tellraw @s [{"nbt":"FactionLeft.Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"text":"You left ","color": "white"},{"nbt":"FactionLeft.Name","storage":"bcsmp:factions","interpret":true},{"text":"'s area.","color":"white"},{"text":" A","obfuscated":true}]
#------------------------------------------#