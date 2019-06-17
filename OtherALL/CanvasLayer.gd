extends CanvasLayer

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
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
			set_layer(randi() % 1000 - 500)
			set_offset(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			set_rotation_degrees(randf() * 1000 - 500)
			set_rotation(randf() * 1000 - 500)
			set_scale(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			set_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			set_custom_viewport(get_parent())
			set_follow_viewport(bool(randi()%2))
			set_follow_viewport_scale(randf() * 1000 - 500)
			
			qq += str(get_canvas())
