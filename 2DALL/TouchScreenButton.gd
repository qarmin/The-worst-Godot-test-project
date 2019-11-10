extends TouchScreenButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_TouchScreenButton : TouchScreenButton, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_TouchScreenButton)
		AutoObjects.A_Node(q_TouchScreenButton)
		AutoObjects.A_CanvasItem(q_TouchScreenButton)
		AutoObjects.A_Node2D(q_TouchScreenButton)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	var temp_BitMap : BitMap = BitMap.new()
#?#	AutoResourcesBitMap.nodeFunction(temp_BitMap)
	
	var temp_CircleShape2D : CircleShape2D = CircleShape2D.new()
#?#	AutoResourcesCircleShape2D.nodeFunction(temp_CircleShape2D)
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_TouchScreenButton.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_TouchScreenButton.set_texture_pressed(temp_ImageTexture)
	if randi() % 2 == 1:
		q_TouchScreenButton.set_bitmask(temp_BitMap)
	if randi() % 2 == 1:
		q_TouchScreenButton.set_shape(temp_CircleShape2D)
	if randi() % 2 == 1:
		q_TouchScreenButton.set_shape_centered(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TouchScreenButton.set_shape_visible(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TouchScreenButton.set_passby_press(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TouchScreenButton.set_action(Autoload.get_string())
	if randi() % 2 == 1:
		q_TouchScreenButton.set_visibility_mode(Autoload.get_int()) #VisibilityMode

	if randi() % 2 == 1:
		q_TouchScreenButton.is_pressed()