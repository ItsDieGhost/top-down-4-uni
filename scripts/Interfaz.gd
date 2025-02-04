extends Control
const icoPhill=preload("res://Art/Factions/Knights/Troops/Pawn/Yellow/Captura de pantalla 2025-02-03 213253.png")

var chat:int=0;

func _ready() -> void:
	pass # Replace with function body.

func _activar(TEXTO:String, IMAGEN:Texture)->void:
	$CanvasLayer.hide()
	$CanvasLayer.show()
	$CanvasLayer/Label.text=TEXTO;
	$CanvasLayer/AnimationPlayer.play("Escribir")
	$CanvasLayer/TextureRect.texture=IMAGEN;



func _on_activador_body_entered(body: Node2D) -> void:
	#Phill
	if(body.is_in_group("interactuar")):
		_activar(GDialogoss.npc.cap1.pd[chat], icoPhill)

func _on_activador_body_exited(body: Node2D) -> void:
	if(body.is_in_group("interactuar")):
		$CanvasLayer.hide()

func _on_button_pressed() -> void:
	chat +=1;
	if(chat == GDialogoss.npc.cap1.pd.size()):
		chat = 0;
		$CanvasLayer.hide()
	_activar(GDialogoss.npc.cap1.pd[chat], icoPhill)
