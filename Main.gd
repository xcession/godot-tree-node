extends Control

onready var tree_node = get_node("Tree")

func _ready():
	var root = tree_node.create_item()
	
	tree_node.set_columns(2)
	tree_node.set_column_titles_visible(true)
	
	tree_node.set_column_title(0, "Column Title 1")
	tree_node.set_column_title(1, "Column Title 2")
	
	root.set_text(0, "Root 1")
	#tree_node.set_hide_root(false)
	root.set_text(1, "Root 2")
	
	var child1 = tree_node.create_item(root)
	child1.set_text(0, "Child 1")
	
	var child2 = tree_node.create_item(root)
	child2.set_text(0, "Child 2")
	
	var subchild1 = tree_node.create_item(child1)
	subchild1.set_text(0, "Subchild1")
