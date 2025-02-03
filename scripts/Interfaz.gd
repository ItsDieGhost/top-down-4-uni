extends Control
const icoPhill = preload("res://Art/Factions/Knights/Troops/Pawn/Yellow/Pawn_Yellow.png");
var chat: int = 0
func _ready():
	pass
	
func _activar(TEXTO:String , IMAGEN:Texture) -> void:
	$CanvasLayer.show();
	$CanvasLayer/Label.text = TEXTO;
	$CanvasLayer/AnimationPlayer.play("escribir")
	$CanvasLayer/TextureRect.texture = IMAGEN;

func _process(_delta):
	#Phill
	if(GDialogoss.npc1 == true):
		_activar(GDialogoss.npc.cap.pda[chat], icoPhill)
		_cambiar()
		
func _cambiar() -> void:
	if($CanvasLayer/Button.pressed == true):
		chat+=1;
		
	if(chat>GDialogoss.npc.cap1.pd.size()):
		chat = 0
		hide()
