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
		
		var q_StreamPeerTCP : StreamPeerTCP = StreamPeerTCP.new()
		
		qq += str(q_StreamPeerTCP.connect_to_host( "Hosting", 0 ))
		q_StreamPeerTCP.disconnect_from_host()
		
		qq += str(q_StreamPeerTCP.get_connected_host())
		qq += str(q_StreamPeerTCP.get_connected_port())
		qq += str(q_StreamPeerTCP.get_status())
		
		qq += str(q_StreamPeerTCP.is_connected_to_host())
		q_StreamPeerTCP.set_no_delay( bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			pass
