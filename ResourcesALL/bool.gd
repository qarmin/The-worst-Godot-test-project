extends Node2D

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
		if !Autoload.RANDI:
		
# warning-ignore:unused_variable
			var q_bool : bool 
	
			q_bool = bool(randi()%50)
# warning-ignore:narrowing_conversion
			q_bool = bool(randf() * 50)
			q_bool = bool("false")
	
			if Autoload.WRONG_BUGS:
				q_bool = bool(randi() % Autoload.RANGE - Autoload.RANGE / 2)
# warning-ignore:narrowing_conversion
				q_bool = bool(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_bool = bool("asfaf")
