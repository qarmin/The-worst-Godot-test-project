extends Node2D

# warning-ignore:unused_variable
var q_float : float
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
			q_float = float(bool(randi()%2))
		if randi() % 2 == 1:
			q_float = float(Autoload.get_randi())
		if randi() % 2 == 1:
			q_float = float(Autoload.get_string())
