extends Area2D

@export var scene_name = "LoseScreen"


func _on_fall_area_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/signals/" + scene_name + ".tscn"))
	else:
		body.queue_free()
