extends Node2D

var q_AnimationNodeAnimation : AnimationNodeAnimation = AnimationNodeAnimation.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeAnimation = AnimationNodeAnimation.new()

		if randi() % 2 == 1:
			q_AnimationNodeAnimation.set_animation(Autoload.get_string())
