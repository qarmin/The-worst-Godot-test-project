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
		if !Autoload.RANDI:
			
			set_layer(randi()%50)
			set_offset(Vector2(randf() * 50,randf() * 50))
			set_rotation_degrees(randf() * 50)
			set_rotation(randf() * 50)
			set_scale(Vector2(randf() * 50,randf() * 50))
			set_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
			set_custom_viewport(get_parent())
			set_follow_viewport(bool(randi()%2))
			set_follow_viewport_scale(randf() * 50)
			
			qq += str(get_canvas())
			
			if Autoload.WRONG_BUGS:
				set_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_rotation_degrees(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_rotation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_scale(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_transform(Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				set_custom_viewport(get_parent())
				set_follow_viewport(bool(randi()%2))
				set_follow_viewport_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
				qq += str(get_canvas())
	
		else: #RANDI
			if randi() % 2 == 1:
				set_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_rotation_degrees(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_rotation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_scale(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_transform(Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				set_custom_viewport(get_parent())
			if randi() % 2 == 1:
				set_follow_viewport(bool(randi()%2))
			if randi() % 2 == 1:
				set_follow_viewport_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				qq += str(get_canvas())
