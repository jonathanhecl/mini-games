extends Node2D

@export var spawn_count:int = 200
var test_scene = preload("res://loops/test.tscn")

func _ready():
	for i in spawn_count:
		var item = test_scene.instantiate()
		add_child(item)
		
		item.position.x = randi_range(-550, 550)
		item.position.y = randi_range(-300, 300)
		
		var rand_size = randf_range(0.02, 0.4)
		item.scale.x = rand_size
		item.scale.y = rand_size
