extends Control

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
			set_anchor(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_margin(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_h_grow_direction(randi() % Autoload.RANGE - Autoload.RANGE / 2) #GrowDirection
		if randi() % 2 == 1:
			set_v_grow_direction(randi() % Autoload.RANGE - Autoload.RANGE / 2) #GrowDirection
		if randi() % 2 == 1:
			_set_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			_set_global_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			_set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_custom_minimum_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_rotation_degrees(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_scale(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_pivot_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_clip_contents(bool(randi()%2))
		if randi() % 2 == 1:
			set_tooltip("ToolTip")
		if randi() % 2 == 1:
			set_focus_neighbour(randi() % Autoload.RANGE - Autoload.RANGE / 2,NodePath("Toman"))
		if randi() % 2 == 1:
			set_focus_next(NodePath("Przechwycić"))
		if randi() % 2 == 1:
			set_focus_previous(NodePath("Bazylia"))
		if randi() % 2 == 1:
			set_focus_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #FocusMode
		if randi() % 2 == 1:
			set_mouse_filter(randi() % Autoload.RANGE - Autoload.RANGE / 2) #MouseFilter
		if randi() % 2 == 1:
			set_default_cursor_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2) #CursorShape
		if randi() % 2 == 1:
			set_h_size_flags(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_v_size_flags(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_stretch_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_theme(Autoload.loadA("res://RES/Theme.tres"))

		### qq += str(_clips_input())
		### qq += str(_get_minimum_size())
		### _gui_input(InputEvent.new())
		### qq += str(_make_custom_tooltip("Aha"))
		if randi() % 2 == 1:
			accept_event()
		if randi() % 2 == 1:
			add_color_override("Godotte", Color())
		if randi() % 2 == 1:
			add_constant_override("Środek", randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			add_font_override("Świerszcz", Autoload.loadA("res://RES/DynamicFont.tres"))
		if randi() % 2 == 1:
			add_icon_override("Godotte", Autoload.loadA("res://RES/Sprite3.png"))
		if randi() % 2 == 1:
			add_shader_override("Godotte", Autoload.loadA("res://RES/VisualShader.tres"))
		if randi() % 2 == 1:
			add_stylebox_override("Godotte", Autoload.loadA("res://RES/StyleBoxTexture.tres"))
		### qq += str(can_drop_data(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), "Hehe"))
		### drop_data(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			force_drag("data: Variant", self)
		if randi() % 2 == 1:
			qq += str(get_begin())
		if randi() % 2 == 1:
			qq += str(get_color("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(get_combined_minimum_size())
		if randi() % 2 == 1:
			qq += str(get_constant("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(get_cursor_shape(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
		### qq += str(get_drag_data(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(get_end())
		if randi() % 2 == 1:
			qq += str(get_focus_owner())
		if randi() % 2 == 1:
			qq += str(get_font("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(get_global_rect())
		if randi() % 2 == 1:
			qq += str(get_icon("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(get_minimum_size())
		if randi() % 2 == 1:
			qq += str(get_parent_area_size())
		if randi() % 2 == 1:
			qq += str(get_parent_control())
		if randi() % 2 == 1:
			qq += str(get_rect())
		if randi() % 2 == 1:
			qq += str(get_rotation())
		if randi() % 2 == 1:
			qq += str(get_stylebox("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(get_tooltip(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			grab_click_focus()
		if randi() % 2 == 1:
			grab_focus()
		if randi() % 2 == 1:
			qq += str(has_color("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(has_color_override("Godotte"))
		if randi() % 2 == 1:
			qq += str(has_constant("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(has_constant_override("Godotte"))
		if randi() % 2 == 1:
			qq += str(has_focus())
		if randi() % 2 == 1:
			qq += str(has_font_override("Godotte"))
		if randi() % 2 == 1:
			qq += str(has_icon("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(has_icon_override("Godotte"))
		### qq += str(has_point(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(has_shader_override("Godotte"))
		if randi() % 2 == 1:
			qq += str(has_stylebox("Godotte", "Zrozum"))
		if randi() % 2 == 1:
			qq += str(has_stylebox_override("Godotte"))
		if randi() % 2 == 1:
			minimum_size_changed()
		if randi() % 2 == 1:
			release_focus()
		if randi() % 2 == 1:
			set_anchor(randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2), bool(randi()%2)) #MARGIN
		if randi() % 2 == 1:
			set_anchor_and_margin(randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)) # MARGIN
		if randi() % 2 == 1:
			set_anchors_and_margins_preset(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2) # LayoutPreset, LayoutPresetMode
		if randi() % 2 == 1:
			set_anchors_preset(randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2))# LayoutPreset
		if randi() % 2 == 1:
			set_begin(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_drag_forwarding(self)
		### set_drag_preview(self)
		if randi() % 2 == 1:
			set_end(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_global_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), bool(randi()%2))
		if randi() % 2 == 1:
			set_margins_preset(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2) # LayoutPreset, LayoutPresetMode
		if randi() % 2 == 1:
			set_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), bool(randi()%2))
		if randi() % 2 == 1:
			set_rotation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), bool(randi()%2))
		if randi() % 2 == 1:
			show_modal(bool(randi()%2))
		### warp_mouse(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)) #JUST NO!!!
