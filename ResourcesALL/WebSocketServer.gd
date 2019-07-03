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
#SPAM
#		var q_WebSocketServer : WebSocketServer = WebSocketServer.new()
#
#		#q_WebSocketServer.disconnect_peer( 0, randi()%50, "Jeden" )
#
#		#qq += str(q_WebSocketServer.get_peer_address( 0 ))
#		#qq += str(q_WebSocketServer.get_peer_port( 0 ))
#
#		qq += str(q_WebSocketServer.has_peer( 0 ))
#		qq += str(q_WebSocketServer.is_listening())
#		#qq += str(q_WebSocketServer.listen( 0, PoolStringArray(["Tak","Nie","Być może"]), bool(randi()%2)))
#		q_WebSocketServer.stop()
#
#		if Autoload.WRONG_BUGS:
#			q_WebSocketServer.disconnect_peer( randi() % 1000 - 500, randi() % 1000 - 500, "Jeden" )
#
#			qq += str(q_WebSocketServer.get_peer_address( randi() % 1000 - 500 ))
#			qq += str(q_WebSocketServer.get_peer_port( randi() % 1000 - 500 ))
#
#			qq += str(q_WebSocketServer.has_peer( randi() % 1000 - 500 ))
#			qq += str(q_WebSocketServer.is_listening())
#			qq += str(q_WebSocketServer.listen( randi() % 1000 - 500, PoolStringArray(["Tak","Nie","Być może"]), bool(randi()%2)))
#			q_WebSocketServer.stop()
