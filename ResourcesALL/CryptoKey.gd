extends Node2D

var q_CryptoKey : CryptoKey = CryptoKey.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CryptoKey,true)

func nodeFunction(q_CryptoKey : CryptoKey, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_CryptoKey = CryptoKey.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_CryptoKey)

	if randi() % 2 == 1:
		q_CryptoKey.load("res://TEMP/" + Autoload.get_string())
	if randi() % 2 == 1:
		if Autoload.SLOW_FUNCTIONS:
			q_CryptoKey.save("res://TEMP/" + Autoload.get_string())
