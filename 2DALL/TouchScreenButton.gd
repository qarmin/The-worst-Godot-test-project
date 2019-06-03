extends TouchScreenButton

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
		set_texture_pressed(
		set_bitmask(
		set_shape(
		set_shape_centered(
		set_shape_visible(
		set_passby_press(
		set_action(
		set_visibility_mode(
		is_pressed() 
		
		
		
		
		
		
		
		
		
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x