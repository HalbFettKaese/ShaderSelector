kill @e[type=item,tag=shaders]
## GREEN CHANNEL FLASHLIGHT SHADERS
execute if score @s ssf.green matches 0 run summon item ~ ~1.5 ~ {NoGravity:1b,PickupDelay:32767,Age:5990,Item:{Count:1b,id:"minecraft:white_stained_glass",tag:{CustomModelData:1000255}},Tags:["shaders"]}
execute if score @s ssf.green matches 1 run summon item ~ ~1.5 ~ {NoGravity:1b,PickupDelay:32767,Age:5990,Item:{Count:1b,id:"minecraft:white_stained_glass",tag:{CustomModelData:1254255}},Tags:["shaders"]}

## BLUE CHANNEL FLASHLIGHT SHADERS
execute if score @s ssf.blue matches 0..1 run summon item ~ ~1.5 ~ {NoGravity:1b,PickupDelay:32767,Age:5985,Item:{Count:1b,id:"minecraft:white_stained_glass",tag:{CustomModelData:1255000}},Tags:["shaders"]}
execute if score @s ssf.blue matches 2 run summon item ~ ~1.5 ~ {NoGravity:1b,PickupDelay:32767,Age:5985,Item:{Count:1b,id:"minecraft:white_stained_glass",tag:{CustomModelData:1255254}},Tags:["shaders"]}
execute if score @s ssf.blue matches 3 run summon item ~ ~1.5 ~ {NoGravity:1b,PickupDelay:32767,Age:5985,Item:{Count:1b,id:"minecraft:white_stained_glass",tag:{CustomModelData:1255253}},Tags:["shaders"]}
execute if score @s ssf.blue matches 4 run summon item ~ ~1.5 ~ {NoGravity:1b,PickupDelay:32767,Age:5985,Item:{Count:1b,id:"minecraft:white_stained_glass",tag:{CustomModelData:1255252}},Tags:["shaders"]}
execute if score @s ssf.blue matches 5 run summon item ~ ~1.5 ~ {NoGravity:1b,PickupDelay:32767,Age:5985,Item:{Count:1b,id:"minecraft:white_stained_glass",tag:{CustomModelData:1255251}},Tags:["shaders"]}