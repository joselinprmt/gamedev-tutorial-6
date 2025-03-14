extends Sprite2D

@onready var link_button: LinkButton = $LinkButton


func _ready() -> void:
	Global.lives = 3
	await get_tree().create_timer(4).timeout
