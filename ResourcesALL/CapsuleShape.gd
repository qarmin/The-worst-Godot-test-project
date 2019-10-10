extends Node2D

var q_CapsuleShape : CapsuleShape = CapsuleShape.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_CapsuleShape = CapsuleShape.new()
		
		
		if randi() % 2 == 1:
			q_CapsuleShape.set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CapsuleShape.set_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
