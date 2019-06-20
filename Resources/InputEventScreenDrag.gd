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
		
		var q_InputEventScreenDrag : InputEventScreenDrag = InputEventScreenDrag.new()
		
		q_InputEventScreenDrag.set_index(randi()%50)
		q_InputEventScreenDrag.set_position(Vector2(randf() * 50,randf() * 50))
		q_InputEventScreenDrag.set_relative(Vector2(randf() * 50,randf() * 50))
		q_InputEventScreenDrag.set_speed(Vector2(randf() * 50,randf() * 50))
		
		if Autoload.WRONG_BUGS:
			q_InputEventScreenDrag.set_index(randi() % 1000 - 500)
			q_InputEventScreenDrag.set_position(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_InputEventScreenDrag.set_relative(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_InputEventScreenDrag.set_speed(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
