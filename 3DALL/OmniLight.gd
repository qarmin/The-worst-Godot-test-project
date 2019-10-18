extends OmniLight

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		AutoObjects.A_Light(self)
		nodeFunction(self)

func nodeFunction(q_OmniLight : OmniLight) -> void:

	if randi() % 2 == 1:
		q_OmniLight.set("omni_range",Autoload.get_float())
	if randi() % 2 == 1:
		q_OmniLight.set("omni_attenuation",Autoload.get_float())
	if randi() % 2 == 1:
		q_OmniLight.set_shadow_mode(Autoload.get_int()) # ShadowMode
	if randi() % 2 == 1:
		q_OmniLight.set_shadow_detail(Autoload.get_int()) # SkadowDetail
