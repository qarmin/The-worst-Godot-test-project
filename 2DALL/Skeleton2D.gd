extends Skeleton2D


var counter : float
const C_COUNTER : Vector2 = Vector2(0.5,1.0)
var right = false

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	
	position.x += (int(right) * 2 - 1) * delta * 100
	if position.x > 1280:
		right = false
	elif position.x < 0:
		right = true
	
	#  Vector2(randf() * 50,randf() * 50)
	#  randf() * 50
	#  bool(randi()%2)
	#  randi()%50
	
	var qq : String = ""
	if counter <= 0:
		for j in get_bone_count():
			get_bone(j).set_rest(get_bone(j).get_rest())
			get_bone(j).set_default_length(randf() * 50)
			get_bone(j).apply_rest()
			qq += str(get_bone(j).get_index_in_skeleton())
			qq += str(get_bone(j).get_skeleton_rest())
	qq +=  str(get_skeleton())
	qq = qq
		
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x