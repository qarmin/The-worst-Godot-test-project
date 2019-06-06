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
	var qq : String = ""
	qq = qq
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	
	position.x += (int(right) * 2 - 1) * delta * 100
	if position.x > 1280:
		right = false
	elif position.x < 0:
		right = true
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_sprite_frames(get_sprite_frames())
		set_frame(randi()%3)
		set_animation("default")
		set_speed_scale(randf() * 50)
		_set_playing(bool(randi()%2))
		set_centered(bool(randi()%2))
		set_offset(Vector2(randf() * 50,randf() * 50))
		set_flip_h(bool(randi()%2))
		set_flip_v(bool(randi()%2))
		stop()
		play("default", bool(randi()%2))
		
		## With Errors
		if Autoload.WRONG_BUGS:
			set_sprite_frames(SpriteFrames.new())
			set_frame(randi() % 1000 - 500)
			set_animation("afqwgqagagasfqw")
			set_speed_scale(randf() * 1000 - 500)
			_set_playing(bool(randi()%2))
			set_centered(bool(randi()%2))
			set_offset(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			set_flip_h(bool(randi()%2))
			set_flip_v(bool(randi()%2))
			stop()
			play("qwtdfaf", bool(randi()%2))