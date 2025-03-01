extends Area2D

@export var scene_name: String = "WinScreen"


func _on_win_trigger_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + scene_name + ".tscn"))
