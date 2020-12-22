extends CPUParticles2D
func _on_KRButton_button_pressed():
	emitting = true
	yield(get_tree().create_timer(0.2), "timeout")
	emitting = false
