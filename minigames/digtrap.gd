extends Node2D

@onready var ground_sprite = $ground_undig/AnimatedSprite2D
@onready var leaf1 = $leaf1
@onready var leaf2 = $leaf2
@onready var solid = $solid

'''func _on_long_pole_area_entered(_area):
	if tent_sprite.animation == "laid":
		tent_sprite.play("front_built")
		$long_pole.queue_free()
	elif tent_sprite.animation == "back_built":
		tent_sprite.play("droopy")
		$long_pole.queue_free()'''

func _on_shovel_area_entered(area):
	if ground_sprite.frame==0:
		ground_sprite.frame=1
		leaf1.visible=true
	elif ground_sprite.frame==1:
		ground_sprite.frame=2
		leaf2.visible=true
	elif ground_sprite.frame==2:
		ground_sprite.frame=3
		solid.visible=true
	elif ground_sprite.frame==3:
		ground_sprite.frame=4
	elif ground_sprite.frame==4:
		ground_sprite.frame=5
	elif ground_sprite.frame==5:
		ground_sprite.frame=6
# Replace with function body.


func _on_leaf_1_area_entered(area):
	if ground_sprite.frame==6:
		ground_sprite.frame=7
		leaf1.visible=false
	pass # Replace with function body.


func _on_leaf_2_area_entered(area):
	if ground_sprite.frame==7:
		ground_sprite.frame=8
		leaf2.visible=false
	pass # Replace with function body.
