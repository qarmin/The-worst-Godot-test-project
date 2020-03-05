extends Node2D

#var q_Signal : Signal = Autoload.get_Signal()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#		nodeFunction(q_Signal,true)

func nodeFunction(q_Signal : Signal, can_reset : bool = false) -> void:
	pass
