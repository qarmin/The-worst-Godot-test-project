extends Polygon2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_color(Color(randf(),randf(),randf(),randf()))
		set_offset(Vector2(randf() * 50,randf() * 50))
		set_antialiased(bool(randi()%2))
		set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_texture_offset(Vector2(randf() * 50,randf() * 50))
		set_texture_scale(Vector2(randf() * 50,randf() * 50))
		set_texture_rotation_degrees(randf() * 50)
		set_texture_rotation(randf() * 50)
		set_skeleton("asf")
		set_invert(bool(randi()%2))
		set_invert_border(randf() * 50)
		#set_polygon(
		#set_uv(
		#set_vertex_colors(
		#set_polygons(
		#_set_bones(get_bones)
		set_internal_vertex_count(randi()%50)
		#add_bone(
		#erase_bone(0)
		clear_bones()
		qq += str(get_bone_count())
		#qq += str(get_bone_path(0))
		#qq += str(get_bone_weights(0))
		#qq += str(set_bone_path())
		#qq += str(set_bone_weights(0,[2.4,2.52,125.16]))
		
		
		if Autoload.WRONG_BUGS:
			set_color(Color(randf(),randf(),randf(),randf()))
			set_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_antialiased(bool(randi()%2))
			set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			set_texture_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_texture_scale(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_texture_rotation_degrees(randf() * 1000 - 500)
			set_texture_rotation(randf() * 1000 - 500)
			set_skeleton("asfqwf")
			set_invert(bool(randi()%2))
			set_invert_border(randf() * 1000 - 500)
			set_polygon([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)])
			set_uv([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)])
			set_vertex_colors([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())])
			set_polygons([randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500])
			_set_bones([randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500])
			set_internal_vertex_count(randi() % 1000 - 500)
			add_bone("asfa",PoolRealArray([randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500]))
			erase_bone(randi() % 1000 - 500)
			clear_bones()
			qq += str(get_bone_count())
			qq += str(get_bone_path(randi() % 1000 - 500))
			qq += str(get_bone_weights(randi() % 1000 - 500))
			qq += str(set_bone_path(randi() % 1000 - 500,"asfafsqwfq"))
			qq += str(set_bone_weights(randi() % 1000 - 500,[randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500]))
