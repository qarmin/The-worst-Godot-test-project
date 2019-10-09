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
		
		var q_StreamPeerBuffer : StreamPeerBuffer = StreamPeerBuffer.new()
		if !Autoload.RANDI:
			
			q_StreamPeerBuffer.set_data_array(PoolByteArray([11,124,1241,24,21,214,12,11]))
			
			q_StreamPeerBuffer.clear()
			qq += str(q_StreamPeerBuffer.duplicate())
			
			qq += str(q_StreamPeerBuffer.get_position())
			qq += str(q_StreamPeerBuffer.get_size())
			
			q_StreamPeerBuffer.resize( randi()%50)
			q_StreamPeerBuffer.seek( 0 )
			
			if Autoload.WRONG_BUGS:
				q_StreamPeerBuffer.set_data_array(PoolByteArray([11,124,1241,24,21,214,12,11]))
				
				q_StreamPeerBuffer.clear()
				qq += str(q_StreamPeerBuffer.duplicate())
				
				qq += str(q_StreamPeerBuffer.get_position())
				qq += str(q_StreamPeerBuffer.get_size())
				
				q_StreamPeerBuffer.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_StreamPeerBuffer.seek( randi() % Autoload.RANGE - Autoload.RANGE / 2 )

		else: #RANDI
			if randi() % 2 == 1:
				q_StreamPeerBuffer.set_data_array(PoolByteArray([11,124,1241,24,21,214,12,11]))
				
			if randi() % 2 == 1:
				q_StreamPeerBuffer.clear()
			if randi() % 2 == 1:
				qq += str(q_StreamPeerBuffer.duplicate())
				
			if randi() % 2 == 1:
				qq += str(q_StreamPeerBuffer.get_position())
			if randi() % 2 == 1:
				qq += str(q_StreamPeerBuffer.get_size())
				
			if randi() % 2 == 1:
				q_StreamPeerBuffer.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_StreamPeerBuffer.seek( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
