extends Node2D

var q_VisualScriptComment: VisualScriptComment = VisualScriptComment.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptComment, true)


func nodeFunction(q_VisualScriptComment: VisualScriptComment, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptComment = VisualScriptComment.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptComment)

	if randi() % 2 == 1:
		q_VisualScriptComment.set_title(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptComment.set_description(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptComment.set_size(Autoload.get_vector2())
