extends LineEdit

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_LineEdit : LineEdit, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_LineEdit)
		AutoObjects.A_Node(q_LineEdit)
		AutoObjects.A_CanvasItem(q_LineEdit)
		AutoObjects.A_Control(q_LineEdit)

	if randi() % 2 == 1:
		q_LineEdit.set_text(Autoload.get_string())
	if randi() % 2 == 1:
		q_LineEdit.set_align(Autoload.get_int())
	if randi() % 2 == 1:
		q_LineEdit.set_max_length(Autoload.get_int())
	if randi() % 2 == 1:
		q_LineEdit.set_editable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_LineEdit.set_secret(Autoload.get_bool())
	if randi() % 2 == 1:
		q_LineEdit.set_secret_character(Autoload.get_string())
	if randi() % 2 == 1:
		q_LineEdit.set_expand_to_text_length(Autoload.get_bool())
	if randi() % 2 == 1:
		q_LineEdit.set_focus_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_LineEdit.set_context_menu_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_LineEdit.set_clear_button_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_LineEdit.set_placeholder(Autoload.get_string())
	if randi() % 2 == 1:
		q_LineEdit.set_placeholder_alpha(Autoload.get_float())
	if randi() % 2 == 1:
		q_LineEdit.cursor_set_blink_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_LineEdit.cursor_set_blink_speed(Autoload.get_float())
	if randi() % 2 == 1:
		q_LineEdit.set_cursor_position(Autoload.get_int())

	if randi() % 2 == 1:
		q_LineEdit.append_at_cursor(Autoload.get_string())
	if randi() % 2 == 1:
		q_LineEdit.deselect()
	if randi() % 2 == 1:
		q_LineEdit.get_menu()
	if randi() % 2 == 1:
		q_LineEdit.menu_option(Autoload.get_int())
	if randi() % 2 == 1:
		q_LineEdit.select(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_LineEdit.select_all()

	if randi() % 2 == 1:
		q_LineEdit.clear()
