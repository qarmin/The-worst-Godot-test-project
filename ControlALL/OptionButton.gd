extends OptionButton

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
			clear()
		if randi() % 2 == 1:
			_select_int(Autoload.get_int())
		if randi() % 2 == 1:
			add_icon_item(Autoload.loadA("Sprite.png"),str(Autoload.get_int()))
		if randi() % 2 == 1:
			add_item(str(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_item_count())
		if randi() % 2 == 1:
			qq += str(get_item_icon(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_item_id(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_item_index(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_item_metadata(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_item_text(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_popup())
		if randi() % 2 == 1:
			qq += str(get_selected_id())
		if randi() % 2 == 1:
			qq += str(get_selected_metadata())
		if randi() % 2 == 1:
			qq += str(is_item_disabled(Autoload.get_int()))
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
			set_item_text(Autoload.get_int(),str(Autoload.get_int()))
		if randi() % 2 == 1:
			remove_item(Autoload.get_int())
