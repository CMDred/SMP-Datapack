#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
scoreboard players set @s AddEndPoints 1
scoreboard players set @a[tag=WasHurtByPlayer] AddEndPoints -1
tellraw @a[tag=WasHurtByPlayer] [{"selector":"@s","bold": true},{"text":" stole a point from you!","color":"dark_purple"}]
tellraw @s [{"text":"You stole a point from ","color":"dark_purple"},{"selector":"@a[tag=WasHurtByPlayer,limit=1]","bold": true}]
#------------------------------------------#