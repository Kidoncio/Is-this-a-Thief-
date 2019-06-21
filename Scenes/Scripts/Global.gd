extends Node

var Player: KinematicBody2D
var navigation: Navigation2D
var destinations: Node2D

# Groups
const NPC_GROUP: String = "NPC"
const INTERFACE_GROUP: String = "interface"
const LABELS_GROUP: String = "labels"
const SUSPICION_METER_GROUP: String = "SuspicionMeter"

# Volume
var VOLUME_VISION_SFX: float = -20.0

# Methods
const DARK_VISION_MODE_METHOD: String = "dark_vision_mode"
const NIGHT_VISION_MODE_METHOD: String = "night_vision_mode"
const PLAYER_SEEN_METHOD: String = "player_seen"

# Assets Path - !important
const nightvision_on_sfx: String = "res://SFX/nightvision.wav"
const nightvision_off_sfx: String = "res://SFX/nightvision_off.wav"

# Images Path
const RED_LIGHT: String = "res://GFX/Interface/PNG/dotRed.png"
const BLUE_LIGHT: String = "res://GFX/Interface/PNG/dotBlue.png"
const GREEN_LIGHT: String = "res://GFX/Interface/PNG/dotGreen.png"
const PLAYER_SPRITE: String = "res://GFX/PNG/Hitman 1/hitman1_stand.png"
const SOLDIER_SPRITE: String = "res://GFX/PNG/Soldier 1/soldier1_stand.png"

# SFXs
const LOCKED_DOOR_CORRECT: String = "res://SFX/threeTone1.ogg"
const LOCKED_DOOR_BUTTON_PRESSED: String = "res://SFX/twoTone1.ogg"