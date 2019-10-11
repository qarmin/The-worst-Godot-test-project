extends FileDialog

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_mode_overrides_title(bool(randi()%2))
		if randi() % 2 == 1:
			set_mode(Autoload.get_randi())
		if randi() % 2 == 1:
			set_access(Autoload.get_randi())
		if randi() % 2 == 1:
			set_filters(PoolStringArray([Autoload.get_string(),Autoload.get_string()]))
		if randi() % 2 == 1:
			set_show_hidden_files(bool(randi()%2))
		if randi() % 2 == 1:
			set_current_dir("res://" + str(Autoload.get_randi()))
		if randi() % 2 == 1:
			set_current_file("res://" + str(Autoload.get_randi()))
		if randi() % 2 == 1:
			set_current_path("res://" + str(Autoload.get_randi()))
		if randi() % 2 == 1:
			clear_filters()
		if randi() % 2 == 1:
			add_filter(Autoload.get_string())
		if randi() % 2 == 1:
			deselect_items()
		if randi() % 2 == 1:
			qq += str(get_line_edit())
		if randi() % 2 == 1:
			qq += str(get_vbox())
		if randi() % 2 == 1:
			invalidate()
