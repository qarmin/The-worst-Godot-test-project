extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
#		var q_WebRTCDataChannel : WebRTCDataChannel = WebRTCDataChannel.new()
#
#		q_WebRTCDataChannel.close()
#
#		q_WebRTCDataChannel.get_id()
#		q_WebRTCDataChannel.get_label()
#		q_WebRTCDataChannel.get_max_packet_life_time()
#		q_WebRTCDataChannel.get_max_retransmits()
#		q_WebRTCDataChannel.get_protocol()
#		q_WebRTCDataChannel.get_ready_state()
#
#		q_WebRTCDataChannel.is_negotiated()
#		q_WebRTCDataChannel.is_ordered()
#
#		q_WebRTCDataChannel.poll()
#		q_WebRTCDataChannel.was_string_packet()
#
#		if Autoload.WRONG_BUGS:
#			pass
