extends SpotLight

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
			
			set("spot_range",randf() * 50)
			set("spot_attenuation",randf() * 50)
			set("spot_angle",randf() * 50)
			set("spot_angle_attenuation",randf() * 50)
			
			
			if Autoload.WRONG_BUGS:
				set("spot_range",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("spot_attenuation",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("spot_angle",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("spot_angle_attenuation",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		else: #RANDI
			if randi() % 2 == 1:
				set("spot_range",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("spot_attenuation",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("spot_angle",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("spot_angle_attenuation",randf() * Autoload.RANGE - Autoload.RANGE / 2)
