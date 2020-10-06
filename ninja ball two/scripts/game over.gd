extends CanvasLayer

func _ready():
	$Label2.text = "Score: " + str(Globals.score)
	if Globals.score > Globals.highscore:
		Globals.highscore = Globals.score
		
	# save the score
	var file = File.new()
	var error = file.open(Globals.save_path, File.WRITE)
	if error == OK:
		file.store_var(Globals.data)
		file.close()

func _on_retry_pressed():
	Globals.score = 0
	Globals.changeScene("res://Level.tscn")


func _on_quit_pressed():
	get_tree().quit()
