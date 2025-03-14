extends Area2D

@export var scene_name: String = "Level" + str(Global.level)


func _on_fall_area_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == scene_name:
			Global.lives -=1
		if (Global.lives == 0):
			call_deferred("change_scene")
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + scene_name + ".tscn")))


func change_scene():
	get_tree().change_scene_to_file("res://scenes/signals/LoseScreen.tscn")
