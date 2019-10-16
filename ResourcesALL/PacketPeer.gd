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
#
#		var q_PacketPeer : PacketPeer = PacketPeer.new()
#
#		q_PacketPeer.set_allow_object_decoding(Autoload.get_bool())
#
#		qq += str(q_PacketPeer.get_available_packet_count())
#		qq += str(q_PacketPeer.get_packet())
#		qq += str(q_PacketPeer.get_packet_error())
#		qq += str(q_PacketPeer.get_var( Autoload.get_bool()))
#
#		qq += str(q_PacketPeer.put_packet( Autoload.get_poolbytearray()))
#		qq += str(q_PacketPeer.put_var(Autoload.get_string(), Autoload.get_bool()))
#
