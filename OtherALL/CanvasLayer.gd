extends CanvasLayer

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_layer(Autoload.get_randi())
		if randi() % 2 == 1:
			set_offset(Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_rotation_degrees(Autoload.get_randf())
		if randi() % 2 == 1:
			set_rotation(Autoload.get_randf())
		if randi() % 2 == 1:
			set_scale(Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_transform(Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			set_custom_viewport(get_parent())
		if randi() % 2 == 1:
			set_follow_viewport(bool(randi()%2))
		if randi() % 2 == 1:
			set_follow_viewport_scale(Autoload.get_randf())
			
		if randi() % 2 == 1:
			qq += str(get_canvas())
