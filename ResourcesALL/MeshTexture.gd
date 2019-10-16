extends Node2D

var q_MeshTexture : MeshTexture = MeshTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_MeshTexture = MeshTexture.new()

		if randi() % 2 == 1:
			q_MeshTexture.set_mesh(Mesh.new())
		if randi() % 2 == 1:
			q_MeshTexture.set_base_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_MeshTexture.set_image_size(Autoload.get_vector2())
