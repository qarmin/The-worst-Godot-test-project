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
		
		var q_World : World = World.new()
		
		q_World.set_environment(Environment.new())
		q_World.set_fallback_environment(Environment.new())
		qq += str(q_World.get_space())
		qq += str(q_World.get_scenario())
		qq += str(q_World.get_direct_space_state())
		
		if Autoload.WRONG_BUGS:
			q_World.set_environment(Environment.new())
			q_World.set_fallback_environment(Environment.new())
			qq += str(q_World.get_space())
			qq += str(q_World.get_scenario())
			qq += str(q_World.get_direct_space_state())
