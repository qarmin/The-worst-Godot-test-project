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
		if !Autoload.RANDI:
	
			qq += str(q_JSONRPC.make_notification("Zbyt", randi()%50))
			qq += str(q_JSONRPC.make_request("Zbyt", randi()%50, randi()%50))
			qq += str(q_JSONRPC.make_response(randi()%50, randi()%50))
			qq += str(q_JSONRPC.make_response_error(randi()%50, "MESSAGE", randi()%50))
			
			qq += str(q_JSONRPC.process_action(randi()%50, bool(randi()%2)))
			qq += str(q_JSONRPC.process_string("Za"))
			
			q_JSONRPC.set_scope("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaAA", self)
	
			if Autoload.WRONG_BUGS:
				qq += str(q_JSONRPC.make_notification("Zbyt", randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_JSONRPC.make_request("Zbyt", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_JSONRPC.make_response(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_JSONRPC.make_response_error(randi() % Autoload.RANGE - Autoload.RANGE / 2, "MESSAGE", randi() % Autoload.RANGE - Autoload.RANGE / 2))
				
				qq += str(q_JSONRPC.process_action(randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)))
				qq += str(q_JSONRPC.process_string("Za"))
				
				q_JSONRPC.set_scope("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaAA", self)
		
		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_JSONRPC.make_notification("Zbyt", randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_JSONRPC.make_request("Zbyt", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_JSONRPC.make_response(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_JSONRPC.make_response_error(randi() % Autoload.RANGE - Autoload.RANGE / 2, "MESSAGE", randi() % Autoload.RANGE - Autoload.RANGE / 2))
				
			if randi() % 2 == 1:
				qq += str(q_JSONRPC.process_action(randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)))
			if randi() % 2 == 1:
				qq += str(q_JSONRPC.process_string("Za"))
				
			if randi() % 2 == 1:
				q_JSONRPC.set_scope("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaAA", self)
		
		
		
		
		
			q_JSONRPC.free()
