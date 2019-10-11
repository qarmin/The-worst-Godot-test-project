extends Node2D

var q_WebRTCMultiplayer : WebRTCMultiplayer = WebRTCMultiplayer.new()
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
			q_WebRTCMultiplayer = WebRTCMultiplayer.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_WebRTCMultiplayer.add_peer( WebRTCPeerConnection.new(), Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			q_WebRTCMultiplayer.close()
			
		if randi() % 2 == 1:
			qq += str(q_WebRTCMultiplayer.get_peer( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_WebRTCMultiplayer.get_peers())
			
		if randi() % 2 == 1:
			qq += str(q_WebRTCMultiplayer.has_peer( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_WebRTCMultiplayer.initialize( Autoload.get_randi(), bool(randi()%2)))
		if randi() % 2 == 1:
			q_WebRTCMultiplayer.remove_peer( Autoload.get_randi() )
