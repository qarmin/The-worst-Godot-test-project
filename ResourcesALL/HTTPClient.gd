extends Node2D

var q_HTTPClient : HTTPClient = HTTPClient.new()
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
			q_HTTPClient = HTTPClient.new()
			
		
		if randi() % 2 == 1:
			q_HTTPClient.set_blocking_mode(bool(randi()%2))
		if randi() % 2 == 1:
			q_HTTPClient.set_connection(StreamPeer.new())
			
		if randi() % 2 == 1:
			q_HTTPClient.close()
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.connect_to_host( "Szczur", randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2), bool(randi()%2) ))
	
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.get_response_body_length())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.get_response_code())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.get_response_headers())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.get_response_headers_as_dictionary())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.get_status())
			
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.has_response())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.is_response_chunked())
#	BUG	if randi() % 2 == 1:
#			qq += str(q_HTTPClient.poll())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.query_string_from_dict( {"Ouo": randi() % Autoload.RANGE - Autoload.RANGE / 2, "Kompresja": 124}))
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.read_response_body_chunk())
			
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.request( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Strona", PoolStringArray(["Tak","Nie","Być może"]), "Coś innego" ))#Method
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.read_response_body_chunk())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.request_raw( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Strona", PoolStringArray(["Tak","Nie","Być może"]), PoolByteArray([11,124,1241,24,21,214,12,11]) ))#Method
			
		if randi() % 2 == 1:
			q_HTTPClient.set_read_chunk_size( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
