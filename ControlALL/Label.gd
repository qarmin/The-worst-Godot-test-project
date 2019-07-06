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
		
		set_text(str(bool(randi()%2)))
		set_align(randi()%4)
		set_valign(randi()%4)
		set_autowrap(bool(randi()%2))
		set_clip_text(bool(randi()%2))
		set_uppercase(bool(randi()%2))
		set_visible_characters(randi()%50)
		set_percent_visible(randi()%50)
		set_lines_skipped(randi()%50)
		set_max_lines_visible(randi()%50)
		
		qq += str(get_line_count())
		qq += str(get_line_height())
		qq += str(get_total_character_count())
		qq += str(get_visible_line_count())
		
		if Autoload.WRONG_BUGS:
			set_text(str(bool(randi()%2)))
			set_align(randi() % 1000 - 500)
			set_valign(randi() % 1000 - 5004)
			set_autowrap(bool(randi()%2))
			set_clip_text(bool(randi()%2))
			set_uppercase(bool(randi()%2))
			set_visible_characters(randi() % 1000 - 500)
			set_percent_visible(randi() % 1000 - 500)
			set_lines_skipped(randi() % 1000 - 500)
			set_max_lines_visible(randi() % 1000 - 500)
			
			qq += str(get_line_count())
			qq += str(get_line_height())
			qq += str(get_total_character_count())
			qq += str(get_visible_line_count())
