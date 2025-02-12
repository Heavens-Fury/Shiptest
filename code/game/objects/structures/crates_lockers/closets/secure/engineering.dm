/obj/structure/closet/secure_closet/engineering_chief
	name = "\proper chief engineer's locker"
	req_access = list(ACCESS_CE)
	icon_state = "ce"

/obj/structure/closet/secure_closet/engineering_chief/PopulateContents()
	..()
	new /obj/item/storage/bag/garment/engineering_chief(src)
	//WS Begin
	new /obj/item/card/id/departmental_budget/eng(src) //Budger Cards
	new /obj/item/stack/tape/industrial/pro(src) //Better tape
	//WS End
	new /obj/item/tank/jetpack/suit(src)
	new /obj/item/cartridge/ce(src)
	new /obj/item/radio/headset/heads/ce(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/areaeditor/blueprints(src)
	new /obj/item/holosign_creator/engineering(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/clothing/glasses/meson/engine(src)
	new /obj/item/door_remote/chief_engineer(src)
	new /obj/item/pipe_dispenser(src)
	new /obj/item/circuitboard/machine/techfab/department/engineering(src)
	new /obj/item/extinguisher/advanced(src)
	new /obj/item/storage/photo_album/CE(src)

/obj/structure/closet/secure_closet/engineering_electrical
	name = "electrical supplies locker"
	req_access = list(ACCESS_ENGINE_EQUIP)
	icon_state = "eng"
	icon_door = "eng_elec"

/obj/structure/closet/secure_closet/engineering_electrical/PopulateContents()
	..()
	var/static/items_inside = list(
		//WS Begin
		/obj/item/stack/tape/industrial/electrical = 1, // Better tape
		//WS End
		/obj/item/clothing/gloves/color/yellow = 2,
		/obj/item/storage/toolbox/electrical = 3,
		/obj/item/electronics/apc = 3,
		/obj/item/multitool = 3,
		/obj/item/clothing/head/safety_helmet = 2)
	generate_items_inside(items_inside,src)

/obj/structure/closet/secure_closet/engineering_welding
	name = "welding supplies locker"
	req_access = list(ACCESS_ENGINE_EQUIP)
	icon_state = "eng"
	icon_door = "eng_weld"

/obj/structure/closet/secure_closet/engineering_welding/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/clothing/head/welding(src)
	for(var/i in 1 to 3)
		new /obj/item/weldingtool(src)

/obj/structure/closet/secure_closet/engineering_personal
	name = "engineer's locker"
	req_access = list(ACCESS_ENGINE_EQUIP)
	icon_state = "eng_secure"

/obj/structure/closet/secure_closet/engineering_personal/PopulateContents()
	..()
	new /obj/item/stack/tape/industrial(src) //WS edit - Tape
	new /obj/item/clothing/head/beret/eng(src) //WS edit - Berets
	new /obj/item/clothing/head/safety_helmet(src)
	new /obj/item/clothing/glasses/meson/prescription(src) //WS edit - Prescription HUDs
	new /obj/item/radio/headset/headset_eng(src)
	new /obj/item/storage/toolbox/mechanical(src)
	new /obj/item/tank/internals/emergency_oxygen/engi(src)
	new /obj/item/holosign_creator/engineering(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/glasses/meson/engine(src)
	new /obj/item/storage/box/emptysandbags(src)
	new /obj/item/storage/bag/construction(src)

/obj/structure/closet/secure_closet/engineering_personal/solgov
	name = "ship engineer's locker"

/obj/structure/closet/secure_closet/engineering_personal/solgov/PopulateContents()
	new /obj/item/storage/backpack/industrial(src)
	new /obj/item/clothing/head/hardhat/solgov(src)
	new /obj/item/folder/solgov(src)
	new /obj/item/clipboard(src)
	new /obj/item/clothing/under/solgov/formal(src)
	new /obj/item/clothing/under/solgov(src)
	new /obj/item/clothing/accessory/armband/engine(src)
	new /obj/item/storage/toolbox/mechanical(src)
	new /obj/item/clothing/glasses/welding(src)
	new /obj/item/clothing/head/welding(src)
	new /obj/item/pen/solgov(src)
	new /obj/item/clothing/suit/hazardvest/solgov(src)
	new /obj/item/clothing/shoes/workboots(src)
	new /obj/item/clothing/gloves/combat(src)
	new /obj/item/clothing/glasses/meson/prescription(src)

/obj/structure/closet/secure_closet/atmospherics
	name = "\proper atmospheric technician's locker"
	req_access = list(ACCESS_ATMOSPHERICS)
	icon_state = "atmos"

/obj/structure/closet/secure_closet/atmospherics/PopulateContents()
	..()
	new /obj/item/radio/headset/headset_eng(src)
	new /obj/item/pipe_dispenser(src)
	new /obj/item/storage/toolbox/mechanical(src)
	new /obj/item/tank/internals/emergency_oxygen/engi(src)
	new /obj/item/holosign_creator/atmos(src)
	new /obj/item/watertank/atmos(src)
	new /obj/item/clothing/suit/fire/atmos(src)
	new /obj/item/clothing/mask/gas/atmos(src)
	new /obj/item/clothing/head/hardhat/atmos(src)
	new /obj/item/clothing/head/safety_helmet(src)
	new /obj/item/clothing/glasses/meson/engine/tray(src)
	new /obj/item/extinguisher/advanced(src)
