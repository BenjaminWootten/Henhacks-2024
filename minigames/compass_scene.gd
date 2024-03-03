extends Node2D

@onready var parallax = $ParallaxBackground
@onready var label = $PanelContainer/HBoxContainer/Label
@onready var compass = $compass
@onready var tip = $Control/MarginContainer/MarginContainer/Label
@onready var tip_box = $Control

var angle = -PI/2

func _ready():
	label.text = "Where are we? Orient the compass to 90 Degrees past North.\nClick to lock/unlock the compass dial. Press left and right to spin."
	tip.text = "Compass"
	tip_box.visible = false

func _on_compass_scroll(direction):
	if direction == "left":
		parallax.scroll_offset.x += 5
	elif direction == "right":
		parallax.scroll_offset.x += -5

func _process(delta):
	if compass.check_rotation(angle):
		label.text = "Excellent! Now orient us to 210 Degrees past North."

func _on_compass_mouse_entered():
	tip_box.visible = true

func _on_compass_mouse_exited():
	tip_box.visible = false
