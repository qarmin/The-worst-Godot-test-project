extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		var q_Texture : Texture = ImageTexture.new()
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
		
			#q_Texture.draw(RID(),Vector2(randf() * 50,randf() * 50),Color(randf(),randf(),randf(),randf()),bool(randi()%2),Texture.new())
			#q_Texture.draw_rect(RID(),Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)),bool(randi()%2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),Texture.new())
			#q_Texture.draw_rect_region(RID(),Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)),Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Color(randf(),randf(),randf(),randf()), bool(randi()%2),Texture.new(),bool(randi()%2))
			
			qq += str(q_Texture.get_data())
			qq += str(q_Texture.get_height())
			qq += str(q_Texture.get_size())
			qq += str(q_Texture.get_width())
			qq += str(q_Texture.has_alpha())
			
			if Autoload.WRONG_BUGS:
				q_Texture.draw(RID(),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),ImageTexture.new())
				q_Texture.draw_rect(RID(),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)),bool(randi()%2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),ImageTexture.new())
				q_Texture.draw_rect_region(RID(),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)), Color(randf(),randf(),randf(),randf()), bool(randi()%2),ImageTexture.new(),bool(randi()%2))
				
				qq += str(q_Texture.get_data())
				qq += str(q_Texture.get_height())
				qq += str(q_Texture.get_size())
				qq += str(q_Texture.get_width())
				qq += str(q_Texture.has_alpha())
		else: #RANDI
			if randi() % 2 == 1:
				q_Texture.draw(RID(),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),ImageTexture.new())
			if randi() % 2 == 1:
				q_Texture.draw_rect(RID(),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)),bool(randi()%2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),ImageTexture.new())
			if randi() % 2 == 1:
				q_Texture.draw_rect_region(RID(),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)), Color(randf(),randf(),randf(),randf()), bool(randi()%2),ImageTexture.new(),bool(randi()%2))
				
			if randi() % 2 == 1:
				qq += str(q_Texture.get_data())
			if randi() % 2 == 1:
				qq += str(q_Texture.get_height())
			if randi() % 2 == 1:
				qq += str(q_Texture.get_size())
			if randi() % 2 == 1:
				qq += str(q_Texture.get_width())
			if randi() % 2 == 1:
				qq += str(q_Texture.has_alpha())
