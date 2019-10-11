extends Node2D

var q_StreamPeerTCP : StreamPeerTCP = StreamPeerTCP.new()
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
			q_StreamPeerTCP = StreamPeerTCP.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_StreamPeerTCP.connect_to_host( Autoload.get_string(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			q_StreamPeerTCP.disconnect_from_host()
			
		if randi() % 2 == 1:
			qq += str(q_StreamPeerTCP.get_connected_host())
		if randi() % 2 == 1:
			qq += str(q_StreamPeerTCP.get_connected_port())
		if randi() % 2 == 1:
			qq += str(q_StreamPeerTCP.get_status())
			
		if randi() % 2 == 1:
			qq += str(q_StreamPeerTCP.is_connected_to_host())
		if randi() % 2 == 1:
			q_StreamPeerTCP.set_no_delay( bool(randi()%2))
