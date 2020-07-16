extends Node2D

var q_Color: Color = Color.cyan

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Color, true)


func nodeFunction(q_Color: Color, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Color = Color(Color.cyan)
		if randi() % 2 == 1:
			q_Color = Color(Autoload.get_int())
		if randi() % 2 == 1:
			q_Color = Color(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			q_Color = Color(Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())

	if randi() % 2 == 1:
		q_Color.blend(Autoload.get_color())
	if randi() % 2 == 1:
		q_Color.contrasted()
	if randi() % 2 == 1:
		q_Color.darkened(Autoload.get_float())
	if randi() % 2 == 1:
		q_Color.from_hsv(Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Color.inverted()
	if randi() % 2 == 1:
		q_Color.lightened(Autoload.get_float())

	if randi() % 2 == 1:
		q_Color.to_abgr32()
	if randi() % 2 == 1:
		q_Color.to_abgr64()
	if randi() % 2 == 1:
		q_Color.to_argb32()
	if randi() % 2 == 1:
		q_Color.to_argb64()
	if randi() % 2 == 1:
		q_Color.to_html(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Color.to_rgba32()
	if randi() % 2 == 1:
		q_Color.to_rgba64()
