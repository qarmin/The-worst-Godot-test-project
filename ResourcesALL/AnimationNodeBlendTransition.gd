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
		
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set_enabled_inputs(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set_cross_fade_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set("input_" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) +"/name",str(randf()))
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set("input_" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) +"/auto_advance",bool(randi()%2))
