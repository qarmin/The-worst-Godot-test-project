extends Node2D

var q_VisualScriptFunctionState : VisualScriptFunctionState = VisualScriptFunctionState.new()
var q_temp_0 : Node = load("res://RES/Node.tscn").instance()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	add_child(q_temp_0)

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_VisualScriptFunctionState = VisualScriptFunctionState.new()
			q_temp_0.queue_free()
			q_temp_0 = load("res://RES/Node.tscn").instance()
			add_child(q_temp_0)
		
		if randi() % 2 == 1:
			q_VisualScriptFunctionState.connect_to_signal( q_temp_0, Autoload.get_string(), [Autoload.get_string()] )
		if randi() % 2 == 1:
			qq += str(q_VisualScriptFunctionState.is_valid())
		if randi() % 2 == 1:
			q_VisualScriptFunctionState.resume( [Autoload.get_string()] )
			
func delete_node():
	q_temp_0.queue_free()
