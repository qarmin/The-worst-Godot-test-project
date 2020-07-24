extends Tree

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Tree: Tree, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Tree)
		AutoObjects.A_Node(q_Tree)
		AutoObjects.A_CanvasItem(q_Tree)
		AutoObjects.A_Control(q_Tree)

	if randi() % 2 == 1:
		q_Tree.set_columns(Autoload.get_inti(100))
	if randi() % 2 == 1:
		q_Tree.set_allow_reselect(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tree.set_allow_rmb_select(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tree.set_hide_folding(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tree.set_hide_root(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tree.set_drop_mode_flags(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tree.set_select_mode(Autoload.get_int())

	if randi() % 2 == 1:
		q_Tree.are_column_titles_visible()
	if randi() % 2 == 1:
		q_Tree.clear()
	if randi() % 2 == 1:
		q_Tree.create_item()
	if randi() % 2 == 1:
		q_Tree.ensure_cursor_is_visible()
	if randi() % 2 == 1:
		q_Tree.get_column_at_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Tree.get_column_title(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tree.get_column_width(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tree.get_custom_popup_rect()
	if randi() % 2 == 1:
		q_Tree.get_drop_section_at_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Tree.get_edited()
	if randi() % 2 == 1:
		q_Tree.get_edited_column()
	if randi() % 2 == 1:
		q_Tree.get_item_area_rect(Autoload.get_nodes(q_Tree))
	if randi() % 2 == 1:
		q_Tree.get_item_at_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Tree.get_next_selected(Autoload.get_nodes(q_Tree))
	if randi() % 2 == 1:
		q_Tree.get_pressed_button()
	if randi() % 2 == 1:
		q_Tree.get_root()
	if randi() % 2 == 1:
		q_Tree.get_scroll()
	if randi() % 2 == 1:
		q_Tree.get_selected()
	if randi() % 2 == 1:
		q_Tree.get_selected_column()
	if randi() % 2 == 1:
		q_Tree.set_column_expand(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tree.set_column_min_width(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Tree.set_column_title(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Tree.set_column_titles_visible(Autoload.get_bool())
