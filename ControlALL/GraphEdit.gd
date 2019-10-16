extends GraphEdit

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_right_disconnects(Autoload.get_bool())
		if randi() % 2 == 1:
			set_scroll_ofs(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_snap(Autoload.get_int())
		if randi() % 2 == 1:
			set_use_snap(Autoload.get_bool())
		if randi() % 2 == 1:
			set_zoom(Autoload.get_float())

		if randi() % 2 == 1:
			add_valid_connection_type(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			add_valid_left_disconnect_type(Autoload.get_int())
		if randi() % 2 == 1:
			Autoload.qq = str(add_valid_right_disconnect_type(Autoload.get_int()))
		if randi() % 2 == 1:
			clear_connections()
		if randi() % 2 == 1:
			Autoload.qq = str(connect_node(Autoload.get_string(),Autoload.get_int(),Autoload.get_string(),Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(disconnect_node(Autoload.get_string(),Autoload.get_int(),Autoload.get_string(),Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_list())
		if randi() % 2 == 1:
			Autoload.qq = str(get_zoom_hbox())
		if randi() % 2 == 1:
			Autoload.qq = str(is_node_connected(Autoload.get_string(),Autoload.get_int(),Autoload.get_string(),Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(is_valid_connection_type(Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			remove_valid_connection_type(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			remove_valid_left_disconnect_type(Autoload.get_int())
		if randi() % 2 == 1:
			remove_valid_right_disconnect_type(Autoload.get_int())
		if randi() % 2 == 1:
			set_connection_activity(Autoload.get_string(),Autoload.get_int(),Autoload.get_string(),Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			set_selected(Autoload.get_nodes(self))
