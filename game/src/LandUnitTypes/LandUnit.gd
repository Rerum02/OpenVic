class_name LandUnit

extends Node

#unique name of this unit
#question: does a unit's name have to be unique?
var unitName: String;

#organization value of a land unit
#domain constraint {0.00 - 100.00}
var organization: float;

#speed value of this land unit
#note this is not map speed but individual unit speed
var speed: float;

#time it takes to build a land unit
var buildTime: int;

#reconnaissance value of this land unit
var reconnaissance: float;

#attack value of this land unit
var attack: float;

#defence value of this land unit
var defence: float;

#support value of this land unit
var support: float;

#manoeuvre value of this land unit
var manoeuvre: int;

#buildCost value of this land unit
#an array of all goods required to build this unit
#once goods are implemented we will see how to implement amount of goods
#var buildCosts: Goods[];

#supplyConsumption value of this land unit
#an array of all goods required each in game day by this unit
#once goods are implemented we will see how to implement amount of goods
#var buildCosts: Goods[];

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
