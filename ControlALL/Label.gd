extends Label

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
			set_text(str(bool(randi()%2)))
		if randi() % 2 == 1:
			set_align(Autoload.get_randi())
		if randi() % 2 == 1:
			set_valign(Autoload.get_randi())
		if randi() % 2 == 1:
			set_autowrap(bool(randi()%2))
		if randi() % 2 == 1:
			set_clip_text(bool(randi()%2))
		if randi() % 2 == 1:
			set_uppercase(bool(randi()%2))
		if randi() % 2 == 1:
			set_visible_characters(Autoload.get_randi())
		if randi() % 2 == 1:
			set_percent_visible(Autoload.get_randi())
		if randi() % 2 == 1:
			set_lines_skipped(Autoload.get_randi())
		if randi() % 2 == 1:
			set_max_lines_visible(Autoload.get_randi())
			
		if randi() % 2 == 1:
			qq += str(get_line_count())
		if randi() % 2 == 1:
			qq += str(get_line_height())
		if randi() % 2 == 1:
			qq += str(get_total_character_count())
		if randi() % 2 == 1:
			qq += str(get_visible_line_count())
