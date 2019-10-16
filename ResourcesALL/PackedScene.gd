extends Node2D

var q_PackedScene : PackedScene = PackedScene.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_PackedScene = PackedScene.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_PackedScene.can_instance())
		if randi() % 2 == 1:
			Autoload.qq = str(q_PackedScene.get_state())
#	BUG	if randi() % 2 == 1:
#			Autoload.qq = str(q_PackedScene.instance( Autoload.get_int() ).queue_free()) # GenEditState
		if randi() % 2 == 1:
			Autoload.qq = str(q_PackedScene.pack( self ))
