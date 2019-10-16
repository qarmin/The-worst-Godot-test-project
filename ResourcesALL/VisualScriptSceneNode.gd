extends Node2D

var q_VisualScriptSceneNode : VisualScriptSceneNode = VisualScriptSceneNode.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptSceneNode = VisualScriptSceneNode.new()

		if randi() % 2 == 1:
			q_VisualScriptSceneNode.set_node_path(Autoload.get_string())
