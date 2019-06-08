extends Sprite3D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_vframes(randi()%50 + 10)
		set_hframes(randi()%50 + 10)
		set_frame(randi()%50)
		set_region(bool(randi()%2))
		set_region_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))