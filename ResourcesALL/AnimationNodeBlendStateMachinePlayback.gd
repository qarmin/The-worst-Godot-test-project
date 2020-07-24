extends Node2D

var q_AnimationNodeStateMachinePlayback: AnimationNodeStateMachinePlayback = AnimationNodeStateMachinePlayback.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeStateMachinePlayback, true)


func nodeFunction(q_AnimationNodeStateMachinePlayback: AnimationNodeStateMachinePlayback, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeStateMachinePlayback = AnimationNodeStateMachinePlayback.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AnimationNodeStateMachinePlayback)

	if randi() % 2 == 1:
		q_AnimationNodeStateMachinePlayback.get_current_node()
	if randi() % 2 == 1:
		q_AnimationNodeStateMachinePlayback.get_travel_path()

	if randi() % 2 == 1:
		q_AnimationNodeStateMachinePlayback.is_playing()
	if randi() % 2 == 1:
		q_AnimationNodeStateMachinePlayback.start(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationNodeStateMachinePlayback.stop()
	if randi() % 2 == 1:
		q_AnimationNodeStateMachinePlayback.travel(Autoload.get_string())
