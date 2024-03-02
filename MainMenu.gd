extends Control

@onready var background = $ParallaxBackground/ParallaxLayer
@onready var cloud = $ParallaxBackground/ParallaxLayer2/Sprite2D5
@onready var buttons = $VBoxContainer

var started = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if started:
		background.position.y = move_toward(background.position.y, -80, 0.5)
		cloud.position.y = move_toward(cloud.position.y, 60, 0.5)

func _on_start_pressed():
	buttons.visible = false
	started = true
