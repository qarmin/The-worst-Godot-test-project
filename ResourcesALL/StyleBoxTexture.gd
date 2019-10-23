extends Node2D

var q_StyleBoxTexture : StyleBoxTexture = StyleBoxTexture.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_StyleBoxTexture,true)

func nodeFunction(q_StyleBoxTexture : StyleBoxTexture, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_StyleBoxTexture = StyleBoxTexture.new()
	if randi() % 2 == 1:
		AutoResourcesStyleBox.nodeFunction(q_StyleBoxTexture)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	### END TEMP

	if randi() % 2 == 1:
		q_StyleBoxTexture.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_normal_map(temp_ImageTexture)
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_region_rect(Autoload.get_rect2())
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_margin_size(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_expand_margin_size(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_h_axis_stretch_mode(Autoload.get_int()) #AxisStretchMode
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_v_axis_stretch_mode(Autoload.get_int()) #AxisStretchMode
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_modulate(Autoload.get_color())
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_draw_center(Autoload.get_bool())

	if randi() % 2 == 1:
		q_StyleBoxTexture.set_expand_margin_all( Autoload.get_float())
	if randi() % 2 == 1:
		q_StyleBoxTexture.set_expand_margin_individual( Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
