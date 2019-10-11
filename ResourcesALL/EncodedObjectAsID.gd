extends Node2D

var q_EncodedObjectAsID : EncodedObjectAsID = EncodedObjectAsID.new()
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
		if randi() % 2 == 1:
			q_EncodedObjectAsID = EncodedObjectAsID.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_EncodedObjectAsID.get_object_id())
		if randi() % 2 == 1:
			q_EncodedObjectAsID.set_object_id(Autoload.get_randi())
