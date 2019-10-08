extends HTTPRequest

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			set_download_file("asfasf")
			set_use_threads(bool(randi()%2))
			set_body_size_limit(randi()%50)
			set_max_redirects(randi()%50)
			
			cancel_request()
			
			qq += str(get_body_size())
			qq += str(get_downloaded_bytes())
			qq += str(get_http_client_status())
			
			qq += str(request("http://rfasfqw.sfasfasfasfa.asps/asfasfasa/fs", PoolStringArray(["asfasfqwfanfauisf","asfasfiasbfaus","asfqwfasf"]),bool(randi()%2), randi() % HTTPClient.METHOD_MAX, "asfwfafsafs"))
			
			if Autoload.WRONG_BUGS:
				set_download_file("asfasasf")
				set_use_threads(bool(randi()%2))
				set_body_size_limit(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_max_redirects(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				
				cancel_request()
				
				qq += str(get_body_size())
				qq += str(get_downloaded_bytes())
				qq += str(get_http_client_status())
				
				qq += str(request("http://rfasfqw.sfasfasfasfa.asps/asfasfasa/fs", PoolStringArray(["asfasfqwfanfauisf","asfasfiasbfaus","asfqwfasf"]),bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2, "asfwfafsafs"))
	
		else: #RANDI
			if randi() % 2 == 1:
				set_download_file("asfasasf")
			if randi() % 2 == 1:
				set_use_threads(bool(randi()%2))
			if randi() % 2 == 1:
				set_body_size_limit(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_max_redirects(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				cancel_request()
				
			if randi() % 2 == 1:
				qq += str(get_body_size())
			if randi() % 2 == 1:
				qq += str(get_downloaded_bytes())
			if randi() % 2 == 1:
				qq += str(get_http_client_status())
				
			if randi() % 2 == 1:
				qq += str(request("http://rfasfqw.sfasfasfasfa.asps/asfasfasa/fs", PoolStringArray(["asfasfqwfanfauisf","asfasfiasbfaus","asfqwfasf"]),bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2, "asfwfafsafs"))
