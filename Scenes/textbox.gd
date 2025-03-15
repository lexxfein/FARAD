extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer/HBoxContainer/Start
@onready var end_symbol = $TextboxContainer/MarginContainer/HBoxContainer/End
@onready var label = $TextboxContainer/MarginContainer/HBoxContainer/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide_textbox()
	add_text("this text is gon be added")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func hide_textbox():
	start_symbol.text= ""
	end_symbol.text = ""
	label.text = ""
	textbox_container.hide()
	
func show_textbox():
	start_symbol.text = "*"
	textbox_container.show()
	
	
func add_text(next_text):
	label.text = next_text
	show_textbox()
	
