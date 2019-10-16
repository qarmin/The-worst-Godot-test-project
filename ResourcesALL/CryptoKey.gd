extends Node2D

var q_CryptoKey : CryptoKey = CryptoKey.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CryptoKey = CryptoKey.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_CryptoKey.load("res://TEMP/" + Autoload.get_string()))
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				Autoload.qq = str(q_CryptoKey.save("res://TEMP/" + Autoload.get_string()))
