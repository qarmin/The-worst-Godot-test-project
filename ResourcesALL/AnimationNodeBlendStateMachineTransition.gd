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
		if !Autoload.RANDI:
			q_AnimationNodeStateMachineTransition.set_switch_mode(randi() % 3) # SwitchMode
			q_AnimationNodeStateMachineTransition.set_auto_advance(bool(randi()%2))
			q_AnimationNodeStateMachineTransition.set_advance_condition("Nom")
			q_AnimationNodeStateMachineTransition.set_xfade_time(randf() * 50)
			q_AnimationNodeStateMachineTransition.set_priority(randi()%50)
			q_AnimationNodeStateMachineTransition.set_disabled(bool(randi()%2))
			
			
			if Autoload.WRONG_BUGS:
				q_AnimationNodeStateMachineTransition.set_switch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # SwitchMode
				q_AnimationNodeStateMachineTransition.set_auto_advance(bool(randi()%2))
				q_AnimationNodeStateMachineTransition.set_advance_condition("Nom")
				q_AnimationNodeStateMachineTransition.set_xfade_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AnimationNodeStateMachineTransition.set_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_AnimationNodeStateMachineTransition.set_disabled(bool(randi()%2))

		else: #RANDI
			if randi() % 2 == 1:
				q_AnimationNodeStateMachineTransition.set_switch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # SwitchMode
			if randi() % 2 == 1:
				q_AnimationNodeStateMachineTransition.set_auto_advance(bool(randi()%2))
			if randi() % 2 == 1:
				q_AnimationNodeStateMachineTransition.set_advance_condition("Nom")
			if randi() % 2 == 1:
				q_AnimationNodeStateMachineTransition.set_xfade_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AnimationNodeStateMachineTransition.set_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AnimationNodeStateMachineTransition.set_disabled(bool(randi()%2))
