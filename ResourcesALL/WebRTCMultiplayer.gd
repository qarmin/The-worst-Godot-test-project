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
		if !Autoload.RANDI:
			
			#qq += str(q_WebRTCMultiplayer.add_peer( WebRTCPeerConnection.new(), 0, 0 ))
			q_WebRTCMultiplayer.close()
			
			#qq += str(q_WebRTCMultiplayer.get_peer( 0 ))
			qq += str(q_WebRTCMultiplayer.get_peers())
			
			qq += str(q_WebRTCMultiplayer.has_peer( 0 ))
			qq += str(q_WebRTCMultiplayer.initialize( 0, bool(randi()%2)))
			#q_WebRTCMultiplayer.remove_peer( 0 )
			
			if Autoload.WRONG_BUGS:
				qq += str(q_WebRTCMultiplayer.add_peer( WebRTCPeerConnection.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				q_WebRTCMultiplayer.close()
				
				qq += str(q_WebRTCMultiplayer.get_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_WebRTCMultiplayer.get_peers())
				
				qq += str(q_WebRTCMultiplayer.has_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_WebRTCMultiplayer.initialize( randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)))
				q_WebRTCMultiplayer.remove_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2 )

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_WebRTCMultiplayer.add_peer( WebRTCPeerConnection.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				q_WebRTCMultiplayer.close()
				
			if randi() % 2 == 1:
				qq += str(q_WebRTCMultiplayer.get_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_WebRTCMultiplayer.get_peers())
				
			if randi() % 2 == 1:
				qq += str(q_WebRTCMultiplayer.has_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_WebRTCMultiplayer.initialize( randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)))
			if randi() % 2 == 1:
				q_WebRTCMultiplayer.remove_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
