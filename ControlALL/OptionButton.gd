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
			_select_int(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			add_icon_item(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			add_item(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_count())
		if randi() % 2 == 1:
			qq += str(get_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_id(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_index(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_popup())
		if randi() % 2 == 1:
			qq += str(get_selected_id())
		if randi() % 2 == 1:
			qq += str(get_selected_metadata())
		if randi() % 2 == 1:
			qq += str(is_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			select(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_item_id(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			remove_item(randi() % Autoload.RANGE - Autoload.RANGE / 2)
