extends Bone2D

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
		if !Autoload.RANDI:
			
			apply_rest()
			#qq += str(get_index_in_skeleton())
			qq += str(get_skeleton_rest())
			
			if Autoload.WRONG_BUGS:
				apply_rest()
				qq += str(get_index_in_skeleton())
				qq += str(get_skeleton_rest())
		else: #RANDI
			if randi() % 2 == 1:
				apply_rest()
			if randi() % 2 == 1:
				qq += str(get_index_in_skeleton())
			if randi() % 2 == 1:
				qq += str(get_skeleton_rest())
