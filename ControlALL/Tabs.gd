extends Tabs

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
			for _i in range(10):
				add_tab(str(randf()),Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			ensure_tab_visible(Autoload.get_int())
		if randi() % 2 == 1:
			qq += str(get_offset_buttons_visible())
		if randi() % 2 == 1:
			qq += str(get_select_with_rmb())
		if randi() % 2 == 1:
			qq += str(get_tab_count())
		if randi() % 2 == 1:
			qq += str(get_tab_disabled(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_tab_icon(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_tab_offset())
		if randi() % 2 == 1:
			qq += str(get_tab_rect(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_tab_title(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_tabs_rearrange_group())
			
		if randi() % 2 == 1:
			set_current_tab(Autoload.get_int())
		if randi() % 2 == 1:
			set_tab_align(Autoload.get_int())
		if randi() % 2 == 1:
			set_tab_close_display_policy(Autoload.get_int())
		if randi() % 2 == 1:
			set_scrolling_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_drag_to_rearrange_enabled(Autoload.get_bool())
			
			
		if randi() % 2 == 1:
			move_tab(Autoload.get_int(), Autoload.get_int())
		if randi() % 2 == 1:
			for _i in range(get_tab_count()):
				remove_tab(randi() % get_tab_count())
			
		if randi() % 2 == 1:
			set_select_with_rmb(Autoload.get_bool())
		if randi() % 2 == 1:
			set_tab_disabled(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_tab_icon(Autoload.get_int(),Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_tab_title(Autoload.get_int(),str(randi()%50))
		if randi() % 2 == 1:
			set_tabs_rearrange_group(Autoload.get_int())
			
