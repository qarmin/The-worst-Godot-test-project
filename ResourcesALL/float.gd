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
			var q_float : float
	
			q_float = float(bool(randi()%2))
			q_float = float(randf() * 50)
			q_float = float("4.6")
	
			if Autoload.WRONG_BUGS:
				q_float = float(bool(randi()%2))
				q_float = float(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_float = float("4afasfa6")
