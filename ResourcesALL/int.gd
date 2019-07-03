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
		
# warning-ignore:unused_variable
		var q_int : int

		q_int = int(bool(randi()%2))
		q_int = int(randf() * 50)
		q_int = int("14")

		if Autoload.WRONG_BUGS:
			q_int = int(bool(randi()%2))
			q_int = int(randf() * 1000 - 500)
			q_int = int("fasf14")
