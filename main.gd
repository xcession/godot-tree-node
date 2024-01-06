extends Control


# Define node
@onready var tree = get_node("Tree")


func _ready():
	# Create root tree
	var root = tree.create_item()
	
	# Hide root tree
	tree.set_hide_root(false)
	# Hide folding arrow
	tree.set_hide_folding(false)
	
	# Set column count
	tree.set_columns(2)
	# Enable column titles
	tree.set_column_titles_visible(true)
	
	#Set column title
	tree.set_column_title(0, "Column Title 1")
	tree.set_column_title(1, "Column Title 2")
	
	# Set root text (hidden if set_hide_root = true)
	root.set_text(0, "Root 1")
	root.set_text(1, "Root 2")
	
	# Create first childs
	var child1 = tree.create_item(root)
	child1.set_text(0, "Child 1-1")
	child1.set_text(1, "Child 2-1")
	
	# Create second child
	var child2 = tree.create_item(root)
	child2.set_text(0, "Child 1-2")
	
	# Create child1's subchild
	var subchild1 = tree.create_item(child1)
	subchild1.set_text(0, "Subchild1")
