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
		
		clear()
		_select_int(randi()%50)
		add_icon_item(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false),str(randi()%50))
		add_item(str(randi()%50))
		qq += str(get_item_count())
		qq += str(get_item_icon(0))
		qq += str(get_item_id(0))
		qq += str(get_item_index(0))
		qq += str(get_item_metadata(0))
		qq += str(get_item_text(0))
		qq += str(get_popup())
		qq += str(get_selected_id())
		qq += str(get_selected_metadata())
		qq += str(is_item_disabled(0))
		select(0)
		set_item_disabled(0,bool(randi()%2))
		set_item_icon(0,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
		set_item_id(0,0)
		set_item_metadata(0,0)
		set_item_text(0,str(randi()%50))
		remove_item(0)
		
		
		if Autoload.WRONG_BUGS:
			clear()
			_select_int(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			add_icon_item(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			add_item(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_count())
			qq += str(get_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_id(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_index(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_popup())
			qq += str(get_selected_id())
			qq += str(get_selected_metadata())
			qq += str(is_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			select(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			set_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_item_id(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			remove_item(randi() % Autoload.RANGE - Autoload.RANGE / 2)

	else: #RANDI
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
