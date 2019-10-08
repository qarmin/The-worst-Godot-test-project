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
		if !Autoload.RANDI:
		
			var q_World2D : World2D = World2D.new()
			
			qq += str(q_World2D.get_canvas())
			qq += str(q_World2D.get_space())
			qq += str(q_World2D.get_direct_space_state())
			
			if Autoload.WRONG_BUGS:
				qq += str(q_World2D.get_canvas())
				qq += str(q_World2D.get_space())
				qq += str(q_World2D.get_direct_space_state())
