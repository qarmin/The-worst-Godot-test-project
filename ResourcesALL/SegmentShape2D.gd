extends Node2D

var q_SegmentShape2D : SegmentShape2D = SegmentShape2D.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_SegmentShape2D = SegmentShape2D.new()

		if randi() % 2 == 1:
			q_SegmentShape2D.set_a(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_SegmentShape2D.set_b(Autoload.get_vector2())
