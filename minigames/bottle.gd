extends Area2D
@onready var bottle=$AnimatedSprite2D


func _on_stone_area_entered(area):
	bottle.frame=3
	pass # Replace with function body.


func _on_sand_area_entered(area):
	bottle.frame=2
	pass # Replace with function body.


func _on_moss_area_entered(area):
	bottle.frame=1
	pass # Replace with function body.


