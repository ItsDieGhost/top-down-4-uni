extends Node2D


func _ready() -> void:
	pass # Replace with function body.


func _physics_process(_delta: float) -> void:
	pass
	


func _on_activador_body_entered(body: Node2D) -> void:
	if(body.is_in_group("interactuar")):
		GDialogoss.npc1 = false;

func _on_activador_body_exited(body: Node2D) -> void:
	if(body.is_in_group("interactuar")):
		GDialogoss.npc1 = true;
