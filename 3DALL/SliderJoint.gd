extends SliderJoint

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
		
		set("linear_limit/upper_distance",randf() * 50)
		set("linear_limit/lower_distance",randf() * 50)
		set("linear_limit/softness",randf() * 50)
		set("linear_limit/restitution",randf() * 50)
		set("linear_limit/damping",randf() * 50)
		set("linear_motion/softness",randf() * 50)
		set("linear_motion/restitution",randf() * 50)
		set("linear_motion/damping",randf() * 50)
		set("linear_ortho/softness",randf() * 50)
		set("linear_ortho/restitution",randf() * 50)
		set("linear_ortho/damping",randf() * 50)
		set("angular_limit/upper_angle",randf() * 50)
		set("angular_limit/lower_angle",randf() * 50)
		set("angular_limit/softness",randf() * 50)
		set("angular_limit/restitution",randf() * 50)
		set("angular_limit/damping",randf() * 50)
		set("angular_motion/softness",randf() * 50)
		set("angular_motion/restitution",randf() * 50)
		set("angular_motion/damping",randf() * 50)
		set("angular_ortho/softness",randf() * 50)
		set("angular_ortho/restitution",randf() * 50)
		set("angular_ortho/damping",randf() * 50)

		if Autoload.WRONG_BUGS:
			set("linear_limit/upper_distance",randf() * 1000 - 500)
			set("linear_limit/lower_distance",randf() * 1000 - 500)
			set("linear_limit/softness",randf() * 1000 - 500)
			set("linear_limit/restitution",randf() * 1000 - 500)
			set("linear_limit/damping",randf() * 1000 - 500)
			set("linear_motion/softness",randf() * 1000 - 500)
			set("linear_motion/restitution",randf() * 1000 - 500)
			set("linear_motion/damping",randf() * 1000 - 500)
			set("linear_ortho/softness",randf() * 1000 - 500)
			set("linear_ortho/restitution",randf() * 1000 - 500)
			set("linear_ortho/damping",randf() * 1000 - 500)
			set("angular_limit/upper_angle",randf() * 1000 - 500)
			set("angular_limit/lower_angle",randf() * 1000 - 500)
			set("angular_limit/softness",randf() * 1000 - 500)
			set("angular_limit/restitution",randf() * 1000 - 500)
			set("angular_limit/damping",randf() * 1000 - 500)
			set("angular_motion/softness",randf() * 1000 - 500)
			set("angular_motion/restitution",randf() * 1000 - 500)
			set("angular_motion/damping",randf() * 1000 - 500)
			set("angular_ortho/softness",randf() * 1000 - 500)
			set("angular_ortho/restitution",randf() * 1000 - 500)
			set("angular_ortho/damping",randf() * 1000 - 500)
