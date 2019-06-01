extends Area2D

var direction : int = 1

func _process(delta: float) -> void:
	position.x += direction * delta * 2000
	
	if position.x > 1280:
		direction = -1
	elif position.x < 0:
		direction = 1