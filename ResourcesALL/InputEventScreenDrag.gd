extends Node2D

var q_InputEventScreenDrag : InputEventScreenDrag = InputEventScreenDrag.new()
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
			q_InputEventScreenDrag = InputEventScreenDrag.new()
			
		
		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_position(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_relative(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_speed(Autoload.get_vector2())
