extends Node2D

var q_StreamPeerBuffer : StreamPeerBuffer = StreamPeerBuffer.new()
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
			q_StreamPeerBuffer = StreamPeerBuffer.new()
		
		
		if randi() % 2 == 1:
			q_StreamPeerBuffer.set_data_array(Autoload.get_poolbytearray())
			
		if randi() % 2 == 1:
			q_StreamPeerBuffer.clear()
		if randi() % 2 == 1:
			qq += str(q_StreamPeerBuffer.duplicate())
			
		if randi() % 2 == 1:
			qq += str(q_StreamPeerBuffer.get_position())
		if randi() % 2 == 1:
			qq += str(q_StreamPeerBuffer.get_size())
			
		if randi() % 2 == 1:
			q_StreamPeerBuffer.resize( Autoload.get_int())
		if randi() % 2 == 1:
			q_StreamPeerBuffer.seek( Autoload.get_int() )
