extends Node2D

var q_RichTextEffect : RichTextEffect = RichTextEffect.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_RichTextEffect,true)

func nodeFunction(q_RichTextEffect : RichTextEffect, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_RichTextEffect = RichTextEffect.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_RichTextEffect)
#
#		_process_custom_fx(CharFXTransform.new())
