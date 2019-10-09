extends Sprite

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
		if !Autoload.RANDI:
			
			set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
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
				set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				set_centered(bool(randi()%2))
				set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_flip_h(bool(randi()%2))
				set_flip_v(bool(randi()%2))
				set_vframes(randi() % 10 - 5)
				set_hframes(randi() % 10 - 5)
				set_frame(randi() % 10 - 5)
				set_region(bool(randi()%2))
				set_region_rect(Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				set_region_filter_clip(bool(randi()%2))
				qq += str(get_rect())
				qq += str(is_pixel_opaque(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
	
		else: #RANDI
			if randi() % 2 == 1:
				set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				set_centered(bool(randi()%2))
			if randi() % 2 == 1:
				set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_flip_h(bool(randi()%2))
			if randi() % 2 == 1:
				set_flip_v(bool(randi()%2))
			if randi() % 2 == 1:
				set_vframes(randi() % 10 - 5)
			if randi() % 2 == 1:
				set_hframes(randi() % 10 - 5)
			if randi() % 2 == 1:
				set_frame(randi() % 10 - 5)
			if randi() % 2 == 1:
				set_region(bool(randi()%2))
			if randi() % 2 == 1:
				set_region_rect(Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				set_region_filter_clip(bool(randi()%2))
			if randi() % 2 == 1:
				qq += str(get_rect())
			if randi() % 2 == 1:
				qq += str(is_pixel_opaque(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
