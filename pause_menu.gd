extends Control

@onready var pause_menu = $"."

func _ready():
	resume()

func pause():
	get_tree().paused = true
	pause_menu.show()
	Engine
	

func resume():
	get_tree().paused = false
	pause_menu.hide()
	


func _on_resume_pressed():
	resume()


func _on_restart_level_pressed():
	get_tree().reload_current_scene()


func _on_options_pressed():
	
	#eventually add options menu for audio and possibly changing display to fullscreen or windowed?
	pass


func _on_quit_pressed():
	get_tree().quit()


func _process(delta):
	if Input.is_action_just_pressed("Pause") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("Pause") and get_tree().paused:
		resume()
	
