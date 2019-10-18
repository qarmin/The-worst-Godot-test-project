extends SpotLight

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

func nodeFunction(q_SpotLight : SpotLight) -> void:

	if randi() % 2 == 1:
		q_SpotLight.set("spot_range",Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight.set("spot_attenuation",Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight.set("spot_angle",Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight.set("spot_angle_attenuation",Autoload.get_float())
