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
#		var q_Marshalls : Marshalls = Marshalls.new()
#
#		qq += str(q_Marshalls.base64_to_raw(Autoload.get_string()))
#		qq += str(q_Marshalls.base64_to_utf8(Autoload.get_string()))
#		qq += str(q_Marshalls.base64_to_variant(Autoload.get_string(),bool(randi()%2)))
#
#		qq += str(q_Marshalls.raw_to_base64(PoolByteArray([1221,124,12421,4])))
#		qq += str(q_Marshalls.utf8_to_base64(Autoload.get_string()))
#		qq += str(q_Marshalls.variant_to_base64(String(),bool(randi()%2)))
#
