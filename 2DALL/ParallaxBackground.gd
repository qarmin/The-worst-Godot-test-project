extends ParallaxBackground

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !$ParallaxLayer.is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_scroll_offset(Vector2(randf() * 50,randf() * 50))
		set_scroll_base_offset(Vector2(randf() * 50,randf() * 50))
		set_scroll_base_scale(Vector2(randf() * 50,randf() * 50))
		set_limit_begin(Vector2(randf() * 50,randf() * 50))
		set_limit_end(Vector2(randf() * 50,randf() * 50))
		set_ignore_camera_zoom(bool(randi()%2))
		
		$ParallaxLayer.set_motion_scale(Vector2(randf() * 50,randf() * 50))
		$ParallaxLayer.set_motion_offset(Vector2(randf() * 50,randf() * 50))
		$ParallaxLayer.set_mirroring(Vector2(randf() * 50,randf() * 50))