extends Label


func _process(_delta):
	self.text = "Level " + str(Global.level) + "\nLives: " + str(Global.lives)
