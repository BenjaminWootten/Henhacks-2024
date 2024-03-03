extends Node2D

@onready var tent_sprite = $unbuilt_tent/AnimatedSprite2D

func _on_long_pole_area_entered(_area):
	if tent_sprite.animation == "laid":
		tent_sprite.play("front_built")
		$long_pole.queue_free()
	elif tent_sprite.animation == "back_built":
		tent_sprite.play("droopy")
		$long_pole.queue_free()

func _on_long_pole_2_area_entered(_area):
	if tent_sprite.animation == "laid":
		tent_sprite.play("back_built")
		$long_pole2.queue_free()
	elif tent_sprite.animation == "front_built":
		tent_sprite.play("droopy")
		$long_pole2.queue_free()

func _on_short_pole_area_entered(_area):
	if tent_sprite.animation == "droopy":
		tent_sprite.play("built")
		$short_pole.queue_free()

func _on_stick_area_entered(_area):
	if tent_sprite.animation == "built":
		tent_sprite.play("window_open")
		$stick.queue_free()

func _on_rain_fly_area_entered(_area):
	if tent_sprite.animation == "window_open":
		tent_sprite.play("rain_fly")
		$rain_fly.queue_free()

func _on_stake_area_entered(_area):
	if tent_sprite.animation == "rain_fly":
		tent_sprite.play("stake_1")
		$stake.queue_free()
	elif tent_sprite.animation == "stake_1":
		tent_sprite.play("stake_2")
		$stake.queue_free()
	elif tent_sprite.animation == "stake_2":
		tent_sprite.play("stake_3")
		$stake.queue_free()
	elif tent_sprite.animation == "stake_3":
		$stake.queue_free()
		tent_complete()

func _on_stake_2_area_entered(_area):
	if tent_sprite.animation == "rain_fly":
		tent_sprite.play("stake_1")
		$stake2.queue_free()
	elif tent_sprite.animation == "stake_1":
		tent_sprite.play("stake_2")
		$stake2.queue_free()
	elif tent_sprite.animation == "stake_2":
		tent_sprite.play("stake_3")
		$stake2.queue_free()
	elif tent_sprite.animation == "stake_3":
		$stake2.queue_free()
		tent_complete()

func _on_stake_3_area_entered(_area):
	if tent_sprite.animation == "rain_fly":
		tent_sprite.play("stake_1")
		$stake3.queue_free()
	elif tent_sprite.animation == "stake_1":
		tent_sprite.play("stake_2")
		$stake3.queue_free()
	elif tent_sprite.animation == "stake_2":
		tent_sprite.play("stake_3")
		$stake3.queue_free()
	elif tent_sprite.animation == "stake_3":
		$stake3.queue_free()
		tent_complete()

func _on_stake_4_area_entered(_area):
	if tent_sprite.animation == "rain_fly":
		tent_sprite.play("stake_1")
		$stake4.queue_free()
	elif tent_sprite.animation == "stake_1":
		tent_sprite.play("stake_2")
		$stake4.queue_free()
	elif tent_sprite.animation == "stake_2":
		tent_sprite.play("stake_3")
		$stake4.queue_free()
	elif tent_sprite.animation == "stake_3":
		$stake4.queue_free()
		tent_complete()

func tent_complete():
	print("tent complete")
