extends Node2D

var q_InputEventAction : InputEventAction = InputEventAction.new()
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
			q_InputEventAction = InputEventAction.new()
		
		
		if randi() % 2 == 1:
				q_InputEventAction.set_action("Mina")
		if randi() % 2 == 1:
				q_InputEventAction.set_pressed(bool(randi()%2))
		if randi() % 2 == 1:
				q_InputEventAction.set_strength(Autoload.get_randf())
