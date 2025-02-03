extends Control

#retroceder al menu principal
func _on_atras_pressed() -> void:
	get_tree().change_scene_to_file("res://escenas/Menu_Principal.tscn")
