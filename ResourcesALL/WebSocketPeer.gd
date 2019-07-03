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
		
		var q_WebSocketPeer : WebSocketPeer = WebSocketPeer.new()
		
		q_WebSocketPeer.close( randi()%50, "Świadomość" )
		
		#qq += str(q_WebSocketPeer.get_connected_host())
		#qq += str(q_WebSocketPeer.get_connected_port())
		qq += str(q_WebSocketPeer.get_write_mode())
		
		qq += str(q_WebSocketPeer.is_connected_to_host())
		q_WebSocketPeer.set_write_mode( randi() % 2 )#WriteMode
		qq += str(q_WebSocketPeer.was_string_packet())
		
		if Autoload.WRONG_BUGS:
			qq += str(q_WebSocketPeer.get_connected_host())
			qq += str(q_WebSocketPeer.get_connected_port())
			qq += str(q_WebSocketPeer.get_write_mode())
			
			qq += str(q_WebSocketPeer.is_connected_to_host())
			q_WebSocketPeer.set_write_mode( randi()%50 )#WriteMode
			qq += str(q_WebSocketPeer.was_string_packet())