extends Line2D

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
			clear_points()
		if randi() % 2 == 1:
			set_points(PoolVector2Array([Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float())]))
		if randi() % 2 == 1:
			set_width(Autoload.get_float())
		if randi() % 2 == 1:
			set_default_color(Autoload.get_color())
		if randi() % 2 == 1:
			set_gradient(Autoload.loadA("Gradient.tres"))
		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_texture_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_joint_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_begin_cap_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_end_cap_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_sharp_limit(Autoload.get_float())
		if randi() % 2 == 1:
			set_round_precision(Autoload.get_int())
		if randi() % 2 == 1:
			add_point(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(get_point_count())
		if randi() % 2 == 1:
			qq += str(get_point_position(Autoload.get_int()))
		if randi() % 2 == 1:
			remove_point(Autoload.get_int())
		if randi() % 2 == 1:
			set_point_position(Autoload.get_int(), Vector2(Autoload.get_float(), Autoload.get_float()))
