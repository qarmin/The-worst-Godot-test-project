extends Node2D

var q_InputEventScreenTouch : InputEventScreenTouch = InputEventScreenTouch.new()
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
			q_InputEventScreenTouch = InputEventScreenTouch.new()
			
		
		if randi() % 2 == 1:
			q_InputEventScreenTouch.set_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventScreenTouch.set_position(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_InputEventScreenTouch.set_pressed(Autoload.get_bool())
