extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

func _on_hourglass_red_body_entered(body):
	visible = true
	pass # Replace with function body.


func _on_hourglass_blue_body_entered(body):
	visible = true
	pass # Replace with function body.


func _on_hourglass_yellow_body_entered(body):
	visible = true
	pass # Replace with function body.
