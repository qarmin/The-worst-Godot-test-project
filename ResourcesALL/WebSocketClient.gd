extends Node2D

var q_WebSocketClient : WebSocketClient = WebSocketClient.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_WebSocketClient,true)

func nodeFunction(q_WebSocketClient : WebSocketClient, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_WebSocketClient = WebSocketClient.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_WebSocketClient)

	if randi() % 2 == 1:
		q_WebSocketClient.set_verify_ssl_enabled(Autoload.get_bool())

	if randi() % 2 == 1:
		q_WebSocketClient.connect_to_url( Autoload.get_string(), Autoload.get_poolstringarray(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_WebSocketClient.disconnect_from_host( Autoload.get_int(), Autoload.get_string())
