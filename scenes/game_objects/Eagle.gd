extends RigidBody2D

@export var scene_name: String = "LoseScreen"


func _ready() -> void:
	add_to_group("enemy")


func change_scene():
	get_tree().change_scene_to_file("res://scenes/signals/" + scene_name + ".tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		Global.lives -= 1

		if Global.lives <= 0:
			call_deferred("change_scene")
		else:
			get_tree().call_deferred(
				"change_scene_to_file", "res://scenes/Level" + str(Global.level) + ".tscn"
			)
