extends Node2D

var q_AnimationNodeTransition : AnimationNodeTransition = AnimationNodeTransition.new()
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
			q_AnimationNodeTransition = AnimationNodeTransition.new()
		
#	SLOW	if randi() % 2 == 1:
#			q_AnimationNodeTransition.set_enabled_inputs(Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set_cross_fade_time(Autoload.get_float())
			
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set(Autoload.get_string(),Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set(Autoload.get_string(),Autoload.get_bool())
