extends ParallaxLayer

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
		
		set_motion_scale(Vector2(randf() * 50,randf() * 50))
		set_motion_offset(Vector2(randf() * 50,randf() * 50))
		set_mirroring(Vector2(randf() * 50,randf() * 50))
		
		
		if Autoload.WRONG_BUGS:
			
			set_motion_scale(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_motion_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_mirroring(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))

	else: #RANDI
		if randi() % 2 == 1:
			set_motion_scale(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
		if randi() % 2 == 1:
			set_motion_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
		if randi() % 2 == 1:
			set_mirroring(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
