extends HTTPRequest

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_HTTPRequest :HTTPRequest) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_HTTPRequest)
		AutoObjects.A_Node(q_HTTPRequest)
		
	if randi() % 2 == 1:
		set_download_file(Autoload.get_string())
	if randi() % 2 == 1:
		set_use_threads(Autoload.get_bool())
	if randi() % 2 == 1:
		set_body_size_limit(Autoload.get_int())
	if randi() % 2 == 1:
		set_max_redirects(Autoload.get_int())

	if randi() % 2 == 1:
		cancel_request()

	if randi() % 2 == 1:
		get_body_size()
	if randi() % 2 == 1:
		get_downloaded_bytes()
	if randi() % 2 == 1:
		get_http_client_status()

	if randi() % 2 == 1:
		request(Autoload.get_string(), Autoload.get_poolstringarray(),Autoload.get_bool(), Autoload.get_int(), Autoload.get_string())
