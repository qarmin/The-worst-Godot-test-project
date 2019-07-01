extends Line2D

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
		
		clear_points()
		set_points(PoolVector2Array([Vector2(randf(), randf()),Vector2(randf(), -randf()),Vector2(-randf(), randf())]))
		set_width(randf() * 50)
		set_default_color(Color(randf(),randf(),randf(),randf()))
		set_gradient(load("res://Gradient" + str(randi()%1 + 1) + ".tres"))
		set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_texture_mode(randi()%3)
		set_joint_mode(randi()%3)
		set_begin_cap_mode(randi()%3)
		set_end_cap_mode(randi()%3)
		set_sharp_limit(randf() * 50)
		set_round_precision(randi()%5)
		add_point(Vector2(0.0,0.0))
		qq += str(get_point_count())
		qq += str(get_point_position(0))
		remove_point(0)
		set_point_position(0, Vector2(0.0,0.0))
		
		if Autoload.WRONG_BUGS:
			clear_points()
			set_points(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]))
			set_width(randf() * 1000 - 500)
			set_default_color(Color(randf(),randf(),randf(),randf()))
			set_gradient(load("res://Gradient" + str(randi() % 1000 - 500) + ".tres"))
			set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_texture_mode(randi() % 1000 - 500)
			set_joint_mode(randi() % 1000 - 500)
			set_begin_cap_mode(randi() % 1000 - 500)
			set_end_cap_mode(randi() % 1000 - 500)
			set_sharp_limit(randf() * 1000 - 500)
			set_round_precision(randi() % 1000 - 500)
			add_point(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			qq += str(get_point_count())
			qq += str(get_point_position(randi() % 1000 - 500))
			remove_point(randi() % 1000 - 500)
			set_point_position(randi() % 1000 - 500, Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
