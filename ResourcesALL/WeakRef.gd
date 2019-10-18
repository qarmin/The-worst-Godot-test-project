extends Node2D

var q_WeakRef : WeakRef = WeakRef.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_WeakRef = WeakRef.new()

		if randi() % 2 == 1:
			q_WeakRef.get_ref()
