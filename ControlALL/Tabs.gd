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
				add_tab(str(randf()),Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			ensure_tab_visible(Autoload.get_randi())
		if randi() % 2 == 1:
			qq += str(get_offset_buttons_visible())
		if randi() % 2 == 1:
			qq += str(get_select_with_rmb())
		if randi() % 2 == 1:
			qq += str(get_tab_count())
		if randi() % 2 == 1:
			qq += str(get_tab_disabled(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_tab_icon(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_tab_offset())
		if randi() % 2 == 1:
			qq += str(get_tab_rect(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_tab_title(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_tabs_rearrange_group())
			
		if randi() % 2 == 1:
			set_current_tab(Autoload.get_randi())
		if randi() % 2 == 1:
			set_tab_align(Autoload.get_randi())
		if randi() % 2 == 1:
			set_tab_close_display_policy(Autoload.get_randi())
		if randi() % 2 == 1:
			set_scrolling_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_drag_to_rearrange_enabled(bool(randi()%2))
			
			
		if randi() % 2 == 1:
			move_tab(Autoload.get_randi(), Autoload.get_randi())
		if randi() % 2 == 1:
			for _i in range(get_tab_count()):
				remove_tab(randi() % get_tab_count())
			
		if randi() % 2 == 1:
			set_select_with_rmb(bool(randi()%2))
		if randi() % 2 == 1:
			set_tab_disabled(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			set_tab_icon(Autoload.get_randi(),Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			set_tab_title(Autoload.get_randi(),str(randi()%50))
		if randi() % 2 == 1:
			set_tabs_rearrange_group(Autoload.get_randi())
			
