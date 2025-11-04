extends Node2D
@export var col: Color = hourglass_ui_color
var hourglass_ui_color: Color = (Color.WHITE) 
# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_hourglass_red_body_entered(body):
	visible = true
	hourglass_ui_color = Color.RED
	pass # Replace with function body.

func _on_hourglass_blue_body_entered(body):
	visible = true
	hourglass_ui_color = Color.BLUE
	pass # Replace with function body.


func _on_hourglass_yellow_body_entered(body):
	visible = true
	hourglass_ui_color = Color.YELLOW
	pass # Replace with function body.


func _on_visibility_changed():
	
	pass # Replace with function body.
