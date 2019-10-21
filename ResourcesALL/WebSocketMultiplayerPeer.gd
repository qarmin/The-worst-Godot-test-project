extends Node2D

var q_WebSocketMultiplayerPeer : WebSocketMultiplayerPeer = WebSocketClient.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_WebSocketMultiplayerPeer,true)

func nodeFunction(q_WebSocketMultiplayerPeer : WebSocketMultiplayerPeer, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_WebSocketMultiplayerPeer = WebSocketMultiplayerPeer.new()
	if randi() % 2 == 1:
		AutoResourcesNetworkedMultiplayerPeer.nodeFunction(q_WebSocketMultiplayerPeer)


	if randi() % 2 == 1:
		q_WebSocketMultiplayerPeer.get_peer( Autoload.get_int())
	if randi() % 2 == 1:
		q_WebSocketMultiplayerPeer.set_buffers( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())

