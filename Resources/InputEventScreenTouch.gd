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
		
		var q_InputEventScreenTouch : InputEventScreenTouch = InputEventScreenTouch.new()
		
		q_InputEventScreenTouch.set_index(randi()%50)
		q_InputEventScreenTouch.set_position(Vector2(randf() * 50,randf() * 50))
		q_InputEventScreenTouch.set_pressed(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			pass
