extends GraphEdit

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_GraphEdit: GraphEdit, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_GraphEdit)
		AutoObjects.A_Node(q_GraphEdit)
		AutoObjects.A_CanvasItem(q_GraphEdit)
		AutoObjects.A_Control(q_GraphEdit)

	if randi() % 2 == 1:
		q_GraphEdit.set_right_disconnects(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GraphEdit.set_scroll_ofs(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_GraphEdit.set_snap(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.set_use_snap(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GraphEdit.set_zoom(Autoload.get_float())

	if randi() % 2 == 1:
		q_GraphEdit.add_valid_connection_type(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.add_valid_left_disconnect_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.add_valid_right_disconnect_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.clear_connections()
	if randi() % 2 == 1:
		q_GraphEdit.connect_node(Autoload.get_string(), Autoload.get_int(), Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.disconnect_node(Autoload.get_string(), Autoload.get_int(), Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.get_connection_list()
	if randi() % 2 == 1:
		q_GraphEdit.get_zoom_hbox()
	if randi() % 2 == 1:
		q_GraphEdit.is_node_connected(Autoload.get_string(), Autoload.get_int(), Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.is_valid_connection_type(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.remove_valid_connection_type(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.remove_valid_left_disconnect_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.remove_valid_right_disconnect_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphEdit.set_connection_activity(Autoload.get_string(), Autoload.get_int(), Autoload.get_string(), Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_GraphEdit.set_selected(Autoload.get_nodes(q_GraphEdit))
