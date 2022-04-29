#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
# remove faction villagers
execute as @e[type=villager,tag=ThisVillager] at @s run tp @s ~ ~-300 ~
kill @e[type=villager,tag=ThisVillager]

# respawn an "empty" villager at the center
scoreboard players operation #Search FactionID = @s FactionID
execute as @e[type=marker,tag=FactionCenter] if score @s FactionID = #Search FactionID run tag @s add ThisCenter
execute at @e[type=marker,tag=ThisCenter] run summon villager ~ ~ ~ {Tags:["FactionOutpostVillager"],NoAI:1b}

# reset the wool colors on top of the outpost
execute at @e[type=marker,tag=ThisCenter] run fill ~5 ~10 ~4 ~-5 ~11 ~-4 white_wool replace #minecraft:wool

# remove the faction marker
tag @e[type=marker,tag=ThisCenter] add NeedsToBeRemoved

# message
tellraw @a [{"nbt":"Factions[0].Color","storage":"bcsmp:factions","interpret":true},{"text":"A ","obfuscated":true},{"nbt":"Factions[0].Name","storage":"bcsmp:factions","interpret":true},{"text":" has been ","color": "white"},{"text":"disbanded","color": "red","bold":true},{"text":"!","color":"white"},{"text":" A","obfuscated":true},{"text":"\n Its name and color are now available to use.","color":"dark_gray"}]

# remove from array
data remove storage bcsmp:factions Factions[0]
#------------------------------------------#