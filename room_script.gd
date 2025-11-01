extends Node2D

@export var room_ident: String
@export var torch_enabled: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	$Torch.visible = torch_enabled
	if Globals.room_lights[room_ident] == true:
		$Torch.turn_on()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		$Camera2D.make_current()


func _on_torch_light_on():
	Globals.room_lights[room_ident] = true
