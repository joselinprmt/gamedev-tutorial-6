extends Node2D

var has_played = false


func _ready() -> void:
	$Label.visible_ratio = 0
	

func _on_area_2d_body_entered(body) -> void:
	if body.get_name() == "Player" and not has_played:
		has_played = true
		$AnimationPlayer.play("show_text")
