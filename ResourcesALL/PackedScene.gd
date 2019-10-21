extends Node2D

var q_PackedScene : PackedScene = PackedScene.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedScene,true)

func nodeFunction(q_PackedScene : PackedScene, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PackedScene = PackedScene.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_PackedScene)

	if randi() % 2 == 1:
		q_PackedScene.can_instance()
	if randi() % 2 == 1:
		q_PackedScene.get_state()
#	BUG	if randi() % 2 == 1:
#			q_PackedScene.instance( Autoload.get_int()).queue_free()) # GenEditState
	if randi() % 2 == 1:
		q_PackedScene.pack( self )
