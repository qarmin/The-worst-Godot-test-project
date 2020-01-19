extends Node2D

var q_Theme : Theme = Theme.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Theme,true)

func nodeFunction(q_Theme : Theme, can_reset : bool = false) -> void:

	if can_reset:
		if randi() % 2 == 1:
			q_Theme = Theme.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Theme)

	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	var temp_Font : Font = DynamicFont.new()
	AutoResourcesFont.nodeFunction(temp_Font)

	var temp_StyleBoxFlat : StyleBoxFlat = StyleBoxFlat.new()
	AutoResourcesStyleBoxFlat.nodeFunction(temp_StyleBoxFlat)

	var temp_Theme : Theme = Theme.new()
#	AutoResourcesTheme.nodeFunction(temp_Theme) #LOOP
	temp_Theme = load("res://RES/Theme.tres")

	### END TEMP

	if randi() % 2 == 1:
		q_Theme.set_default_font(temp_Font)

	if randi() % 2 == 1:
		q_Theme.clear()
	if randi() % 2 == 1:
		q_Theme.clear_color( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.clear_constant( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.clear_font( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.clear_icon( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.clear_stylebox( Autoload.get_string(), Autoload.get_string())

	if randi() % 2 == 1:
		q_Theme.copy_default_theme()
#	BUG	if randi() % 2 == 1:
#			q_Theme.copy_theme( temp_Theme)

	if randi() % 2 == 1:
		q_Theme.get_color( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_color_list( Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_constant( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_constant_list( Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_font( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_font_list( Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_icon( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_icon_list( Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_stylebox( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_stylebox_list( Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.get_stylebox_types()
	if randi() % 2 == 1:
		q_Theme.get_type_list( Autoload.get_string())

	if randi() % 2 == 1:
		q_Theme.has_color( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.has_constant( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.has_font( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.has_icon( Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Theme.has_stylebox( Autoload.get_string(), Autoload.get_string())

	if randi() % 2 == 1:
		q_Theme.set_color( Autoload.get_string(), Autoload.get_string(), Autoload.get_color())
	if randi() % 2 == 1:
		q_Theme.set_constant( Autoload.get_string(), Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Theme.set_font( Autoload.get_string(), Autoload.get_string(), temp_Font)
	if randi() % 2 == 1:
		q_Theme.set_icon( Autoload.get_string(), Autoload.get_string(), temp_ImageTexture)
	if randi() % 2 == 1:
		q_Theme.set_stylebox( Autoload.get_string(), Autoload.get_string(), temp_StyleBoxFlat)
