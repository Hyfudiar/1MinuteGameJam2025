extends Node2D

var hourglass_ui_color: Color = Color.WHITE

# Called when the node enters the scene tree for the first time.
func _ready():
	$hourglass_body.modulate = hourglass_ui_color
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_hourglass_red_body_entered(body):
	visible = true
	hourglass_ui_color = Color.hex(0xff6772ff)
	$hourglass_body.modulate = hourglass_ui_color

func _on_hourglass_blue_body_entered(body):
	visible = true
	hourglass_ui_color = Color.hex(0x54a3ffff)
	$hourglass_body.modulate = hourglass_ui_color

func _on_hourglass_yellow_body_entered(body):
	visible = true
	hourglass_ui_color = Color.hex(0xfff660ff)
	$hourglass_body.modulate = hourglass_ui_color
