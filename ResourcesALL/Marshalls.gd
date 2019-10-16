extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_Marshalls : Marshalls = Marshalls.new()
#
#		Autoload.qq = str(q_Marshalls.base64_to_raw(Autoload.get_string()))
#		Autoload.qq = str(q_Marshalls.base64_to_utf8(Autoload.get_string()))
#		Autoload.qq = str(q_Marshalls.base64_to_variant(Autoload.get_string(),Autoload.get_bool()))
#
#		Autoload.qq = str(q_Marshalls.raw_to_base64(Autoload.get_poolbytearray()))
#		Autoload.qq = str(q_Marshalls.utf8_to_base64(Autoload.get_string()))
#		Autoload.qq = str(q_Marshalls.variant_to_base64(String(),Autoload.get_bool()))
#
