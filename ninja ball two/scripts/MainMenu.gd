extends CanvasLayer

func _ready():
	var file = File.new()
	if file.file_exists(Globals.save_path):
		var error = file.open(Globals.save_path, File.READ)
		if error == OK:
			var player_data = file.get_var()
			file.close()
			$Label.text = "Highscore: " + str(player_data["highscore"])
			


func _on_Start_pressed():
	Globals.changeScene("res://Level.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_Button_pressed():
	Globals.changeScene("res://scenes/Skins.tscn")
