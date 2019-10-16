extends OptionButton

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			_select_int(Autoload.get_int())
		if randi() % 2 == 1:
			add_icon_item(Autoload.loadA("Sprite.png"),Autoload.get_string())
		if randi() % 2 == 1:
			add_item(Autoload.get_string())
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_icon(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_id(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_index(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_metadata(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_text(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_popup())
		if randi() % 2 == 1:
			Autoload.qq = str(get_selected_id())
		if randi() % 2 == 1:
			Autoload.qq = str(get_selected_metadata())
		if randi() % 2 == 1:
			Autoload.qq = str(is_item_disabled(Autoload.get_int()))
		if randi() % 2 == 1:
			select(Autoload.get_int())
		if randi() % 2 == 1:
			set_item_disabled(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_item_icon(Autoload.get_int(),Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_item_id(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			set_item_metadata(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			set_item_text(Autoload.get_int(),Autoload.get_string())
		if randi() % 2 == 1:
			remove_item(Autoload.get_int())
