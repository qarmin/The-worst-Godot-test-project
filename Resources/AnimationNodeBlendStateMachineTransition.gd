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
		
		var q_AnimationNodeStateMachineTransition : AnimationNodeStateMachineTransition = AnimationNodeStateMachineTransition.new()
		
		q_AnimationNodeStateMachineTransition.set_switch_mode(randi() % 3) # SwitchMode
		q_AnimationNodeStateMachineTransition.set_auto_advance(bool(randi()%2))
		q_AnimationNodeStateMachineTransition.set_advance_condition("Nom")
		q_AnimationNodeStateMachineTransition.set_xfade_time(randf() * 50)
		q_AnimationNodeStateMachineTransition.set_priority(randi()%50)
		q_AnimationNodeStateMachineTransition.set_disabled(bool(randi()%2))
		
		
		if Autoload.WRONG_BUGS:
			pass
