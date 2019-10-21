extends Node2D

var q_Crypto : Crypto = Crypto.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Crypto,true)

func nodeFunction(q_Crypto : Crypto, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_Crypto = Crypto.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_Crypto)

		if randi() % 2 == 1:
			q_Crypto.generate_random_bytes(Autoload.get_inti(200))
		if randi() % 2 == 1:
			q_Crypto.generate_rsa(Autoload.get_inti(200))
		if randi() % 2 == 1:
			q_Crypto.generate_self_signed_certificate(Autoload.loadA("CryptoKey.tres"), Autoload.get_string(), Autoload.get_string(), Autoload.get_string())
