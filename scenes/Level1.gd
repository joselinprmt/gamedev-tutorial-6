extends Node2D

@export var level_number: int = 1


func _ready():
	Global.level = level_number  
