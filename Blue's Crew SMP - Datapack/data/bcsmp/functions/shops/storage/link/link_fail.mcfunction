#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @a[tag=Clicker] ~ ~ ~ 1 0 1
tellraw @a[tag=Clicker] ["",{"text":"You","color":"red"},{"text":" need to click on a storage first!","color":"gold"},{"text":" Shop Storage","color":"red"}]
execute at @s run particle dust 0.004 0.251 0.259 1 ~ ~0.5 ~ 0.45 0.3 0.45 0.1 60 normal
#------------------------------------------#