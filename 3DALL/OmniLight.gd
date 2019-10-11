extends OmniLight

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
		
		if randi() % 2 == 1:
			set("omni_range",Autoload.get_randf())
		if randi() % 2 == 1:
			set("omni_attenuation",Autoload.get_randf())
		if randi() % 2 == 1:
			set_shadow_mode(Autoload.get_randi()) # ShadowMode
		if randi() % 2 == 1:
			set_shadow_detail(Autoload.get_randi()) # SkadowDetail
