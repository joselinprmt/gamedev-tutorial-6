extends Area2D

@export var scene_name: String = "WinScreen"


func _on_win_trigger_body_entered(body) -> void:
	if body.get_name() == "Player":
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://scenes/signals/" + scene_name + ".tscn")
