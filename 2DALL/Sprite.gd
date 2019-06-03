extends Sprite

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	
	if counter <= 0:
		set_texture(
		set_normal_map(
		set_centered(
		set_offset(
		set_flip_h(
		set_flip_v(
		set_vframes(
		set_hframes(
		set_frame(
		set_region(
		set_region_rect(
		set_region_filter_clip(
		get_rect()
		is_pixel_opaque(
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
