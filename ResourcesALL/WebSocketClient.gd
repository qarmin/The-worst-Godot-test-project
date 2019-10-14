extends Node2D

var q_WebSocketClient : WebSocketClient = WebSocketClient.new()
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
			q_WebSocketClient = WebSocketClient.new()
			
		
		if randi() % 2 == 1:
			q_WebSocketClient.set_verify_ssl_enabled(Autoload.get_bool())
			
		if randi() % 2 == 1:
			qq += str(q_WebSocketClient.connect_to_url( Autoload.get_string(), Autoload.get_poolstringarray(), Autoload.get_bool()))
		if randi() % 2 == 1:
			q_WebSocketClient.disconnect_from_host( Autoload.get_int(), Autoload.get_string() )
