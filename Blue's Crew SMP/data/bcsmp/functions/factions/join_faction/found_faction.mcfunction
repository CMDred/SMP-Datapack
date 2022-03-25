#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
execute if entity @s[tag=ElectLeader] run function bcsmp:factions/join_faction/elect_as_leader
execute if entity @s[tag=!ElectLeader] run data modify storage bcsmp:factions Factions[0].Players append from entity @s UUID
execute if entity @s[tag=!ElectLeader] run tellraw @a [{"nbt":"Factions[0].Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"selector":"@s"},{"text":" joined ","color": "white"},{"nbt":"Factions[0].Name","storage":"bcsmp:factions","interpret":true},{"text":"!","color":"white"},{"text":" A","obfuscated":true}]
execute if entity @s[tag=!ElectLeader] as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1 1
#------------------------------------------#