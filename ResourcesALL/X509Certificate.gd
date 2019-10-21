extends Node2D

var q_X509Certificate : X509Certificate = X509Certificate.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_X509Certificate,true)

func nodeFunction(q_X509Certificate : X509Certificate, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_X509Certificate = X509Certificate.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_X509Certificate)

	if randi() % 2 == 1:
		q_X509Certificate.load("res://TEMP/" + Autoload.get_string())
	if randi() % 2 == 1:
		q_X509Certificate.save("res://TEMP/" + Autoload.get_string())
