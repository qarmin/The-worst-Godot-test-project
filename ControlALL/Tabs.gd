extends Tabs

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
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		for _i in range(10):
			add_tab(str(randf()),load("res://Sprite" + str(randi()%4 + 1) + ".png"))
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
		remove_tab(randi() % get_tab_count())
		
		set_select_with_rmb(bool(randi()%2))
		set_tab_disabled(randi() % get_tab_count(),bool(randi()%2))
		set_tab_icon(randi() % get_tab_count(),load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_tab_title(randi() % get_tab_count(),str(randi()%50))
		set_tabs_rearrange_group(randi()%50)
		
		if Autoload.WRONG_BUGS:
			for _i in range(10):
				add_tab(str(randf()),load("res://Sprite" + str(randi()%10 + 1) + ".png"))
			ensure_tab_visible(randi() % 1000 - 500)
			qq += str(get_offset_buttons_visible())
			qq += str(get_select_with_rmb())
			qq += str(get_tab_count())
			qq += str(get_tab_disabled(randi() % 1000 - 500))
			qq += str(get_tab_icon(randi() % 1000 - 500))
			qq += str(get_tab_offset())
			#qq += str(get_tab_rect(randi() % 1000 - 500))
			qq += str(get_tab_title(randi() % 1000 - 500))
			qq += str(get_tabs_rearrange_group())
			
			set_current_tab(randi() % 1000 - 500)
			set_tab_align(randi() % 1000 - 500)
			set_tab_close_display_policy(randi() % 1000 - 500)
			set_scrolling_enabled(bool(randi()%2))
			set_drag_to_rearrange_enabled(bool(randi()%2))
			
			
			move_tab(randi() % 1000 - 500, randi() % 1000 - 500)
			remove_tab(randi() % 1000 - 500)
			
			set_select_with_rmb(bool(randi()%2))
			set_tab_disabled(randi() % 1000 - 500,bool(randi()%2))
			set_tab_icon(randi() % 1000 - 500,load("res://Sprite" + str(randi()%10 + 1) + ".png"))
			set_tab_title(randi() % 1000 - 500,str(randi()%50))
			set_tabs_rearrange_group(randi() % 1000 - 500)