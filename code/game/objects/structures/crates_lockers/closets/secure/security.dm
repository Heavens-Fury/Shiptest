/obj/structure/closet/secure_closet/captains
	name = "\proper captain's locker"
	req_access = list(ACCESS_CAPTAIN)
	icon_state = "cap"

/obj/structure/closet/secure_closet/captains/PopulateContents()
	..()
	new /obj/item/storage/bag/garment/captain(src)
	//WS Begin
	new /obj/item/clothing/head/beret/captain(src) //Berets
	new /obj/item/storage/backpack/messenger/com(src) //Messenger Bags
	//WS End
	if(prob(33))
		new /obj/item/storage/backpack/captain(src)
	else if(prob(50))
		new /obj/item/storage/backpack/satchel/cap(src)
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/storage/backpack/duffelbag/captain(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/cartridge/captain(src)
	new /obj/item/storage/box/silver_ids(src)
	new /obj/item/radio/headset/heads/captain/alt(src)
	new /obj/item/radio/headset/heads/captain(src)
	new /obj/item/storage/belt/sabre(src)
	new /obj/item/gun/energy/e_gun(src)
	new /obj/item/door_remote/captain(src)
	new /obj/item/card/id/captains_spare(src)
	new /obj/item/storage/photo_album/Captain(src)

/obj/structure/closet/secure_closet/captains/vanguard
	name = "vanguard's locker"

/obj/structure/closet/secure_closet/captains/vanguard/PopulateContents()
	new /obj/item/storage/bag/garment/inteq/vanguard(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/storage/belt/security/webbing/inteq/alt(src)
	new /obj/item/storage/belt/security/webbing/inteq(src)
	new /obj/item/storage/belt/military/assault(src)
	new /obj/item/radio/headset/inteq/alt/captain(src)
	new /obj/item/shield/riot/tele(src)
	new /obj/item/areaeditor/shuttle(src)
	new /obj/item/storage/backpack/messenger/inteq(src)

/obj/structure/closet/secure_closet/captains/solgov

/obj/structure/closet/secure_closet/captains/solgov/PopulateContents()
	new /obj/item/storage/bag/garment/solgov/captain(src)
	new /obj/item/folder/solgov(src)
	new /obj/item/folder/solgov(src)
	new /obj/item/folder/solgov/red(src)
	new /obj/item/folder/solgov/red(src)
	new /obj/item/storage/backpack/captain(src)
	new /obj/item/door_remote/captain(src)
	new /obj/item/storage/belt/sabre/solgov(src)
	new /obj/item/stamp/solgov(src)
	new /obj/item/spacecash/bundle/loadsamoney(src)
	new /obj/item/gun/ballistic/automatic/powered/gauss/modelh(src)
	new /obj/item/ammo_box/magazine/modelh(src)
	new /obj/item/ammo_box/magazine/modelh(src)
	new /obj/item/areaeditor/shuttle(src)

/obj/structure/closet/secure_closet/head_of_personnel
	name = "\proper head of personnel's locker"
	req_access = list(ACCESS_HOP)
	icon_state = "hop"

/obj/structure/closet/secure_closet/head_of_personnel/PopulateContents()
	..()

	new /obj/item/storage/bag/garment/hop(src)
	new /obj/item/storage/lockbox/medal/service(src)
	new /obj/item/cartridge/head_of_personnel(src)
	new /obj/item/radio/headset/heads/head_of_personnel(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/gun/energy/e_gun/mini(src) //WS Edit - Gives HoP a mini egun
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/door_remote/civilian(src)
	new /obj/item/circuitboard/machine/techfab/department/service(src)
	new /obj/item/storage/photo_album/HoP(src)
	new /obj/item/storage/lockbox/medal/hop(src)

/obj/structure/closet/secure_closet/head_of_personnel/solgov
	name = "\proper overseer's locker"

/obj/structure/closet/secure_closet/head_of_personnel/solgov/PopulateContents()
	new /obj/item/folder/solgov(src)
	new /obj/item/folder/solgov(src)
	new /obj/item/folder/solgov/red(src)
	new /obj/item/storage/belt/sabre/solgov(src)
	new /obj/item/storage/backpack(src)
	new /obj/item/pen/solgov(src)
	new /obj/item/clothing/under/solgov/dress(src)
	new /obj/item/stamp/solgov(src)

/obj/structure/closet/secure_closet/hos
	name = "\proper head of security's locker"
	req_access = list(ACCESS_HOS)
	icon_state = "hos"

/obj/structure/closet/secure_closet/hos/PopulateContents()
	..()
	new /obj/item/storage/bag/garment/hos(src)
	new /obj/item/storage/box/deputy(src) //WS edit - Small QoL Brig additions
	new /obj/item/cartridge/hos(src)
	new /obj/item/radio/headset/heads/hos/alt(src) //WS edit - Small QoL Brig additions
	new /obj/item/radio/headset/heads/hos(src)
	new /obj/item/megaphone/sec(src)
	new /obj/item/holosign_creator/security(src)
	new /obj/item/storage/lockbox/medal/sec(src)
	new /obj/item/storage/lockbox/loyalty(src)
	new /obj/item/storage/box/flashbangs(src)
	new /obj/item/shield/riot/tele(src)
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/gun/energy/e_gun/hos(src)
	new /obj/item/gun/ballistic/automatic/pistol/commissar(src) //WS edit - free lethals
	new /obj/item/pinpointer/nuke(src)
	new /obj/item/circuitboard/machine/techfab/department/security(src)
	new /obj/item/storage/photo_album/HoS(src)
	new /obj/item/gun_voucher //WS edit - gun gun gun gun gun gun gun

/obj/structure/closet/secure_closet/empty/warden
	name = "\proper warden's locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "warden"

/obj/structure/closet/secure_closet/warden
	name = "\proper warden's locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "warden"

/obj/structure/closet/secure_closet/warden/PopulateContents()
	..()
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/clothing/suit/armor/vest/security/warden(src)
	new /obj/item/clothing/head/warden(src)
	new /obj/item/clothing/head/warden/drill(src)
	new /obj/item/clothing/head/beret/sec/warden(src)
	new /obj/item/clothing/suit/armor/vest/security/warden/alt(src)
	new /obj/item/clothing/under/rank/security/warden/skirt(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/holosign_creator/security(src)
	new /obj/item/clothing/mask/gas/sechailer(src)
	new /obj/item/storage/box/zipties(src)
	new /obj/item/storage/box/flashbangs(src)
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/megaphone/sec(src) //WS edit - Small QoL Brig additions
	new /obj/item/clothing/gloves/krav_maga/sec(src)
	new /obj/item/door_remote/head_of_security(src)
	new /obj/item/gun/ballistic/shotgun/automatic/combat/compact(src)
	new /obj/item/gun/ballistic/automatic/pistol/commander(src) //WS edit - free lethals
	new /obj/item/gun_voucher //WS edit - gun gun gun gun gun gun gun

/obj/structure/closet/secure_closet/security
	name = "security officer's locker"
	req_access = list(ACCESS_SECURITY)
	icon_state = "sec"

/obj/structure/closet/secure_closet/security/PopulateContents()
	..()
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/head/helmet/sec(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/radio/headset/headset_sec/alt(src)
	//WS begin - Prescription HUDs
	if(prob(75))
		new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	else
		new /obj/item/clothing/glasses/hud/security/prescription(src)
	//WS end
	new /obj/item/flashlight/seclite(src)

/obj/structure/closet/secure_closet/security/solgov
	name = "sonnensöldners's locker"

/obj/structure/closet/secure_closet/security/solgov/PopulateContents()
	new /obj/item/clothing/head/solgov/sonnensoldner(src)
	new /obj/item/radio{icon_state = "sec_radio"}(src)
	new /obj/item/clothing/under/solgov/formal(src)
	new /obj/item/clothing/under/solgov/dress(src)
	new /obj/item/clothing/under/solgov(src)
	new /obj/item/clothing/shoes/workboots(src)
	new /obj/item/storage/belt/sabre/solgov(src)
	new /obj/item/clothing/gloves/combat(src)
	new /obj/item/radio/headset/solgov/alt(src)
	new /obj/item/storage/backpack(src)
	new /obj/item/clothing/suit/armor/vest/bulletproof/solgov(src)

/obj/structure/closet/secure_closet/security/sec

/obj/structure/closet/secure_closet/security/sec/PopulateContents()
	..()
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/gun/ballistic/automatic/pistol/commander/no_mag(src) //WS edit - free lethals //shiptest: these comments are very funny, please dont remove them

/obj/structure/closet/secure_closet/security/cargo

/obj/structure/closet/secure_closet/security/cargo/PopulateContents()
	..()
	new /obj/item/clothing/accessory/armband/cargo(src)

/obj/structure/closet/secure_closet/security/engine

/obj/structure/closet/secure_closet/security/engine/PopulateContents()
	..()
	new /obj/item/clothing/accessory/armband/engine(src)

/obj/structure/closet/secure_closet/security/science

/obj/structure/closet/secure_closet/security/science/PopulateContents()
	..()
	new /obj/item/clothing/accessory/armband/science(src)

/obj/structure/closet/secure_closet/security/med

/obj/structure/closet/secure_closet/security/med/PopulateContents()
	..()
	new /obj/item/clothing/accessory/armband/medblue(src)

/obj/structure/closet/secure_closet/detective
	name = "\improper detective's cabinet"
	req_access = list(ACCESS_FORENSICS_LOCKERS)
	icon_state = "cabinet"
	resistance_flags = FLAMMABLE
	max_integrity = 70
	open_sound = 'sound/machines/wooden_closet_open.ogg'
	close_sound = 'sound/machines/wooden_closet_close.ogg'

/obj/structure/closet/secure_closet/detective/PopulateContents()
	..()
	new /obj/item/storage/box/evidence(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/detective_scanner(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/holosign_creator/security(src)
	new /obj/item/reagent_containers/spray/pepper(src)
	new /obj/item/clothing/suit/armor/vest/det_suit(src)
	new /obj/item/clothing/accessory/holster/detective(src) //WS Edit - Made Holsters Accessories
	new /obj/item/pinpointer/crew(src)
	new /obj/item/binoculars(src)
	new /obj/item/clothing/neck/tie/red(src)
	new	/obj/item/clothing/neck/tie/black(src)
	new /obj/item/clothing/neck/tie/detective(src)
	new /obj/item/storage/box/rxglasses/spyglasskit(src)

/obj/structure/closet/secure_closet/injection
	name = "lethal injections"
	req_access = list(ACCESS_HOS)

/obj/structure/closet/secure_closet/injection/PopulateContents()
	..()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/syringe/lethal/execution(src)

/obj/structure/closet/secure_closet/brig
	name = "brig locker"
	req_access = list(ACCESS_BRIG)
	anchored = TRUE
	var/id = null

/obj/structure/closet/secure_closet/evidence
	anchored = TRUE
	name = "Secure Evidence Closet"
	req_access_txt = "0"
	req_one_access_txt = list(ACCESS_ARMORY, ACCESS_FORENSICS_LOCKERS)

/obj/structure/closet/secure_closet/brig/PopulateContents()
	..()
	new /obj/item/clothing/under/rank/prisoner(src)
	new /obj/item/clothing/under/rank/prisoner/skirt(src)
	new /obj/item/clothing/shoes/sneakers/orange(src)
	new /obj/item/clothing/under/plasmaman/prisoner(src)
	new /obj/item/clothing/under/plasmaman/prisoner/skirt(src)
	new /obj/item/clothing/head/helmet/space/plasmaman/prisoner(src)

/obj/structure/closet/secure_closet/courtroom
	name = "courtroom locker"
	req_access = list(ACCESS_COURT)

/obj/structure/closet/secure_closet/courtroom/PopulateContents()
	..()
	new /obj/item/clothing/shoes/sneakers/brown(src)
	for(var/i in 1 to 3)
		new /obj/item/paper/fluff/jobs/security/court_judgement (src)
	new /obj/item/pen (src)
	new /obj/item/clothing/suit/judgerobe (src)
	new /obj/item/clothing/head/powdered_wig (src)
	new /obj/item/storage/briefcase(src)

/obj/structure/closet/secure_closet/contraband/armory
	anchored = TRUE
	name = "Contraband Locker"
	req_access = list(ACCESS_ARMORY)

/obj/structure/closet/secure_closet/contraband/heads
	anchored = TRUE
	name = "Contraband Locker"
	req_access = list(ACCESS_HEADS)

/obj/structure/closet/secure_closet/armory1
	name = "armory armor locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "armory"

/obj/structure/closet/secure_closet/armory1/PopulateContents()
	..()
	new /obj/item/clothing/suit/hooded/ablative(src)
	for(var/i in 1 to 3)
		new /obj/item/clothing/suit/armor/riot(src)
	for(var/i in 1 to 3)
		new /obj/item/clothing/head/helmet/riot(src)
	for(var/i in 1 to 3)
		new /obj/item/shield/riot(src)

/obj/structure/closet/secure_closet/armory2
	name = "armory ballistics locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "armory"

/obj/structure/closet/secure_closet/armory2/PopulateContents()
	..()
	new /obj/item/storage/box/firingpins(src)
	for(var/i in 1 to 3)
		new /obj/item/storage/box/rubbershot(src)
	for(var/i in 1 to 3)
		new /obj/item/gun/ballistic/shotgun/hellfire(src)

/obj/structure/closet/secure_closet/armory3
	name = "armory energy gun locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "armory"

/obj/structure/closet/secure_closet/armory3/PopulateContents()
	..()
	new /obj/item/storage/box/firingpins(src)
	new /obj/item/gun/energy/ionrifle(src)
	for(var/i in 1 to 3)
		new /obj/item/gun/energy/e_gun(src)
	for(var/i in 1 to 3)
		new /obj/item/gun/energy/laser(src)

/obj/structure/closet/secure_closet/tac
	name = "armory tac locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "tac"

/obj/structure/closet/secure_closet/tac/PopulateContents()
	..()
	new /obj/item/gun/ballistic/automatic/smg/wt550(src)
	new /obj/item/clothing/head/helmet/bulletproof(src)
	new /obj/item/clothing/mask/gas/sechailer(src)
	new /obj/item/clothing/suit/armor/vest/bulletproof(src)

/obj/structure/closet/secure_closet/lethalshots
	name = "lethal ammunition"
	req_access = list(ACCESS_ARMORY)
	icon_state = "tac"

/obj/structure/closet/secure_closet/lethalshots/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/storage/box/lethalshot(src)
		new /obj/item/ammo_box/magazine/co9mm(src) //WS edit - begin - better safe than sorry
		new /obj/item/ammo_box/magazine/co9mm(src)
		new /obj/item/ammo_box/magazine/co9mm(src)
		new /obj/item/ammo_box/magazine/co9mm(src) //WS edit - end

/obj/structure/closet/secure_closet/labor_camp_security
	name = "labor camp security locker"
	req_access = list(ACCESS_SECURITY)
	icon_state = "sec"

/obj/structure/closet/secure_closet/labor_camp_security/PopulateContents()
	..()
	new /obj/item/clothing/suit/armor/vest(src)
	new /obj/item/clothing/head/helmet/sec(src)
	new /obj/item/clothing/under/rank/security/officer(src)
	new /obj/item/clothing/under/rank/security/officer/skirt(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/flashlight/seclite(src)

/obj/structure/closet/secure_closet/brig_phys
	name = "\proper brig physician's locker"
	req_access = list(ACCESS_BRIG)
	icon_state = "brig_phys"

/obj/structure/closet/secure_closet/brig_phys/PopulateContents()
	..()
	new /obj/item/defibrillator/loaded(src)
	new /obj/item/radio/headset/headset_medsec(src)
	new	/obj/item/storage/firstaid/regular(src)
	new	/obj/item/storage/firstaid/fire(src)
	new	/obj/item/storage/firstaid/toxin(src)
	new	/obj/item/storage/firstaid/o2(src)
	new	/obj/item/storage/firstaid/brute(src)
	new /obj/item/storage/belt/medical(src)
	new /obj/item/reagent_containers/spray/pepper(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/restraints/handcuffs(src)
	new /obj/item/clothing/gloves/color/latex/nitrile(src)
	new /obj/item/clothing/suit/toggle/labcoat/brig_phys(src)
	new /obj/item/clothing/suit/armor/vest/security/brig_phys(src)
	new /obj/item/clothing/head/beret/sec/brig_phys(src)
