#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tellraw @a[scores={ContainerItems=1..}] ["",{"text":"You cannot do this, the vendor has not set any income storage!","color":"red"}]
playsound entity.villager.no master @a[scores={ContainerItems=1..}] ~ ~ ~ 1 1 1
#------------------------------------------#