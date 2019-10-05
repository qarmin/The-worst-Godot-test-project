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
		
		set_mode_overrides_title(bool(randi()%2))
		set_mode(randi()%5)
		set_access(randi()%3)
		set_filters(PoolStringArray(["*.png ; PNG Images","*.gd ; GD Script"]))
		set_show_hidden_files(bool(randi()%2))
		set_current_dir("res://" + str(randi()%50))
		set_current_file("res://" + str(randi()%50))
		set_current_path("res://" + str(randi()%50))
		clear_filters()
		add_filter("*.png ; PNG Images")
		deselect_items()
		qq += str(get_line_edit())
		qq += str(get_vbox())
		invalidate()
		
		
		if Autoload.WRONG_BUGS:
			set_mode_overrides_title(bool(randi()%2))
			set_mode(randi() % 1000 - 500)
			set_access(randi() % 1000 - 500)
			set_filters(PoolStringArray(["*.pqfqwfng ; PNG Imagesqwfqw","*.gqwfqwfd ; GD Script"]))
			set_show_hidden_files(bool(randi()%2))
			set_current_dir("res://" + str(randi() % 1000 - 500))
			set_current_file("res://" + str(randi() % 1000 - 500))
			set_current_path("res://" + str(randi() % 1000 - 500))
			clear_filters()
			add_filter("*.pnqwfg ; PNG Images")
			deselect_items()
			qq += str(get_line_edit())
			qq += str(get_vbox())
			invalidate()

	else: #RANDI
		if randi() % 2 == 1:
			set_mode_overrides_title(bool(randi()%2))
		if randi() % 2 == 1:
			set_mode(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_access(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_filters(PoolStringArray(["*.pqfqwfng ; PNG Imagesqwfqw","*.gqwfqwfd ; GD Script"]))
		if randi() % 2 == 1:
			set_show_hidden_files(bool(randi()%2))
		if randi() % 2 == 1:
			set_current_dir("res://" + str(randi() % 1000 - 500))
		if randi() % 2 == 1:
			set_current_file("res://" + str(randi() % 1000 - 500))
		if randi() % 2 == 1:
			set_current_path("res://" + str(randi() % 1000 - 500))
		if randi() % 2 == 1:
			clear_filters()
		if randi() % 2 == 1:
			add_filter("*.pnqwfg ; PNG Images")
		if randi() % 2 == 1:
			deselect_items()
		if randi() % 2 == 1:
			qq += str(get_line_edit())
		if randi() % 2 == 1:
			qq += str(get_vbox())
		if randi() % 2 == 1:
			invalidate()
