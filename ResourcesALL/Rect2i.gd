extends Node2D

#var q_Rect2i : Rect2i = Autoload.get_Rect2i()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()


#		nodeFunction(q_Rect2i,true)


func nodeFunction(q_Rect2i: Rect2i, can_reset: bool = false) -> void:
	pass
#	if can_reset:
#		if randi() % 2 == 1:
#			if randi() % 2 == 1:
#				q_Rect2i = Autoload.get_Rect2i()
#			if randi() % 2 == 1:
#				q_Rect2i = Rect2i(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
#
#	if randi() % 2 == 1:
#		q_Rect2i.abs()
#	if randi() % 2 == 1:
#		q_Rect2i.clip( Autoload.get_Rect2i())
#	if randi() % 2 == 1:
#		q_Rect2i.encloses( Autoload.get_Rect2i())
#	if randi() % 2 == 1:
#		q_Rect2i.expand( Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Rect2i.get_area()
#
#	if randi() % 2 == 1:
#		q_Rect2i.grow( Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Rect2i.grow_individual( Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Rect2i.grow_margin( Autoload.get_int(), Autoload.get_float())
#
#	if randi() % 2 == 1:
#		q_Rect2i.has_no_area()
#	if randi() % 2 == 1:
#		q_Rect2i.has_point( Autoload.get_vector2())
#
#	if randi() % 2 == 1:
#		q_Rect2i.intersects( Autoload.get_Rect2i())
#	if randi() % 2 == 1:
#		q_Rect2i.merge( Autoload.get_Rect2i())
#
