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
			q_HTTPClient.set_blocking_mode(Autoload.get_bool())
		if randi() % 2 == 1:
			q_HTTPClient.set_connection(StreamPeer.new())
			
		if randi() % 2 == 1:
			q_HTTPClient.close()
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.connect_to_host( Autoload.get_string(), Autoload.get_int(), Autoload.get_bool(), Autoload.get_bool() ))
	
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
			qq += str(q_HTTPClient.query_string_from_dict( {Autoload.get_string(): Autoload.get_int(), Autoload.get_string(): 124}))
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.read_response_body_chunk())
			
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.request( Autoload.get_int(), Autoload.get_string(), PoolStringArray([Autoload.get_string(),Autoload.get_string(),Autoload.get_string()]), Autoload.get_string() ))#Method
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.read_response_body_chunk())
		if randi() % 2 == 1:
			qq += str(q_HTTPClient.request_raw( Autoload.get_int(), Autoload.get_string(), PoolStringArray([Autoload.get_string(),Autoload.get_string(),Autoload.get_string()]), PoolByteArray([11,124,1241,24,21,214,12,11]) ))#Method
			
		if randi() % 2 == 1:
			q_HTTPClient.set_read_chunk_size( Autoload.get_int() )
