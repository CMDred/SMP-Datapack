#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @a[tag=Placing] ~ ~ ~ 1 2 1
tellraw @a[tag=Placing] ["",{"text":"You","color":"red"},{"text":" placed a","color":"gold"},{"text":" Shop Income Storage","color":"red"},{"text":"! ","color":"gold"}]
particle dust 0.243 0.765 0.016 1 ~ ~ ~ 0.3 0.15 0.3 0.1 20 normal
summon marker ~ ~ ~ {Tags:["IncomeStorage","Storage","NewStorage"]}
setblock ~ ~ ~ barrel[facing=up]
execute as @e[tag=NewStorage] run scoreboard players operation @s PlayerID = @a[tag=Placing] PlayerID
#------------------------------------------#
