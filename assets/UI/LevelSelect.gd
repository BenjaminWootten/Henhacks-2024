extends Control
@onready var global = get_node("/root/Global")

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	if(global.tent_completed==true):
		$Sprite2D5.visible=true
	if(global.water_completed==true):
		$Sprite2D6.visible=true
