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
		
		var q_PackedDataContainer : PackedDataContainer = PackedDataContainer.new()
		
		q_PackedDataContainer._set_data(PoolByteArray([11,124,1241,24,21,214,12,11]))
		
		qq += str(q_PackedDataContainer.pack(String("asfasf")))
		qq += str(q_PackedDataContainer.size())
		
		if Autoload.WRONG_BUGS:
			qq += str(q_PackedDataContainer.pack(String("asfasf")))
			qq += str(q_PackedDataContainer.size())
