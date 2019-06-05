extends Label

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


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
		var qq : String = ""
		qq += str(get_line_count())
		qq += str(get_line_height())
		qq += str(get_total_character_count())
		qq += str(get_visible_line_count())
		qq = qq
		
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x