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
		
		var q_JSONRPC : JSONRPC = JSONRPC.new()

		qq += str(q_JSONRPC.make_notification("Zbyt", randi()%50))
		qq += str(q_JSONRPC.make_request("Zbyt", randi()%50, randi()%50))
		qq += str(q_JSONRPC.make_response(randi()%50, randi()%50))
		qq += str(q_JSONRPC.make_response_error(randi()%50, "MESSAGE", randi()%50))
		
		qq += str(q_JSONRPC.process_action(randi()%50, bool(randi()%2)))
		qq += str(q_JSONRPC.process_string("Za"))
		
		q_JSONRPC.set_scope("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaAA", self)

		if Autoload.WRONG_BUGS:
			qq += str(q_JSONRPC.make_notification("Zbyt", randi() % 1000 - 500))
			qq += str(q_JSONRPC.make_request("Zbyt", randi() % 1000 - 500, randi() % 1000 - 500))
			qq += str(q_JSONRPC.make_response(randi() % 1000 - 500, randi() % 1000 - 500))
			qq += str(q_JSONRPC.make_response_error(randi() % 1000 - 500, "MESSAGE", randi() % 1000 - 500))
			
			qq += str(q_JSONRPC.process_action(randi() % 1000 - 500, bool(randi()%2)))
			qq += str(q_JSONRPC.process_string("Za"))
			
			q_JSONRPC.set_scope("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaAA", self)
		
		q_JSONRPC.free()
