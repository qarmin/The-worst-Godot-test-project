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
			set_anchor(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			set_margin(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			set_h_grow_direction(Autoload.get_int()) #GrowDirection
		if randi() % 2 == 1:
			set_v_grow_direction(Autoload.get_int()) #GrowDirection
		if randi() % 2 == 1:
			_set_position(Autoload.get_vector2())
		if randi() % 2 == 1:
			_set_global_position(Autoload.get_vector2())
		if randi() % 2 == 1:
			_set_size(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_custom_minimum_size(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_rotation_degrees(Autoload.get_float())
		if randi() % 2 == 1:
			set_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_pivot_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_clip_contents(Autoload.get_bool())
		if randi() % 2 == 1:
			set_tooltip("ToolTip")
		if randi() % 2 == 1:
			set_focus_neighbour(Autoload.get_int(),NodePath("Toman"))
		if randi() % 2 == 1:
			set_focus_next(NodePath("Przechwycić"))
		if randi() % 2 == 1:
			set_focus_previous(NodePath("Bazylia"))
		if randi() % 2 == 1:
			set_focus_mode(Autoload.get_int()) #FocusMode
		if randi() % 2 == 1:
			set_mouse_filter(Autoload.get_int()) #MouseFilter
		if randi() % 2 == 1:
			set_default_cursor_shape(Autoload.get_int()) #CursorShape
		if randi() % 2 == 1:
			set_h_size_flags(Autoload.get_int())
		if randi() % 2 == 1:
			set_v_size_flags(Autoload.get_int())
		if randi() % 2 == 1:
			set_stretch_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			set_theme(Autoload.loadA("Theme.tres"))

		### qq += str(_clips_input())
		### qq += str(_get_minimum_size())
		### _gui_input(InputEvent.new())
		### qq += str(_make_custom_tooltip("Aha"))
		if randi() % 2 == 1:
			accept_event()
		if randi() % 2 == 1:
			add_color_override("Godotte", Color())
		if randi() % 2 == 1:
			add_constant_override("Środek", Autoload.get_int())
		if randi() % 2 == 1:
			add_font_override("Świerszcz", Autoload.loadA("DynamicFont.tres"))
		if randi() % 2 == 1:
			add_icon_override("Godotte", Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			add_shader_override("Godotte", Autoload.loadA("VisualShader.tres"))
		if randi() % 2 == 1:
			add_stylebox_override("Godotte", Autoload.loadA("StyleBoxTexture.tres"))
		### qq += str(can_drop_data(Autoload.get_vector2(), "Hehe"))
		### drop_data(Autoload.get_vector2()
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
			qq += str(get_cursor_shape(Autoload.get_vector2() ))
		### qq += str(get_drag_data(Autoload.get_vector2()))
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
			qq += str(get_tooltip(Autoload.get_vector2()))
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
		### qq += str(has_point(Autoload.get_vector2()))
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
			set_anchor(Autoload.get_int(), Autoload.get_float(), Autoload.get_bool(), Autoload.get_bool()) #MARGIN
		if randi() % 2 == 1:
			set_anchor_and_margin(Autoload.get_int(), Autoload.get_float(), Autoload.get_float(), Autoload.get_bool()) # MARGIN
		if randi() % 2 == 1:
			set_anchors_and_margins_preset(Autoload.get_int(), Autoload.get_int(), Autoload.get_int()) # LayoutPreset, LayoutPresetMode
		if randi() % 2 == 1:
			set_anchors_preset(Autoload.get_int(), Autoload.get_bool())# LayoutPreset
		if randi() % 2 == 1:
			set_begin(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_drag_forwarding(self)
		### set_drag_preview(self)
		if randi() % 2 == 1:
			set_end(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_global_position(Autoload.get_vector2(), Autoload.get_bool())
		if randi() % 2 == 1:
			set_margins_preset(Autoload.get_int(), Autoload.get_int(), Autoload.get_int()) # LayoutPreset, LayoutPresetMode
		if randi() % 2 == 1:
			set_position(Autoload.get_vector2(), Autoload.get_bool())
		if randi() % 2 == 1:
			set_rotation(Autoload.get_float())
		if randi() % 2 == 1:
			set_size(Autoload.get_vector2(), Autoload.get_bool())
		if randi() % 2 == 1:
			show_modal(Autoload.get_bool())
		### warp_mouse(Autoload.get_vector2()) #JUST NO!!!
