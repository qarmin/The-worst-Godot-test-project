extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		var q_NetworkedMultiplayerPeer : NetworkedMultiplayerPeer = NetworkedMultiplayerPeer.new()
#
#		q_NetworkedMultiplayerPeer.set_refuse_new_connections(Autoload.get_bool())
#		q_NetworkedMultiplayerPeer.set_transfer_mode(randi() % 3) #TransferMode
#
#		q_NetworkedMultiplayerPeer.get_connection_status()
#		q_NetworkedMultiplayerPeer.get_packet_peer()
#		q_NetworkedMultiplayerPeer.get_unique_id()
#		q_NetworkedMultiplayerPeer.poll()
#		q_NetworkedMultiplayerPeer.set_target_peer( 0 )
#
