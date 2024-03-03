extends Area2D
@onready var bottle=$AnimatedSprite2D


func _on_stone_area_entered(area):
	if bottle.frame==2:
		bottle.frame=3
	pass # Replace with function body.


func _on_sand_area_entered(area):
	if bottle.frame==1:
		bottle.frame=2
	pass # Replace with function body.


func _on_moss_ar_entered(area):
	if bottle.frame==0:
		bottle.frame=1

