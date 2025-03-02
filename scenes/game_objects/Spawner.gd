extends Node2D

@export var obstacle: PackedScene
@export var timer: int = 10
@export var init_time: int = 0


func _ready():
	await get_tree().create_timer(init_time).timeout
	repeat()


func spawn():
	var spawned = obstacle.instantiate()
	get_parent().call_deferred("add_child", spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(-1000, 1000)

	spawned.global_position = spawn_pos


func repeat():
	spawn()
	await get_tree().create_timer(timer).timeout
	repeat()
