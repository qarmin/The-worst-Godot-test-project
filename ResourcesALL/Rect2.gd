extends Node2D

var q_Rect2 : Rect2 = Autoload.get_rect2()

func _process(delta) -> void:
	if randi() % 20:
		if randi() % 2 == 1:
			q_Rect2 = Autoload.get_rect2()
		if randi() % 2 == 1:
			q_Rect2 = Rect2(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())

	if randi() % 2 == 1:
		q_Rect2.abs()
	if randi() % 2 == 1:
		q_Rect2.clip( Autoload.get_rect2())
	if randi() % 2 == 1:
		q_Rect2.encloses( Autoload.get_rect2())
	if randi() % 2 == 1:
		q_Rect2.expand( Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Rect2.get_area()

	if randi() % 2 == 1:
		q_Rect2.grow( Autoload.get_float())
	if randi() % 2 == 1:
		q_Rect2.grow_individual( Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Rect2.grow_margin( Autoload.get_int(), Autoload.get_float())

	if randi() % 2 == 1:
		q_Rect2.has_no_area()
	if randi() % 2 == 1:
		q_Rect2.has_point( Autoload.get_vector2())

	if randi() % 2 == 1:
		q_Rect2.intersects( Autoload.get_rect2())
	if randi() % 2 == 1:
		q_Rect2.merge( Autoload.get_rect2())

