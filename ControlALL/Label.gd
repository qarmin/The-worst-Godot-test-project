extends Label

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Label: Label, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Label)
		AutoObjects.A_Node(q_Label)
		AutoObjects.A_CanvasItem(q_Label)
		AutoObjects.A_Control(q_Label)

	if randi() % 2 == 1:
		q_Label.set_text(Autoload.get_string())
	if randi() % 2 == 1:
		q_Label.set_align(Autoload.get_int())
	if randi() % 2 == 1:
		q_Label.set_valign(Autoload.get_int())
	if randi() % 2 == 1:
		q_Label.set_autowrap(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Label.set_clip_text(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Label.set_uppercase(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Label.set_visible_characters(Autoload.get_int())
	if randi() % 2 == 1:
		q_Label.set_percent_visible(Autoload.get_int())
	if randi() % 2 == 1:
		q_Label.set_lines_skipped(Autoload.get_int())
	if randi() % 2 == 1:
		q_Label.set_max_lines_visible(Autoload.get_int())

	if randi() % 2 == 1:
		q_Label.get_line_count()
	if randi() % 2 == 1:
		q_Label.get_line_height()
	if randi() % 2 == 1:
		q_Label.get_total_character_count()
	if randi() % 2 == 1:
		q_Label.get_visible_line_count()
