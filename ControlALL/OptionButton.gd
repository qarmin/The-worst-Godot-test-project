extends OptionButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_OptionButton : OptionButton) -> void:

	if randi() % 2 == 1:
		AutoControlButton.nodeFunction(q_OptionButton)
		
	if randi() % 2 == 1:
		q_OptionButton.clear()
	if randi() % 2 == 1:
		q_OptionButton._select_int(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.add_icon_item(Autoload.loadA("Sprite.png"),Autoload.get_string())
	if randi() % 2 == 1:
		q_OptionButton.add_item(Autoload.get_string())
	if randi() % 2 == 1:
		q_OptionButton.get_item_count()
	if randi() % 2 == 1:
		q_OptionButton.get_item_icon(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.get_item_id(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.get_item_index(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.get_item_metadata(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.get_item_text(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.get_popup()
	if randi() % 2 == 1:
		q_OptionButton.get_selected_id()
	if randi() % 2 == 1:
		q_OptionButton.get_selected_metadata()
	if randi() % 2 == 1:
		q_OptionButton.is_item_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.select(Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.set_item_disabled(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_OptionButton.set_item_icon(Autoload.get_int(),Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_OptionButton.set_item_id(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.set_item_metadata(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_OptionButton.set_item_text(Autoload.get_int(),Autoload.get_string())
	if randi() % 2 == 1:
		q_OptionButton.remove_item(Autoload.get_int())
