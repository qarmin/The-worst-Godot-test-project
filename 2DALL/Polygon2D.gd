extends Polygon2D

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
			set_color(Autoload.get_color())
		if randi() % 2 == 1:
			set_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_antialiased(Autoload.get_bool())
		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_texture_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_texture_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_texture_rotation_degrees(Autoload.get_float())
		if randi() % 2 == 1:
			set_texture_rotation(Autoload.get_float())
		if randi() % 2 == 1:
			set_skeleton(Autoload.get_string())
		if randi() % 2 == 1:
			set_invert(Autoload.get_bool())
		if randi() % 2 == 1:
			set_invert_border(Autoload.get_float())
		if randi() % 2 == 1:
			set_polygon(Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			set_uv(Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			set_vertex_colors(Autoload.get_poolcolorarray())
		if randi() % 2 == 1:
			set_polygons(Autoload.get_array())
		if randi() % 2 == 1:
			_set_bones(Autoload.get_array())
		if randi() % 2 == 1:
			set_internal_vertex_count(Autoload.get_int())
		if randi() % 2 == 1:
			add_bone(Autoload.get_string(),Autoload.get_poolrealarray())
		if randi() % 2 == 1:
			erase_bone(Autoload.get_int())
		if randi() % 2 == 1:
			clear_bones()
		if randi() % 2 == 1:
			qq += str(get_bone_count())
		if randi() % 2 == 1:
			qq += str(get_bone_path(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_bone_weights(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(set_bone_path(Autoload.get_int(),Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(set_bone_weights(Autoload.get_int(),[Autoload.get_float(),Autoload.get_float(),Autoload.get_float()]))
