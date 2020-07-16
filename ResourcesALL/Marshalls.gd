extends Node2D

onready var counter: float = Autoload.get_rand_time()


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
#
#		var q_Marshalls : Marshalls = Marshalls.new()
#
#		q_Marshalls.base64_to_raw(Autoload.get_string()))
#		q_Marshalls.base64_to_utf8(Autoload.get_string()))
#		q_Marshalls.base64_to_variant(Autoload.get_string(),Autoload.get_bool()))
#
#		q_Marshalls.raw_to_base64(Autoload.get_packedbytearray()))
#		q_Marshalls.utf8_to_base64(Autoload.get_string()))
#		q_Marshalls.variant_to_base64(String(),Autoload.get_bool()))
#
