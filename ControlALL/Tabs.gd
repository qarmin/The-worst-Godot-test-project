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
		
		for _i in range(10):
			add_tab(str(randf()),load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		ensure_tab_visible(randi() % get_tab_count())
		qq += str(get_offset_buttons_visible())
		qq += str(get_select_with_rmb())
		qq += str(get_tab_count())
		qq += str(get_tab_disabled(randi() % get_tab_count()))
		qq += str(get_tab_icon(randi() % get_tab_count()))
		qq += str(get_tab_offset())
		qq += str(get_tab_rect(randi() % get_tab_count()))
		qq += str(get_tab_title(randi() % get_tab_count()))
		qq += str(get_tabs_rearrange_group())
		
		set_current_tab(randi() % get_tab_count())
		set_tab_align(randi() % ALIGN_MAX)
		set_tab_close_display_policy(randi() % 3)
		set_scrolling_enabled(bool(randi()%2))
		set_drag_to_rearrange_enabled(bool(randi()%2))
		
		move_tab(randi() % 2, randi() % 2 + 3)
		
		#MOVED remove_tab(randi() % get_tab_count())
		
		set_select_with_rmb(bool(randi()%2))
		set_tab_disabled(randi() % get_tab_count(),bool(randi()%2))
		set_tab_icon(randi() % get_tab_count(),load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_tab_title(randi() % get_tab_count(),str(randi()%50))
		set_tabs_rearrange_group(randi()%50)
		
		for _i in range(get_tab_count()):
			remove_tab(randi() % get_tab_count())
		
		if Autoload.WRONG_BUGS:
			for _i in range(10):
				add_tab(str(randf()),load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
			ensure_tab_visible(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			qq += str(get_offset_buttons_visible())
			qq += str(get_select_with_rmb())
			qq += str(get_tab_count())
			qq += str(get_tab_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_tab_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_tab_offset())
			qq += str(get_tab_rect(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_tab_title(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_tabs_rearrange_group())
			
			set_current_tab(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_tab_align(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_tab_close_display_policy(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_scrolling_enabled(bool(randi()%2))
			set_drag_to_rearrange_enabled(bool(randi()%2))
			
			
			move_tab(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
			#MOVED remove_tab(randi() % get_tab_count())
			
			set_select_with_rmb(bool(randi()%2))
			set_tab_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			set_tab_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
			set_tab_title(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi()%50))
			set_tabs_rearrange_group(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
			for _i in range(get_tab_count()):
				remove_tab(randi() % get_tab_count())

	else: #RANDI
		for _i in range(10):
			add_tab(str(randf()),load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
		if randi() % 2 == 1:
			ensure_tab_visible(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(get_offset_buttons_visible())
		if randi() % 2 == 1:
			qq += str(get_select_with_rmb())
		if randi() % 2 == 1:
			qq += str(get_tab_count())
		if randi() % 2 == 1:
			qq += str(get_tab_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_tab_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_tab_offset())
		if randi() % 2 == 1:
			qq += str(get_tab_rect(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_tab_title(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_tabs_rearrange_group())
			
		if randi() % 2 == 1:
			set_current_tab(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_tab_align(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_tab_close_display_policy(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_scrolling_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_drag_to_rearrange_enabled(bool(randi()%2))
			
			
		if randi() % 2 == 1:
			move_tab(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
			#MOVED remove_tab(randi() % get_tab_count())
			
		if randi() % 2 == 1:
			set_select_with_rmb(bool(randi()%2))
		if randi() % 2 == 1:
			set_tab_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_tab_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
		if randi() % 2 == 1:
			set_tab_title(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi()%50))
		if randi() % 2 == 1:
			set_tabs_rearrange_group(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
		for _i in range(get_tab_count()):
			remove_tab(randi() % get_tab_count())
