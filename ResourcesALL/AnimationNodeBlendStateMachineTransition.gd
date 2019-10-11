extends Node2D

var q_AnimationNodeStateMachineTransition : AnimationNodeStateMachineTransition = AnimationNodeStateMachineTransition.new()
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
			q_AnimationNodeStateMachineTransition = AnimationNodeStateMachineTransition.new()
			
			
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_switch_mode(Autoload.get_randi()) # SwitchMode
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_auto_advance(bool(randi()%2))
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_advance_condition(Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_xfade_time(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_priority(Autoload.get_randi())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_disabled(bool(randi()%2))
