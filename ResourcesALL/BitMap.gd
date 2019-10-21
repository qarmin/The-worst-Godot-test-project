extends Node2D

var q_BitMap : BitMap = BitMap.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_BitMap = BitMap.new()

		if randi() % 2 == 1:
			q_BitMap.create(Vector2(Autoload.get_floatf(1000.0),Autoload.get_floatf(1000.0)))#Autoload.get_vector2())
		if randi() % 2 == 1:
			q_BitMap.create_from_image_alpha( Autoload.loadA("Sprite.png"),Autoload.get_float())

		if randi() % 2 == 1:
			q_BitMap.get_bit(Autoload.get_vector2()))
		if randi() % 2 == 1:
			q_BitMap.get_size())
		if randi() % 2 == 1:
			q_BitMap.get_true_bit_count())

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				q_BitMap.grow_mask( Autoload.get_int(), Autoload.get_rect2())
		if randi() % 2 == 1:
			q_BitMap.opaque_to_polygons(  Autoload.get_rect2(), Autoload.get_float()))

		if randi() % 2 == 1:
			q_BitMap.set_bit( Autoload.get_vector2(), Autoload.get_bool())
		if randi() % 2 == 1:
			q_BitMap.set_bit_rect( Autoload.get_rect2(), Autoload.get_bool())
