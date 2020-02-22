extends Node2D

var q_MultiplayerAPI : MultiplayerAPI = MultiplayerAPI.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_MultiplayerAPI,true)

func nodeFunction(q_MultiplayerAPI : MultiplayerAPI, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_MultiplayerAPI = MultiplayerAPI.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MultiplayerAPI)
		
	### START TEMP
	var temp_NetworkedMultiplayerENet : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
	AutoResourcesNetworkedMultiplayerENet.nodeFunction(temp_NetworkedMultiplayerENet)
	
	var temp_Node : Node = Node.new()
	AutoObjects.A_Node(temp_Node)
	
	### END TEMP

	if randi() % 2 == 1:
		q_MultiplayerAPI.set_allow_object_decoding(Autoload.get_bool())
	if randi() % 2 == 1:
		q_MultiplayerAPI.set_refuse_new_network_connections(Autoload.get_bool())
	if randi() % 2 == 1:
		q_MultiplayerAPI.set_network_peer(temp_NetworkedMultiplayerENet)

	if randi() % 2 == 1:
		q_MultiplayerAPI.clear()

	if randi() % 2 == 1:
		q_MultiplayerAPI.get_network_connected_peers()
	if randi() % 2 == 1:
		q_MultiplayerAPI.get_network_unique_id()
	if randi() % 2 == 1:
		q_MultiplayerAPI.get_rpc_sender_id()

	if randi() % 2 == 1:
		q_MultiplayerAPI.has_network_peer()
	if randi() % 2 == 1:
		q_MultiplayerAPI.is_network_server()
	if randi() % 2 == 1:
		q_MultiplayerAPI.poll()
	if randi() % 2 == 1:
		q_MultiplayerAPI.send_bytes( Autoload.get_packedbytearray())#TransferNode
	if randi() % 2 == 1:
		q_MultiplayerAPI.set_root_node( temp_Node)

	### CLEANING
	temp_Node.queue_free()
	### END CLEANING
