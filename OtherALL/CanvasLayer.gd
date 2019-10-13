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
			set_layer(Autoload.get_int())
		if randi() % 2 == 1:
			set_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_rotation_degrees(Autoload.get_float())
		if randi() % 2 == 1:
			set_rotation(Autoload.get_float())
		if randi() % 2 == 1:
			set_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_transform(Autoload.get_transform2d())
		if randi() % 2 == 1:
			set_custom_viewport(get_parent())
		if randi() % 2 == 1:
			set_follow_viewport(Autoload.get_bool())
		if randi() % 2 == 1:
			set_follow_viewport_scale(Autoload.get_float())
			
		if randi() % 2 == 1:
			qq += str(get_canvas())
