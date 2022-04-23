#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @a[tag=Clicker] ~ ~ ~ 1 2 1
execute store result score @s LinkID run scoreboard players add #Global LinkID 1
scoreboard players operation @a[tag=Clicker] LinkID = @s LinkID
tellraw @a[tag=Clicker] ["",{"text":"You","color":"red"},{"text":" started linking this","color":"gold"},{"text":" Shop Storage","color":"red"},{"text":"! Click on a shop container to link it! You have ","color":"gold"},{"text":"40s","color":"red"},{"text":" to do so before the link expires.","color":"gold"}]
scoreboard players set @a[tag=Clicker] LinkCD 800
execute at @s run particle dust 0.008 0.898 0.925 1 ~ ~0.5 ~ 0.45 0.3 0.45 0.1 60 normal
#------------------------------------------#