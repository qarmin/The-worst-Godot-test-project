extends Node2D

var q_InputEventMouseButton : InputEventMouseButton = InputEventMouseButton.new()
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
			q_InputEventMouseButton = InputEventMouseButton.new()
			
		
		if randi() % 2 == 1:
			q_InputEventMouseButton.set_factor(Autoload.get_randf())
		if randi() % 2 == 1:
			q_InputEventMouseButton.set_button_index(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMouseButton.set_pressed(bool(randi()%2))
		if randi() % 2 == 1:
			q_InputEventMouseButton.set_doubleclick(bool(randi()%2))
