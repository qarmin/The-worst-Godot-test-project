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
		
		set("omni_range",randf() * 50)
		set("omni_attenuation",randf() * 50)
		set_shadow_mode(randi() % 2) # ShadowMode
		set_shadow_detail(randi() % 2) # SkadowDetail
		
		if Autoload.WRONG_BUGS:
			set("omni_range",randf() * 1000 - 500)
			set("omni_attenuation",randf() * 1000 - 500)
			set_shadow_mode(randi() % 1000 - 500) # ShadowMode
			set_shadow_detail(randi() % 1000 - 500) # SkadowDetail
	else: #RANDI
		if randi() % 2 == 1:
			set("omni_range",randf() * 1000 - 500)
		if randi() % 2 == 1:
			set("omni_attenuation",randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_shadow_mode(randi() % 1000 - 500) # ShadowMode
		if randi() % 2 == 1:
			set_shadow_detail(randi() % 1000 - 500) # SkadowDetail
