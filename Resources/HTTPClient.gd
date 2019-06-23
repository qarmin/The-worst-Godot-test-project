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
		
		var q_HTTPClient : HTTPClient = HTTPClient.new()
		
		q_HTTPClient.set_blocking_mode(bool(randi()%2))
		#q_HTTPClient.set_connection(StreamPeer.new())
		
		q_HTTPClient.close()
		#qq += str(q_HTTPClient.connect_to_host( "Szczur", randi()%50, bool(randi()%2), bool(randi()%2) ))

		qq += str(q_HTTPClient.get_response_body_length())
		qq += str(q_HTTPClient.get_response_code())
		qq += str(q_HTTPClient.get_response_headers())
		qq += str(q_HTTPClient.get_response_headers_as_dictionary())
		qq += str(q_HTTPClient.get_status())
		
		qq += str(q_HTTPClient.has_response())
		qq += str(q_HTTPClient.is_response_chunked())
		qq += str(q_HTTPClient.poll())
		qq += str(q_HTTPClient.query_string_from_dict( {"Ouo": 15, "Kompresja": 124}))
		#qq += str(q_HTTPClient.read_response_body_chunk())
		
		#qq += str(q_HTTPClient.request( randi() % HTTPClient.METHOD_MAX, "Strona", PoolStringArray(["Tak","Nie","Być może"]), "Coś innego" ))#Method
		#qq += str(q_HTTPClient.read_response_body_chunk())
		#qq += str(q_HTTPClient.request_raw( randi() % HTTPClient.METHOD_MAX, "Strona", PoolStringArray(["Tak","Nie","Być może"]), PoolByteArray([11,124,1241,24,21,214,12,11]) ))#Method
		
		q_HTTPClient.set_read_chunk_size( randi()%5000 + 256 )
		
		if Autoload.WRONG_BUGS:
			pass
