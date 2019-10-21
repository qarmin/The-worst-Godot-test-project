extends Node2D

var q_StyleBox : StyleBox = StyleBoxEmpty.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_StyleBox,true)

func nodeFunction(q_StyleBox : StyleBox, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_StyleBox = StyleBox.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_StyleBox)

	for i in range(4):
		q_StyleBox.set_default_margin( i,Autoload.get_float())#MARGIN

	q_StyleBox.draw( RID(), Autoload.get_rect2())

	q_StyleBox.get_center_size()
	q_StyleBox.get_current_item_drawn()
	q_StyleBox.get_margin( Autoload.get_int())#MARGIN
	q_StyleBox.get_minimum_size()
	q_StyleBox.get_offset()

	q_StyleBox.test_mask( Autoload.get_vector2(), Autoload.get_rect2())

