extends Node2D

var q_StyleBoxLine : StyleBoxLine = StyleBoxLine.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_StyleBoxLine = StyleBoxLine.new()

		if randi() % 2 == 1:
			q_StyleBoxLine.set_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_StyleBoxLine.set_grow_begin(Autoload.get_float())
		if randi() % 2 == 1:
			q_StyleBoxLine.set_grow_end(Autoload.get_float())
		if randi() % 2 == 1:
			q_StyleBoxLine.set_thickness(Autoload.get_int())
		if randi() % 2 == 1:
			q_StyleBoxLine.set_vertical(Autoload.get_bool())
