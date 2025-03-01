extends CharacterBody2D

@export var speed: int = 400
@export var gravity: int = 1200
@export var jump_speed: int = -400
@export var scene_name: String = "LoseScreen"


func get_input():
	velocity.x = 0
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed


func _physics_process(delta):
	velocity.y += delta * gravity
	get_input()
	move_and_slide()


func _process(_delta):
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		$AnimatedSprite2D.play("Jump")
	elif not is_on_floor():
		$AnimatedSprite2D.frame = 1
	elif velocity.x != 0:
		$AnimatedSprite2D.play("Walk")
	else:
		$AnimatedSprite2D.play("Idle")

	if velocity.x != 0:
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		else:
			$AnimatedSprite2D.flip_h = true


func _on_hurt_box_area_entered(area) -> void:
	if area.get_parent().is_in_group("enemy"):
		get_tree().change_scene_to_file("res://scenes/signals/" + scene_name + ".tscn")
