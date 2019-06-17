extends Skeleton2D

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
		
		for j in get_bone_count():
			get_bone(j).set_rest(get_bone(j).get_rest())
			get_bone(j).set_default_length(randf() * 50)
			get_bone(j).apply_rest()
			qq += str(get_bone(j).get_index_in_skeleton())
			qq += str(get_bone(j).get_skeleton_rest())
		qq +=  str(get_skeleton())
		
		
		if Autoload.WRONG_BUGS:
			for j in get_bone_count():
				get_bone(j).set_rest(get_bone(j).get_rest())
				get_bone(j).set_default_length(randf() * 1000 - 500)
				get_bone(j).apply_rest()
				qq += str(get_bone(j).get_index_in_skeleton())
				qq += str(get_bone(j).get_skeleton_rest())
			qq +=  str(get_skeleton())
