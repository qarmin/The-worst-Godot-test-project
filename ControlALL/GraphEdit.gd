extends GraphEdit

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
			set_right_disconnects(bool(randi()%2))
		if randi() % 2 == 1:
			set_scroll_ofs(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_snap(Autoload.get_randi())
		if randi() % 2 == 1:
			set_use_snap(bool(randi()%2))
		if randi() % 2 == 1:
			set_zoom(Autoload.get_randf())
			
		if randi() % 2 == 1:
			add_valid_connection_type(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			add_valid_left_disconnect_type(Autoload.get_randi())
		if randi() % 2 == 1:
			qq += str(add_valid_right_disconnect_type(Autoload.get_randi()))
		if randi() % 2 == 1:
			clear_connections()
		if randi() % 2 == 1:
			qq += str(connect_node(Autoload.get_string(),Autoload.get_randi(),Autoload.get_string(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(disconnect_node(Autoload.get_string(),Autoload.get_randi(),Autoload.get_string(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_connection_list())
		if randi() % 2 == 1:
			qq += str(get_zoom_hbox())
		if randi() % 2 == 1:
			qq += str(is_node_connected(Autoload.get_string(),Autoload.get_randi(),Autoload.get_string(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(is_valid_connection_type(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			remove_valid_connection_type(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			remove_valid_left_disconnect_type(Autoload.get_randi())
		if randi() % 2 == 1:
			remove_valid_right_disconnect_type(Autoload.get_randi())
		if randi() % 2 == 1:
			set_connection_activity(Autoload.get_string(),Autoload.get_randi(),Autoload.get_string(),Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			set_selected(get_parent().get_child(randi() % get_parent().get_child_count()))
