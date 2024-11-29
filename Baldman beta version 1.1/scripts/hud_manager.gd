extends Control

@onready var coins_counter: Label = $container/coins_container/coins_icon/coins_counter
@onready var score_counter: Label = $container/score_container/score_counter

func _ready() :
	coins_counter.text = $coins



func _process(delta) :
	pass
