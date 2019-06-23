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
		
		var q_WebSocketClient : WebSocketClient = WebSocketClient.new()
		
		q_WebSocketClient.set_verify_ssl_enabled(bool(randi()%2))
		
		#qq += str(q_WebSocketClient.connect_to_url( "Walka", PoolStringArray(["Tak","Nie","Być może"]), bool(randi()%2)))
		q_WebSocketClient.disconnect_from_host( randi()%50, "Liga" )
		
		if Autoload.WRONG_BUGS:
			pass
