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
		
		var q_MeshTexture : MeshTexture = MeshTexture.new()
		if !Autoload.RANDI:
			
			q_MeshTexture.set_mesh(Mesh.new())
			q_MeshTexture.set_base_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			q_MeshTexture.set_image_size(Vector2(randf() * 50,randf() * 50))
			
			if Autoload.WRONG_BUGS:
				q_MeshTexture.set_mesh(Mesh.new())
				q_MeshTexture.set_base_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_MeshTexture.set_image_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))

		else: #RANDI
			if randi() % 2 == 1:
				q_MeshTexture.set_mesh(Mesh.new())
			if randi() % 2 == 1:
				q_MeshTexture.set_base_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				q_MeshTexture.set_image_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
