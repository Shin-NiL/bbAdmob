
extends Button

var admob = null
#get this string when you register your app in adbmob backend
#If you do not put the correct app publisher id, you won't get any ads
var admob_app_id = "ca-app-pub-3940256099942544/6300978111" 

func _init():
	if(Globals.has_singleton("bbAdmob")):
		admob = Globals.get_singleton("bbAdmob")
		#You can call admob.init_admob_test or admob.init_admob_real
		#If the second argument is true, the banner ad will be at the top of the screen
		#Function prototype init_admob_test(final String app_id, boolean isTop)
		admob.init_admob_banner_test(get_instance_ID(), admob_app_id, false)
	
func _ready():
	# Initialization here
	pass



func _on_Show_Banner_Button_pressed():
	if admob != null:
		admob.show_banner()
	
	
func _on_Hide_Banner_Button_pressed():
	if admob != null:
		admob.hide_banner()
