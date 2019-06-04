extends FileDialog

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		var qq : String = ""
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
		qq = qq
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x