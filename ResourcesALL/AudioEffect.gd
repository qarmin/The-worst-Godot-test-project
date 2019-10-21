extends Node2D

var q_AudioEffect : AudioEffect = AudioEffectAmplify.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffect,true)

func nodeFunction(q_AudioEffect : AudioEffect, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_AudioEffect = AudioEffect.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioEffect)
