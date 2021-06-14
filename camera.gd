extends Camera2D

const MOVE_SPEED = 600

func _process(delta):
	var motion = Vector2(
			Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
			Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)

	# Normalize motion to prevent diagonal movement from being
	# `sqrt(2)` times faster than straight movement.
	motion = motion.normalized()

	position += motion * delta * MOVE_SPEED

func _unhandled_input(event):
	if event.is_action_pressed("ui_zoom_in"):
		self.zoom = Vector2(1, 1)
	elif event.is_action_pressed("ui_zoom_out"):
		self.zoom = Vector2(2, 2)
