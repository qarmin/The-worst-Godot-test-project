extends OmniLight

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_OmniLight : OmniLight, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_OmniLight)
		AutoObjects.A_Node(q_OmniLight)
		AutoObjects.A_Spatial(q_OmniLight)
		AutoObjects.A_VisualInstance(q_OmniLight)
		AutoObjects.A_Light(q_OmniLight)
		
	if randi() % 2 == 1:
		q_OmniLight.set("omni_range",Autoload.get_float())
	if randi() % 2 == 1:
		q_OmniLight.set("omni_attenuation",Autoload.get_float())
	if randi() % 2 == 1:
		q_OmniLight.set_shadow_mode(Autoload.get_int()) # ShadowMode
#	if randi() % 2 == 1: #MISSING
#		q_OmniLight.set_shadow_detail(Autoload.get_int()) # SkadowDetail
