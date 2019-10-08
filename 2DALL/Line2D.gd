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
		if !Autoload.RANDI:
			
			clear_points()
			set_points(PoolVector2Array([Vector2(randf(), randf()),Vector2(randf(), -randf()),Vector2(-randf(), randf())]))
			set_width(randf() * 50)
			set_default_color(Color(randf(),randf(),randf(),randf()))
			set_gradient(load("res://RES/Gradient" + str(randi()%1 + 1) + ".tres"))
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
				set_points(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
				set_width(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_default_color(Color(randf(),randf(),randf(),randf()))
				set_gradient(load("res://RES/Gradient1.tres"))
				set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				set_texture_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_joint_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_begin_cap_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_end_cap_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_sharp_limit(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_round_precision(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				add_point(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_point_count())
				qq += str(get_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				remove_point(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
	
		else: #RANDI
			if randi() % 2 == 1:
				clear_points()
			if randi() % 2 == 1:
				set_points(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
			if randi() % 2 == 1:
				set_width(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_default_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				set_gradient(load("res://RES/Gradient1.tres"))
			if randi() % 2 == 1:
				set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				set_texture_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_joint_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_begin_cap_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_end_cap_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_sharp_limit(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_round_precision(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				add_point(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_point_count())
			if randi() % 2 == 1:
				qq += str(get_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				remove_point(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
