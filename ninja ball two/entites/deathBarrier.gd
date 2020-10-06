extends Area2D


func _on_death_body_entered(body):
	if body.name == "Ball":
		Globals.changeScene("res://scenes/game over.tscn")
