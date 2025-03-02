extends Sprite2D

@export var scene_name: String = "Level2"


func _ready() -> void:
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://scenes/" + scene_name + ".tscn")
