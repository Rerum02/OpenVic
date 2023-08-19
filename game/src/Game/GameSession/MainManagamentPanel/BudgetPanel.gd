extends Button
var Pan = load("res://src/Game/GameSession/MainManagamentPanel/PopupPanel.tscn")
 
func _on_pressed():
	var spawn = Pan.instantiate()
	$"../../..".add_child(spawn) # Spawning window on MainManagamentPanel
