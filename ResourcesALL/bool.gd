extends Node2D

# warning-ignore:unused_variable
var q_bool : bool 
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
			q_bool = bool(randi() % Autoload.RANGE - Autoload.RANGE / 2)
# warning-ignore:narrowing_conversion
		if randi() % 2 == 1:
			q_bool = bool(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_bool = bool("asfaf")
