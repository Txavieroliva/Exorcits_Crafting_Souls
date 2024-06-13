extends CharacterBody2D
var Player = null
var move = Vector2.ZERO
var vel = 150
func _physics_process(delta):
	move = Vector2.ZERO
	
	if Player != null:
		move = position.direction_to(Player.position)
	else:
		move = Vector2.ZERO
	
	move = move.normalized() * vel
	move = move_and_collide(move)
	
func _on_area_2d_body_entered(body):
	if body != self:
		Player = body


func _on_area_2d_body_exited(body):
	Player = null
