extends DirectionalLight3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_DirectionalLight3D : DirectionalLight3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_DirectionalLight3D)
		AutoObjects.A_Node(q_DirectionalLight3D)
		AutoObjects.A_Node3D(q_DirectionalLight3D)
		AutoObjects.A_VisualInstance3D(q_DirectionalLight3D)
		AutoObjects.A_Light3D(q_DirectionalLight3D)
		
	if randi() % 2 == 1:
		q_DirectionalLight3D.set_shadow_mode(Autoload.get_int()) # ShadowMode

	if randi() % 2 == 1:
		q_DirectionalLight3D.set_param(Autoload.get_int(),Autoload.get_float())

	if randi() % 2 == 1:
		q_DirectionalLight3D.set_blend_splits(Autoload.get_int()) # ShadowDepthRange
	if randi() % 2 == 1:
		q_DirectionalLight3D.set_shadow_depth_range(Autoload.get_int()) # ShadowDepthRange
