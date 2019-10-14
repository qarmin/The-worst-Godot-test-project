extends Node2D

var q_AStar2D : AStar2D = AStar2D.new()
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
			q_AStar2D = AStar2D.new()
			
		###q_AStar2D._compute_cost(Autoload.get_int(),Autoload.get_int())
		###q_AStar2D._estimate_cost(Autoload.get_int(),Autoload.get_int())
	
		if randi() % 2 == 1:
			q_AStar2D.add_point(Autoload.get_int(), Autoload.get_vector2(), Autoload.get_float())
		if randi() % 2 == 1:
			qq += str(q_AStar2D.are_points_connected(Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			q_AStar2D.clear()
		if randi() % 2 == 1:
			q_AStar2D.connect_points(Autoload.get_int(),Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			q_AStar2D.disconnect_points(Autoload.get_int(),Autoload.get_int())

		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_available_point_id())
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_closest_point(Autoload.get_vector2()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_closest_position_in_segment(Autoload.get_vector2()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_id_path(Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_point_connections(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_point_path(Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_point_position(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_point_weight_scale(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.get_points())

		if randi() % 2 == 1:
			qq += str(q_AStar2D.has_point(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_AStar2D.is_point_disabled(Autoload.get_int()))
		if randi() % 2 == 1:
			q_AStar2D.remove_point(Autoload.get_int())

		if randi() % 2 == 1:
			q_AStar2D.set_point_disabled(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			q_AStar2D.set_point_position(Autoload.get_int(),Autoload.get_vector2())
		if randi() % 2 == 1:
			q_AStar2D.set_point_weight_scale(Autoload.get_int(),Autoload.get_float())
