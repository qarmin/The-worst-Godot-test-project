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
				set("linear_limit/upper_distance",Autoload.get_randf())
				set("linear_limit/lower_distance",Autoload.get_randf())
				set("linear_limit/softness",Autoload.get_randf())
				set("linear_limit/restitution",Autoload.get_randf())
				set("linear_limit/damping",Autoload.get_randf())
				set("linear_motion/softness",Autoload.get_randf())
				set("linear_motion/restitution",Autoload.get_randf())
				set("linear_motion/damping",Autoload.get_randf())
				set("linear_ortho/softness",Autoload.get_randf())
				set("linear_ortho/restitution",Autoload.get_randf())
				set("linear_ortho/damping",Autoload.get_randf())
				set("angular_limit/upper_angle",Autoload.get_randf())
				set("angular_limit/lower_angle",Autoload.get_randf())
				set("angular_limit/softness",Autoload.get_randf())
				set("angular_limit/restitution",Autoload.get_randf())
				set("angular_limit/damping",Autoload.get_randf())
				set("angular_motion/softness",Autoload.get_randf())
				set("angular_motion/restitution",Autoload.get_randf())
				set("angular_motion/damping",Autoload.get_randf())
				set("angular_ortho/softness",Autoload.get_randf())
				set("angular_ortho/restitution",Autoload.get_randf())
				set("angular_ortho/damping",Autoload.get_randf())
		else: #RANDI
			if randi() % 2 == 1:
				set("linear_limit/upper_distance",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_limit/lower_distance",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_limit/softness",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_limit/restitution",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_limit/damping",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_motion/softness",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_motion/restitution",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_motion/damping",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_ortho/softness",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_ortho/restitution",Autoload.get_randf())
			if randi() % 2 == 1:
				set("linear_ortho/damping",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_limit/upper_angle",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_limit/lower_angle",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_limit/softness",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_limit/restitution",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_limit/damping",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_motion/softness",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_motion/restitution",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_motion/damping",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_ortho/softness",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_ortho/restitution",Autoload.get_randf())
			if randi() % 2 == 1:
				set("angular_ortho/damping",Autoload.get_randf())
