extends OptionButton

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		clear()
		_select_int(randi()%50)
		add_icon_item(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),str(randi()%50))
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
		set_item_icon(0,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_item_id(0,0)
		set_item_metadata(0,0)
		set_item_text(0,str(randi()%50))
		remove_item(0)
		
		
		if Autoload.WRONG_BUGS:
			clear()
			_select_int(randi() % 1000 - 500)
			add_icon_item(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),str(randi() % 1000 - 500))
			add_item(str(randi() % 1000 - 500))
			qq += str(get_item_count())
			qq += str(get_item_icon(randi() % 1000 - 500))
			qq += str(get_item_id(randi() % 1000 - 500))
			qq += str(get_item_index(randi() % 1000 - 500))
			qq += str(get_item_metadata(randi() % 1000 - 500))
			qq += str(get_item_text(randi() % 1000 - 500))
			qq += str(get_popup())
			qq += str(get_selected_id())
			qq += str(get_selected_metadata())
			qq += str(is_item_disabled(randi() % 1000 - 500))
			select(randi() % 1000 - 500)
			set_item_disabled(randi() % 1000 - 500,bool(randi()%2))
			set_item_icon(randi() % 1000 - 500,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_item_id(randi() % 1000 - 500,randi() % 1000 - 500)
			set_item_metadata(randi() % 1000 - 500,randi() % 1000 - 500)
			set_item_text(randi() % 1000 - 500,str(randi() % 1000 - 500))
			remove_item(randi() % 1000 - 500)
