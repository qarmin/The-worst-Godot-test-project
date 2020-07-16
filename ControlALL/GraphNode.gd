extends GraphNode

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_GraphNode: GraphNode, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_GraphNode)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_GraphNode.set_title(Autoload.get_string())
	if randi() % 2 == 1:
		q_GraphNode.set_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_GraphNode.set_show_close_button(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GraphNode.set_resizable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GraphNode.set_selected(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GraphNode.set_comment(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GraphNode.set_overlay(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.set_slot(
			Autoload.get_int(), Autoload.get_bool(), Autoload.get_int(), Autoload.get_color(), Autoload.get_bool(), Autoload.get_int(), Autoload.get_color(), temp_ImageTexture, temp_ImageTexture
		)  #Not in position
	if randi() % 2 == 1:
		q_GraphNode.clear_slot(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.clear_all_slots()
	if randi() % 2 == 1:
		q_GraphNode.get_connection_input_color(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_connection_input_count()
	if randi() % 2 == 1:
		q_GraphNode.get_connection_input_position(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_connection_input_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_connection_output_color(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_connection_output_count()
	if randi() % 2 == 1:
		q_GraphNode.get_connection_output_position(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_connection_output_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_slot_color_left(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_slot_color_right(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_slot_type_left(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.get_slot_type_right(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.is_slot_enabled_left(Autoload.get_int())
	if randi() % 2 == 1:
		q_GraphNode.is_slot_enabled_right(Autoload.get_int())
