tool
extends Control

export (StreamTexture) var example

# warning-ignore:unused_class_variable
var BG_UL = Vector2(2, 0) # BackGround Up Left
# warning-ignore:unused_class_variable
var BG_UR = Vector2(3, 0) # BackGround Up Righ
# warning-ignore:unused_class_variable
var BG_DL = Vector2(2, 1) # BackGround Down Left
# warning-ignore:unused_class_variable
var BG_DR = Vector2(3, 1) # BackGround Down Right

# warning-ignore:unused_class_variable
var IC_UL = Vector2(4, 0) # InnerCorner Up Left
# warning-ignore:unused_class_variable
var IC_UR = Vector2(5, 0) # InnerCorner Up Righ
# warning-ignore:unused_class_variable
var IC_DL = Vector2(4, 1) # InnerCorner Down Left
# warning-ignore:unused_class_variable
var IC_DR = Vector2(5, 1) # InnerCorner Down Right

# warning-ignore:unused_class_variable
var UL_UL = Vector2(0, 2) # UpLeftCorner Up Left
# warning-ignore:unused_class_variable
var UL_UR = Vector2(1, 2) # UpLeftCorner Up Righ
# warning-ignore:unused_class_variable
var UL_DL = Vector2(0, 3) # UpLeftCorner Down Left
# warning-ignore:unused_class_variable
var UL_DR = Vector2(1, 3) # UpLeftCorner Down Right

# warning-ignore:unused_class_variable
var UR_UL = Vector2(4, 2) # UpRightCorner Up Left
# warning-ignore:unused_class_variable
var UR_UR = Vector2(5, 2) # UpRightCorner Up Righ
# warning-ignore:unused_class_variable
var UR_DL = Vector2(4, 3) # UpRightCorner Down Left
# warning-ignore:unused_class_variable
var UR_DR = Vector2(5, 3) # UpRightCorner Down Right

# warning-ignore:unused_class_variable
var DL_UL = Vector2(0, 6) # DownLeftCorner Up Left
# warning-ignore:unused_class_variable
var DL_UR = Vector2(1, 6) # DownLeftCorner Up Righ
# warning-ignore:unused_class_variable
var DL_DL = Vector2(0, 7) # DownLeftCorner Down Left
# warning-ignore:unused_class_variable
var DL_DR = Vector2(1, 7) # DownLeftCorner Down Right

# warning-ignore:unused_class_variable
var DR_UL = Vector2(4, 6) # DownRightCorner Up Left
# warning-ignore:unused_class_variable
var DR_UR = Vector2(5, 6) # DownRightCorner Up Righ
# warning-ignore:unused_class_variable
var DR_DL = Vector2(4, 7) # DownRightCorner Down Left
# warning-ignore:unused_class_variable
var DR_DR = Vector2(5, 7) # DownRightCorner Down Right

# warning-ignore:unused_class_variable
var UB_UL = Vector2(2, 2) # UpBorder Up Left
# warning-ignore:unused_class_variable
var UB_UR = Vector2(3, 2) # UpBorder Up Righ
# warning-ignore:unused_class_variable
var UB_DL = Vector2(2, 3) # UpBorder Down Left
# warning-ignore:unused_class_variable
var UB_DR = Vector2(3, 3) # UpBorder Down Right

# warning-ignore:unused_class_variable
var DB_UL = Vector2(2, 6) # DownBorder Up Left
# warning-ignore:unused_class_variable
var DB_UR = Vector2(3, 6) # DownBorder Up Righ
# warning-ignore:unused_class_variable
var DB_DL = Vector2(2, 7) # DownBorder Down Left
# warning-ignore:unused_class_variable
var DB_DR = Vector2(3, 7) # DownBorder Down Right

# warning-ignore:unused_class_variable
var LB_UL = Vector2(0, 4) # LeftBorder Up Left
# warning-ignore:unused_class_variable
var LB_UR = Vector2(1, 4) # LeftBorder Up Righ
# warning-ignore:unused_class_variable
var LB_DL = Vector2(0, 5) # LeftBorder Down Left
# warning-ignore:unused_class_variable
var LB_DR = Vector2(1, 5) # LeftBorder Down Right

# warning-ignore:unused_class_variable
var RB_UL = Vector2(4, 4) # RightBorder Up Left
# warning-ignore:unused_class_variable
var RB_UR = Vector2(5, 4) # RightBorder Up Righ
# warning-ignore:unused_class_variable
var RB_DL = Vector2(4, 5) # RightBorder Down Left
# warning-ignore:unused_class_variable
var RB_DR = Vector2(5, 5) # RightBorder Down Right

# warning-ignore:unused_class_variable
var CB_UL = Vector2(2, 4) # CenterBlock Up Left
# warning-ignore:unused_class_variable
var CB_UR = Vector2(3, 4) # CenterBlock Up Righ
# warning-ignore:unused_class_variable
var CB_DL = Vector2(2, 5) # CenterBlock Down Left
# warning-ignore:unused_class_variable
var CB_DR = Vector2(3, 5) # CenterBlock Down Right

var map =  [UL_UL, UL_UR, UR_UL, UR_UR, UB_UL, UB_UR, IC_UL, IC_UR, UR_UL, UR_UR, DL_UL, DR_UR, UL_UL, UL_UR, UR_UL, UR_UR,
			UL_DL, IC_DR, IC_DL, UR_DR, IC_DL, IC_DR, DB_DL, DB_DR, DR_DL, DR_DR, DL_DL, DR_DR, UL_DL, UL_DR, UR_DL, UR_DR,
			DL_UL, IC_UR, IC_UL, DR_UR, LB_UL, IC_UR, IC_UL, RB_UR, UL_UL, UR_UR, UL_UL, UL_UR, DL_UL, DL_UR, DR_UL, DR_UR,
			DL_DL, DL_DR, DR_DL, DR_DR, LB_DL, IC_DR, IC_DL, RB_DR, UL_DL, UR_DR, DL_DL, DL_DR, DL_DL, DL_DR, DR_DL, DR_DR,
			CB_UL, CB_UR, CB_UL, CB_UR, CB_UL, CB_UR, IC_UL, IC_UR, LB_UL, LB_UR, RB_UL, RB_UR, CB_UL, CB_UR, UB_UL, UB_UR,
			CB_DL, IC_DR, IC_DL, CB_DR, IC_DL, IC_DR, CB_DL, CB_DR, LB_DL, LB_DR, RB_DL, RB_DR, CB_DL, CB_DR, DB_DL, DB_DR,
			CB_UL, IC_UR, IC_UL, CB_UR, CB_UL, IC_UR, IC_UL, CB_UR, UB_UL, UB_UR, DB_UL, DB_UR, UL_UL, UR_UR, LB_UL, RB_UR, 
			CB_DL, CB_DR, CB_DL, CB_DR, CB_DL, IC_DR, IC_DL, CB_DR, UB_DL, UB_DR, DB_DL, DB_DR, DL_DL, DR_DR, LB_DL, RB_DR,
			IC_UL, IC_UR, IC_UL, IC_UR, LB_UL, IC_UR, IC_UL, RB_UR, UB_UL, UB_UR, UB_UL, UB_UR, CB_UL, IC_UR, IC_UL, IC_UR,
			IC_DL, CB_DR, CB_DL, IC_DR, LB_DL, LB_DR, RB_DL, RB_DR, IC_DL, UB_DR, UB_DL, IC_DR, IC_DL, CB_DR, IC_DL, IC_DR,
			IC_UL, CB_UR, CB_UL, IC_UR, LB_UL, LB_UR, RB_UL, RB_UR, IC_UL, DB_UR, DB_UL, IC_UR, IC_UL, CB_UR, BG_UL, BG_UR,
			IC_DL, IC_DR, IC_DL, IC_DR, LB_DL, IC_DR, IC_DL, RB_DR, DB_DL, DB_DR, DB_DL, DB_DR, CB_DL, IC_DR, BG_DL, BG_DR
		   ]

var img = Image.new()

func _popup():
	$Fail.popup_centered()

func _on_Load_pressed():
	$Load_Dialog.popup_centered()

func _ready():
	#_on_Load_Dialog_file_selected("res://addons/Autotiler/example.png")
	pass

func _on_Convert_pressed():
	$Save_Dialog.popup_centered()

func _on_Load_Dialog_file_selected(path):
	print("Load: ", path)
	if img.load(path) != 0:
		_popup()
		return
	if int(img.get_size().x) % 6 != 0 || int(img.get_size().y) % 8 != 0:
		_popup()
		return
	img.convert(Image.FORMAT_RGBA8)
	var tex = ImageTexture.new()
	tex.create_from_image(img)
	$Container/Texture.texture = tex


func _on_Save_Dialog_file_selected(path):
	var quadsize = Vector2(img.get_size().x / 6, img.get_size().y / 8)
	var newimg = Image.new()
	newimg.create(16 * quadsize.x, 12 * quadsize.y, false, Image.FORMAT_RGBA8)
	var srcrect = Rect2(Vector2(0, 0), quadsize)
	var position = Vector2(0, 0)
	print("Converting...")
	for tile in map:
		srcrect.position = quadsize * tile
		#print("Blit: ", srcrect, " to ", quadsize * position)
		newimg.blit_rect(img, srcrect, quadsize * position)
		position += Vector2(1, 0)	
		if position.x == 16:
			position += Vector2(-16, 1)
	print("Save: ", path)
	newimg.save_png(path)
