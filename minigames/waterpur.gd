extends Node2D

@onready var bottle=$bottle
@onready var sand=$sand
@onready var stone=$stone
@onready var moss=$moss
@onready var bottles=$bottle/AnimatedSprite2D

var grabmoss=false
var grabstone=false
var grabsand=false

func _on_moss_area_entered(area):
	if bottles.frame==0:
		moss.visible=false
		bottles.frame=1

func _on_sand_area_entered(_area):
	if bottles.frame==1:
		sand.visible=false
		bottles.frame=2.

func _on_stone_area_entered(_area):
	if bottles.frame==2:
		stone.visible=false
		bottles.frame=3
