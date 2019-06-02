extends AnimatedSprite

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)
var right = false

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
	position.x += (int(right) * 2 - 1) * delta * 100
	if position.x > 1280:
		right = false
	elif position.x < 0:
		right = true
	
	if counter <= 0:
		set_sprite_frames(get_sprite_frames())
		set_frame(get_frame())
		set_animation(get_animation())
		set_speed_scale(get_speed_scale())
		_set_playing(_is_playing())
		set_centered(is_centered())
		set_offset(get_offset())
		set_flip_h(is_flipped_h())
		set_flip_v(is_flipped_v())
		var a = is_playing()
		a = a
		stop()
		play("default", true)
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	
	