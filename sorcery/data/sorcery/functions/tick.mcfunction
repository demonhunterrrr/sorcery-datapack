# Wanda Abilities
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=!wanda] run summon armor_stand ~ ~ ~ {Tags:['wanda_particle'],Invulnerable:1b,Invisible:1b}
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=!wanda] run tag @s add wanda
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}}] run tp @e[tag=wanda_particle,sort=nearest] ^ ^ ^10
execute at @e[tag=wanda_particle] run effect give @e[distance=..2,tag=!particle] wither 3 10 true
execute at @e[tag=wanda_particle] run particle minecraft:dust 255 0 0 1 ^ ^0.5 ^-0.5 1 1 1 50 50 normal
execute at @a[nbt=!{SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=wanda] run tag @s remove wanda
execute as @e[tag=wanda_particle] unless entity @a[distance=..20,tag=wanda] run kill @s
