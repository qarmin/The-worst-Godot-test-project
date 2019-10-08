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
		if !Autoload.RANDI:
			
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
				set("linear_limit/upper_distance",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_limit/lower_distance",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_limit/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_limit/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_limit/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_motion/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_motion/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_motion/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_ortho/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_ortho/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("linear_ortho/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/upper_angle",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/lower_angle",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_motion/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_motion/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_motion/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_ortho/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_ortho/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_ortho/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		else: #RANDI
			if randi() % 2 == 1:
				set("linear_limit/upper_distance",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_limit/lower_distance",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_limit/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_limit/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_limit/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_motion/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_motion/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_motion/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_ortho/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_ortho/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("linear_ortho/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/upper_angle",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/lower_angle",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_motion/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_motion/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_motion/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_ortho/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_ortho/restitution",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_ortho/damping",randf() * Autoload.RANGE - Autoload.RANGE / 2)
