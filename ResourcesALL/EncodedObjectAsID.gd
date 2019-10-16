extends Node2D

var q_EncodedObjectAsID : EncodedObjectAsID = EncodedObjectAsID.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_EncodedObjectAsID = EncodedObjectAsID.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_EncodedObjectAsID.get_object_id())
		if randi() % 2 == 1:
			q_EncodedObjectAsID.set_object_id(Autoload.get_int())
