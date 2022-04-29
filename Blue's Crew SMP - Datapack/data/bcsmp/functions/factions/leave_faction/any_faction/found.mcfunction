#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
data remove storage bcsmp:factions Factions[0].Players[0]
tellraw @a [{"nbt":"Factions[0].Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"selector":"@s"},{"text":" left ","color": "white"},{"nbt":"Factions[0].Name","storage":"bcsmp:factions","interpret":true},{"text":"!","color":"white"},{"text":" A","obfuscated":true}]
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1 1
execute store result score #LeaderUUID0 Temp run data get storage bcsmp:factions Factions[0].Leader[0]
execute store result score #LeaderUUID1 Temp run data get storage bcsmp:factions Factions[0].Leader[1]

execute store result score #Members Temp run data get storage bcsmp:factions Factions[0].Players
execute if score #Members Temp matches 0 run function bcsmp:factions/disband_faction/start

execute if score #Members Temp matches 1.. if score #LeaderUUID0 Temp = #UUID0 Temp if score #LeaderUUID1 Temp = #UUID1 Temp run function bcsmp:factions/find_new_leader
#------------------------------------------#