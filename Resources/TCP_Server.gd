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
		
		var q_TCP_Server : TCP_Server = TCP_Server.new()
		
		qq += str(q_TCP_Server.is_connection_available())
		#qq += str(q_TCP_Server.listen( randi()%50, "Zero" ))
		q_TCP_Server.stop()
		qq += str(q_TCP_Server.take_connection())
		
		if Autoload.WRONG_BUGS:
			pass
