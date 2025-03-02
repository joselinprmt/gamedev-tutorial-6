extends Sprite2D

@export var scene_name: String = "Level1"

var can_restart := false


func _ready() -> void:
	await get_tree().create_timer(4).timeout
	can_restart = true


func _process(_delta) -> void:
	if can_restart and Input.is_action_just_pressed("restart"):
		get_tree().change_scene_to_file("res://scenes/" + scene_name + ".tscn")
