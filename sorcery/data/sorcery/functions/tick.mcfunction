# Wanda abilities
execute at @e[tag=wanda_particle] if entity @a[distance=..10,tag=!wanda] run kill @s
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=!wanda] run summon armor_stand ~ ~ ~ {Tags:['wanda_particle'],Invulnerable:1b,Invisible:1b}
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=!wanda] run tag @s add wanda
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}}] run tp @e[tag=wanda_particle,sort=nearest] ^ ^ ^10
execute at @a[nbt=!{SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=wanda] run tag @s remove wanda
