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
		if !Autoload.RANDI:
		
			var q_EncodedObjectAsID : EncodedObjectAsID = EncodedObjectAsID.new()
			
			qq += str(q_EncodedObjectAsID.get_object_id())
			q_EncodedObjectAsID.set_object_id(randi()%50)
			
			if Autoload.WRONG_BUGS:
				qq += str(q_EncodedObjectAsID.get_object_id())
				q_EncodedObjectAsID.set_object_id(randi() % Autoload.RANGE - Autoload.RANGE / 2)
