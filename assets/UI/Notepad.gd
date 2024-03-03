extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_water_button_pressed():
	get_tree().change_scene_to_file("res://minigames/waterPurifier.tscn")

func _on_fire_button_pressed():
	get_tree().change_scene_to_file("res://minigames/FireGame.tscn")

func _on_compass_button_pressed():
	get_tree().change_scene_to_file("res://minigames/compass_scene.tscn")

func _on_tent_button_pressed():
	get_tree().change_scene_to_file("res://minigames/tent.tscn")
