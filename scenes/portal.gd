extends Area2D

@export var next_level_name := ""



func _on_body_entered(body):
	print("enter")
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/"+next_level_name+".tscn")
