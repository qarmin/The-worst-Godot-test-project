extends Node2D

var q_VisualScriptSceneNode : VisualScriptSceneNode = VisualScriptSceneNode.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptSceneNode,true)

func nodeFunction(q_VisualScriptSceneNode : VisualScriptSceneNode, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptSceneNode = VisualScriptSceneNode.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptSceneNode)

	if randi() % 2 == 1:
		q_VisualScriptSceneNode.set_node_path(Autoload.get_string())
