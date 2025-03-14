extends CharacterBody2D

@export var speed: int = -60
@export var gravity: int = 1200
@export var scene_name: String = "LoseScreen"

var facing_right = false


func _ready() -> void:
	add_to_group("enemy")


func _physics_process(delta):
	if not is_on_floor():
		velocity.y = gravity + delta

	if !$RayCast2D.is_colliding() and is_on_floor():
		flip()

	velocity.x = speed
	move_and_slide()


func flip():
	facing_right = !facing_right

	scale.x = abs(scale.x) * -1
	if facing_right:
		speed = abs(speed)
	else:
		speed = abs(speed) * -1


func change_scene():
	get_tree().change_scene_to_file("res://scenes/signals/" + scene_name + ".tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		Global.lives -= 1

		if Global.lives <= 0:
			call_deferred("change_scene")
		else:
			get_tree().call_deferred("change_scene_to_file", "res://scenes/Level" + str(Global.level) + ".tscn")
			
