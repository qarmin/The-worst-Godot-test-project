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
			set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_offset(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_antialiased(bool(randi()%2))
		if randi() % 2 == 1:
			set_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			set_texture_offset(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_texture_scale(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_texture_rotation_degrees(Autoload.get_randf())
		if randi() % 2 == 1:
			set_texture_rotation(Autoload.get_randf())
		if randi() % 2 == 1:
			set_skeleton(Autoload.get_string())
		if randi() % 2 == 1:
			set_invert(bool(randi()%2))
		if randi() % 2 == 1:
			set_invert_border(Autoload.get_randf())
		if randi() % 2 == 1:
			set_polygon([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())])
		if randi() % 2 == 1:
			set_uv([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())])
		if randi() % 2 == 1:
			set_vertex_colors([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())])
		if randi() % 2 == 1:
			set_polygons([Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()])
		if randi() % 2 == 1:
			_set_bones([Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()])
		if randi() % 2 == 1:
			set_internal_vertex_count(Autoload.get_randi())
		if randi() % 2 == 1:
			add_bone(Autoload.get_string(),PoolRealArray([Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()]))
			erase_bone(Autoload.get_randi())
		if randi() % 2 == 1:
			clear_bones()
		if randi() % 2 == 1:
			qq += str(get_bone_count())
		if randi() % 2 == 1:
			qq += str(get_bone_path(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bone_weights(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(set_bone_path(Autoload.get_randi(),Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(set_bone_weights(Autoload.get_randi(),[Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()]))
