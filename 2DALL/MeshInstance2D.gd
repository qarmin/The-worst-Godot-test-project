extends MeshInstance2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_normal_map(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		
		if Autoload.WRONG_BUGS:
			set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			set_normal_map(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
