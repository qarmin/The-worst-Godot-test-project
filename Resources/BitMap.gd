extends Node2D

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
		
		var q_BitMap : BitMap = BitMap.new()
		
		#q_BitMap.create(Vector2(randf() * 50,randf() * 50))
		#q_BitMap.create_from_image_alpha( load("res://Sprite" + str(randi()%4 + 1) + ".png"),randf() * 50)
		
		#qq += str(q_BitMap.get_bit(Vector2(randf() * 50,randf() * 50)))
		qq += str(q_BitMap.get_size())
		qq += str(q_BitMap.get_true_bit_count())
		
		#q_BitMap.grow_mask( randi()%50, Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		#qq += str(q_BitMap.opaque_to_polygons(  Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), randf() * 50))
		
		#q_BitMap.set_bit( Vector2(randf() * 50,randf() * 50), bool(randi()%2))
		q_BitMap.set_bit_rect( Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			q_BitMap.create(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_BitMap.create_from_image_alpha( load("res://Sprite" + str(randi()%4 + 1) + ".png"),randf() * 1000 - 500)
			
			qq += str(q_BitMap.get_bit(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(q_BitMap.get_size())
			qq += str(q_BitMap.get_true_bit_count())
			
			q_BitMap.grow_mask( randi() % 10 - 5, Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)))
			qq += str(q_BitMap.opaque_to_polygons(  Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)), randf() * 1000 - 500))
			
			q_BitMap.set_bit( Vector2(randf() * 1000 - 500,randf() * 1000 - 500), bool(randi()%2))
			q_BitMap.set_bit_rect( Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)), bool(randi()%2))
