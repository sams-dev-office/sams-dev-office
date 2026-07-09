# Hamster Survivor — MainMenu
# CEO loop verification — Neo was here 2026-07-09
extends Control


func _ready() -> void:
	# Placeholder wiring; full menu comes online once the repo is initialized
	# and the Godot project scaffold lands (see 03_Neo_Code/*/TODO.md).
	print("MainMenu ready — Hamster Survivor")


func _on_start_pressed() -> void:
	# TODO: switch to Arena scene once it exists.
	pass


func _on_quit_pressed() -> void:
	get_tree().quit()
