tool
extends EditorPlugin

var dock

func _enter_tree():
	dock = preload("res://addons/Autotiler/Autotiler.tscn").instance()
	add_control_to_dock(DOCK_SLOT_LEFT_BR, dock)
	#add_control_to_container(EditorPlugin.CONTAINER_CANVAS_EDITOR_SIDE_LEFT , dock)

func _exit_tree():
	remove_control_from_docks(dock)
	#remove_control_from_container(EditorPlugin.CONTAINER_CANVAS_EDITOR_SIDE_LEFT , dock)
	dock.free()