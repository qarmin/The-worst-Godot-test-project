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
		
		var q_WebRTCMultiplayer : WebRTCMultiplayer = WebRTCMultiplayer.new()
		
		#qq += str(q_WebRTCMultiplayer.add_peer( WebRTCPeerConnection.new(), 0, 0 ))
		q_WebRTCMultiplayer.close()
		
		#qq += str(q_WebRTCMultiplayer.get_peer( 0 ))
		qq += str(q_WebRTCMultiplayer.get_peers())
		
		qq += str(q_WebRTCMultiplayer.has_peer( 0 ))
		qq += str(q_WebRTCMultiplayer.initialize( 0, bool(randi()%2)))
		#q_WebRTCMultiplayer.remove_peer( 0 )
		
		if Autoload.WRONG_BUGS:
			qq += str(q_WebRTCMultiplayer.add_peer( WebRTCPeerConnection.new(), randi() % 1000 - 500, randi() % 1000 - 500 ))
			q_WebRTCMultiplayer.close()
			
			qq += str(q_WebRTCMultiplayer.get_peer( randi() % 1000 - 500 ))
			qq += str(q_WebRTCMultiplayer.get_peers())
			
			qq += str(q_WebRTCMultiplayer.has_peer( randi() % 1000 - 500 ))
			qq += str(q_WebRTCMultiplayer.initialize( randi() % 1000 - 500, bool(randi()%2)))
			q_WebRTCMultiplayer.remove_peer( randi() % 1000 - 500 )
