extends Node2D

var q_BitMap : BitMap = BitMap.new()
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
			q_BitMap = BitMap.new()
			
		
		if randi() % 2 == 1:
			q_BitMap.create(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_BitMap.create_from_image_alpha( Autoload.loadA("Sprite.png"),Autoload.get_float())
			
		if randi() % 2 == 1:
			qq += str(q_BitMap.get_bit(Autoload.get_vector2()))
		if randi() % 2 == 1:
			qq += str(q_BitMap.get_size())
		if randi() % 2 == 1:
			qq += str(q_BitMap.get_true_bit_count())
			
		if randi() % 2 == 1:
			q_BitMap.grow_mask( randi() % 10 - 5, Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)))
		if randi() % 2 == 1:
			qq += str(q_BitMap.opaque_to_polygons(  Autoload.get_rect2(), Autoload.get_float()))
			
		if randi() % 2 == 1:
			q_BitMap.set_bit( Autoload.get_vector2(), Autoload.get_bool())
		if randi() % 2 == 1:
			q_BitMap.set_bit_rect( Autoload.get_rect2(), Autoload.get_bool())
