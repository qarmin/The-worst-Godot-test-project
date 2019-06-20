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
		
		var q_InputEventAction : InputEventAction = InputEventAction.new()
		
		q_InputEventAction.set_action("Mina")
		q_InputEventAction.set_pressed(bool(randi()%2))
		q_InputEventAction.set_strength(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			pass
