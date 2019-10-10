extends Node2D

var q_World2D : World2D = World2D.new()
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
			q_World2D = World2D.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_World2D.get_canvas())
		if randi() % 2 == 1:
			qq += str(q_World2D.get_space())
		if randi() % 2 == 1:
			qq += str(q_World2D.get_direct_space_state())
