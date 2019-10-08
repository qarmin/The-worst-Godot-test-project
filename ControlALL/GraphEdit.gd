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
		
		set_right_disconnects(bool(randi()%2))
		set_scroll_ofs(Vector2(randf() * 50,randf() * 50))
		set_snap(randi()%50 + 10)
		set_use_snap(bool(randi()%2))
		set_zoom(randf() * 50)
		
		add_valid_connection_type(10,12)
		add_valid_left_disconnect_type(0)
		qq += str(add_valid_right_disconnect_type(0))
		clear_connections()
		qq += str(connect_node("self",10,"fles",12))
		qq += str(disconnect_node("self",10,"fles",12))
		qq += str(get_connection_list())
		qq += str(get_zoom_hbox())
		qq += str(is_node_connected("self",10,"fles",12))
		qq += str(is_valid_connection_type(10,12))
		remove_valid_connection_type(10,12)
		remove_valid_left_disconnect_type(0)
		remove_valid_right_disconnect_type(0)
		set_connection_activity("self",10,"fles",12,randf() * 50)
		set_selected(self)
		
		if Autoload.WRONG_BUGS:
			set_right_disconnects(bool(randi()%2))
			set_scroll_ofs(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			set_snap(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
			set_use_snap(bool(randi()%2))
			set_zoom(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
			add_valid_connection_type(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
			add_valid_left_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
			qq += str(add_valid_right_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
			clear_connections()
			qq += str(connect_node("qwfqafvasfqw",randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2,"qwgfewgregser",randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(disconnect_node("qwtqwagae",randi() % Autoload.RANGE - Autoload.RANGE / 2,"fqasfqwgfqw",randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_connection_list())
			qq += str(get_zoom_hbox())
			qq += str(is_node_connected("qqwtqwdaff",randi() % Autoload.RANGE - Autoload.RANGE / 2,"fqqwqwrqwt",randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_valid_connection_type(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			remove_valid_connection_type(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			remove_valid_left_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			remove_valid_right_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_connection_activity("qwtqwa",randi() % Autoload.RANGE - Autoload.RANGE / 2,"qwfqwfa",randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
			set_selected(get_parent().get_child(randi() % get_parent().get_child_count()))

	else: #RANDI
		if randi() % 2 == 1:
			set_right_disconnects(bool(randi()%2))
		if randi() % 2 == 1:
			set_scroll_ofs(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_snap(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_use_snap(bool(randi()%2))
		if randi() % 2 == 1:
			set_zoom(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
			add_valid_connection_type(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			add_valid_left_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(add_valid_right_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			clear_connections()
		if randi() % 2 == 1:
			qq += str(connect_node("qwfqafvasfqw",randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2,"qwgfewgregser",randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(disconnect_node("qwtqwagae",randi() % Autoload.RANGE - Autoload.RANGE / 2,"fqasfqwgfqw",randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_connection_list())
		if randi() % 2 == 1:
			qq += str(get_zoom_hbox())
		if randi() % 2 == 1:
			qq += str(is_node_connected("qqwtqwdaff",randi() % Autoload.RANGE - Autoload.RANGE / 2,"fqqwqwrqwt",randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_valid_connection_type(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			remove_valid_connection_type(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			remove_valid_left_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			remove_valid_right_disconnect_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_connection_activity("qwtqwa",randi() % Autoload.RANGE - Autoload.RANGE / 2,"qwfqwfa",randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_selected(get_parent().get_child(randi() % get_parent().get_child_count()))
