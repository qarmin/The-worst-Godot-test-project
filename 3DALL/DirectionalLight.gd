extends DirectionalLight

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_DirectionalLight : DirectionalLight, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_DirectionalLight)
		AutoObjects.A_Node(q_DirectionalLight)
		AutoObjects.A_Spatial(q_DirectionalLight)
		AutoObjects.A_VisualInstance(q_DirectionalLight)
		AutoObjects.A_Light(q_DirectionalLight)
		
	if randi() % 2 == 1:
		q_DirectionalLight.set_shadow_mode(Autoload.get_int()) # ShadowMode

	if randi() % 2 == 1:
		q_DirectionalLight.set("directional_shadow_split_1",Autoload.get_float())
	if randi() % 2 == 1:
		q_DirectionalLight.set("directional_shadow_split_2",Autoload.get_float())
	if randi() % 2 == 1:
		q_DirectionalLight.set("directional_shadow_split_3",Autoload.get_float())

	if randi() % 2 == 1:
		q_DirectionalLight.set("directional_shadow_normal_bias",Autoload.get_float())
	if randi() % 2 == 1:
		q_DirectionalLight.set("directional_shadow_bias_split_scale",Autoload.get_float())

	if randi() % 2 == 1:
		q_DirectionalLight.set_blend_splits(Autoload.get_int()) # ShadowDepthRange

	if randi() % 2 == 1:
		q_DirectionalLight.set("directional_shadow_max_distance",Autoload.get_float())
