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
		
		set("spot_range",randf() * 50)
		set("spot_attenuation",randf() * 50)
		set("spot_angle",randf() * 50)
		set("spot_angle_attenuation",randf() * 50)
		
		
		if Autoload.WRONG_BUGS:
			set("spot_range",randf() * 1000 - 500)
			set("spot_attenuation",randf() * 1000 - 500)
			set("spot_angle",randf() * 1000 - 500)
			set("spot_angle_attenuation",randf() * 1000 - 500)
	else: #RANDI
		if randi() % 2 == 1:
			set("spot_range",randf() * 1000 - 500)
		if randi() % 2 == 1:
			set("spot_attenuation",randf() * 1000 - 500)
		if randi() % 2 == 1:
			set("spot_angle",randf() * 1000 - 500)
		if randi() % 2 == 1:
			set("spot_angle_attenuation",randf() * 1000 - 500)
