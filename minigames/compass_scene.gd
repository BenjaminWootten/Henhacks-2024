extends Node2D

@onready var parallax = $ParallaxBackground

func _on_compass_scroll(direction):
	if direction == "left":
		parallax.scroll_offset.x += 5
	elif direction == "right":
		parallax.scroll_offset.x += -5
		
