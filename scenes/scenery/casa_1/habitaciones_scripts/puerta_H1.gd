extends StaticBody2D

var entered = false

func _on_area_2d_body_entered(body):
	entered = true


func _on_area_2d_body_exited(body):
	entered = false
