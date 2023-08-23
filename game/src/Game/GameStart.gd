extends Control

const LoadingScreen = preload("res://src/Game/LoadingScreen.gd")

@export_subgroup("Nodes")
@export var loading_screen : LoadingScreen

func _ready() -> void:
	loading_screen.start_loading_screen(_initialize_game)

# REQUIREMENTS
# * FS-333, FS-334, FS-335, FS-341
func _initialize_game() -> void:
	GameSingleton.setup_logger()
	loading_screen.try_update_loading_screen(5)

	# Set this to your Vic2 install dir or a mod's dir to enable compatibility mode
	# (this won't work for mods which rely on vanilla map assets, copy missing assets
	# into the mod's dir for a temporary fix)
	# Usage: OpenVic --compatibility-mode <path>

	var compatibility_mode_paths : PackedStringArray = [ArgumentParser.get_argument(&"compatibility-mode")]

	compatibility_mode_paths = ["C:/Program Files (x86)/Steam/steamapps/common/Victoria 2"]
	#compatibility_mode_paths.push_back("C:/Program Files (x86)/Steam/steamapps/common/Victoria 2/mod/TGC")

	var start := Time.get_ticks_usec()

	loading_screen.try_update_loading_screen(15)
	loading_screen.try_update_loading_screen(25)
	Localisation.initialize()
	loading_screen.try_update_loading_screen(45)
	loading_screen.try_update_loading_screen(50, true)

	# TODO: Loading takes way too long to keep the LoadingScreen at 50%
	# Should either split this up or seperately multithread the compatibility mode loader
	# Or both and emit a signal that allows us to add percentages to the LoadingScreen
	if GameSingleton.load_defines_compatibility_mode(compatibility_mode_paths) != OK:
		push_error("Errors loading game defines!")

	loading_screen.try_update_loading_screen(100)
	var end := Time.get_ticks_usec()
	print("Loading took ", float(end - start) / 1000000, " seconds")

	# change scene in a thread-safe way
	get_tree().call_deferred("change_scene_to_file", "res://src/Game/GameMenu.tscn")

func _on_splash_container_splash_end():
	loading_screen.show()
