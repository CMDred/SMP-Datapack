#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.barrel.open master @a[tag=Placing] ~ ~ ~ 1 2 1
tellraw @a[tag=Placing] ["",{"text":"This","color":"gold"},{"text":" Shop","color":"red"},{"text":" has reached the maximum amount of containers","color":"gold"},{"text":"! ","color":"red"},{"text":"(","color":"gray"},{"score":{"name": "#ContainerLimit","objective": "Temp"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name": "#ContainerLimit","objective": "Temp"},"color":"red"},{"text":")","color":"gray"}]
particle dust 0.341 0.341 0.341 1 ~ ~ ~ 0.3 0.15 0.3 0.1 20 normal
#------------------------------------------#
