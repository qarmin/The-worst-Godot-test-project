extends Sprite

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_normal_map(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_centered(bool(randi()%2))
		set_offset(Vector2(randf() * 50,randf() * 50))
		set_flip_h(bool(randi()%2))
		set_flip_v(bool(randi()%2))
		set_vframes(randi()%4 + 3)
		set_hframes(randi()%4 + 3)
		set_frame(randi()%4 + 2)
		set_region(bool(randi()%2))
		set_region_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set_region_filter_clip(bool(randi()%2))
		qq += str(get_rect())
		qq += str(is_pixel_opaque(Vector2(randf() * 15,randf() * 15)))
		
		
		if Autoload.WRONG_BUGS:
			set_texture(load("res://Sprite" + str(randi() % 1000 - 500) + ".png"))
			set_normal_map(load("res://Sprite" + str(randi() % 1000 - 500) + ".png"))
			set_centered(bool(randi()%2))
			set_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_flip_h(bool(randi()%2))
			set_flip_v(bool(randi()%2))
			set_vframes(randi() % 1000 - 500)
			set_hframes(randi() % 1000 - 500)
			set_frame(randi() % 1000 - 500)
			set_region(bool(randi()%2))
			set_region_rect(Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))
			set_region_filter_clip(bool(randi()%2))
			qq += str(get_rect())
			qq += str(is_pixel_opaque(Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))
