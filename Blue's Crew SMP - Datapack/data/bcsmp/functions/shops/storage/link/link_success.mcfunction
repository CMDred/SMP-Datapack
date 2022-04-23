#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @a[tag=Clicker] ~ ~ ~ 1 2 1

scoreboard players operation #StorageID Temp = @s StorageID

execute as @e[type=marker,tag=Storage] if score @s LinkID = @a[tag=Clicker,limit=1] LinkID run tag @s add ThisStorage
scoreboard players reset @e[type=marker,tag=ThisStorage] LinkID

execute at @e[type=marker,tag=ThisStorage] run particle explosion

execute if entity @e[type=marker,tag=ThisStorage,tag=IncomeStorage] as @e[type=marker,tag=IncomeStorage] if score @s StorageID = #StorageID Temp run scoreboard players reset @s StorageID
execute if entity @e[type=marker,tag=ThisStorage,tag=OutcomeStorage] as @e[type=marker,tag=OutcomeStorage] if score @s StorageID = #StorageID Temp run scoreboard players reset @s StorageID

scoreboard players operation @e[type=marker,tag=ThisStorage] StorageID = #StorageID Temp
scoreboard players reset @a[tag=Clicker] LinkID
scoreboard players reset @a[tag=Clicker] LinkCD
tellraw @a[tag=Clicker] ["",{"text":"You","color":"red"},{"text":" linked the ","color":"gold"},{"text":"Shop Storage ","color":"red"},{"text":"to this","color":"gold"},{"text":" Shop Container","color":"red"},{"text":"!","color":"gold"}]
tag @e[type=marker] remove ThisStorage
execute at @s run particle dust 0.008 0.898 0.925 1 ~ ~0.5 ~ 0.45 0.3 0.45 0.1 60 normal
#------------------------------------------#