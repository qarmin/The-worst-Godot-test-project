extends Node2D

var q_AnimationNodeStateMachineTransition : AnimationNodeStateMachineTransition = AnimationNodeStateMachineTransition.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition = AnimationNodeStateMachineTransition.new()

		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_switch_mode(Autoload.get_int()) # SwitchMode
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_auto_advance(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_advance_condition(Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_xfade_time(Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_priority(Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachineTransition.set_disabled(Autoload.get_bool())
