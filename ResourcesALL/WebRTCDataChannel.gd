extends Node2D

@onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
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
