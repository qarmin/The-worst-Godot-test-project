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
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		var q_Texture : Texture = ImageTexture.new()
		
		#q_Texture.draw(RID(),Vector2(randf() * 50,randf() * 50),Color(randf(),randf(),randf(),randf()),bool(randi()%2),Texture.new())
		#q_Texture.draw_rect(RID(),Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)),bool(randi()%2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),Texture.new())
		#q_Texture.draw_rect_region(RID(),Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)),Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Color(randf(),randf(),randf(),randf()), bool(randi()%2),Texture.new(),bool(randi()%2))
		
		qq += str(q_Texture.get_data())
		qq += str(q_Texture.get_height())
		qq += str(q_Texture.get_size())
		qq += str(q_Texture.get_width())
		qq += str(q_Texture.has_alpha())
		
		if Autoload.WRONG_BUGS:
			q_Texture.draw(RID(),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Color(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2),Texture.new())
			q_Texture.draw_rect(RID(),Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)),bool(randi()%2),Color(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2),Texture.new())
			q_Texture.draw_rect_region(RID(),Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)),Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)), Color(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), bool(randi()%2),Texture.new(),bool(randi()%2))
			
			qq += str(q_Texture.get_data())
			qq += str(q_Texture.get_height())
			qq += str(q_Texture.get_size())
			qq += str(q_Texture.get_width())
			qq += str(q_Texture.has_alpha())
