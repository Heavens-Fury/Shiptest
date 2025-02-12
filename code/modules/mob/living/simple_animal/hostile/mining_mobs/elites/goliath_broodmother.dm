#define TENTACLE_PATCH 1
#define SPAWN_CHILDREN 2
#define RAGE 3
#define CALL_CHILDREN 4

/**
 * # Goliath Broodmother
 *
 * A stronger, faster variation of the goliath.  Has the ability to spawn baby goliaths, which it can later detonate at will.
 * When it's health is below half, tendrils will spawn randomly around it.  When it is below a quarter of health, this effect is doubled.
 * It's attacks are as follows:
 * - Spawns a 3x3/plus shape of tentacles on the target location
 * - Spawns 2 baby goliaths on its tile, up to a max of 8.  Children blow up when they die.
 * - The broodmother lets out a noise, and is able to move faster for 6.5 seconds.
 * - Summons your children around you.
 * The broodmother is a fight revolving around stage control, as the activator has to manage the baby goliaths and the broodmother herself, along with all the tendrils.
 */

/mob/living/simple_animal/hostile/asteroid/elite/broodmother
	name = "goliath broodmother"
	desc = "An example of sexual dimorphism, this female goliath looks much different than the males of her species.  She is, however, just as dangerous, if not more."
	gender = FEMALE
	icon = 'icons/mob/lavaland/lavaland_elites_64.dmi'
	icon_state = "broodmother"
	icon_living = "broodmother"
	icon_aggro = "broodmother"
	icon_dead = "egg_sac"
	icon_gib = "syndicate_gib"
	pixel_x = -16
	base_pixel_x = -16
	health_doll_icon = "broodmother"
	armor = list("melee" = 10, "bullet" = 20, "laser" = 20, "energy" = 30, "bomb" = 40, "bio" = 20, "rad" = 20, "fire" = 40, "acid" = 20)
	melee_damage_lower = 10
	melee_damage_upper = 10
	armour_penetration = 0
	attack_verb_continuous = "beats down on"
	attack_verb_simple = "beat down on"
	attack_sound = 'sound/weapons/punch1.ogg'
	throw_message = "does nothing to the rocky hide of the"
	speed = 2
	move_to_delay = 5
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	mouse_opacity = MOUSE_OPACITY_ICON
	deathmessage = "explodes into gore!"
	loot_drop = /obj/item/crusher_trophy/broodmother_tongue

	attack_action_types = list(/datum/action/innate/elite_attack/tentacle_patch,
								/datum/action/innate/elite_attack/spawn_children,
								/datum/action/innate/elite_attack/rage,
								/datum/action/innate/elite_attack/call_children)

	var/rand_tent = 0
	var/list/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/children_list = list()
	var/hp_high = 0
	var/hp_mid = 0
	var/hp_low = 0
	var/hp_dead = 0
	var/childragecall = 0

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/Destroy()
	children_list.Cut()
	return ..()

/datum/action/innate/elite_attack/tentacle_patch
	name = "Tentacle Patch"
	button_icon_state = "tentacle_patch"
	chosen_message = "<span class='boldwarning'>You are now attacking with a patch of tentacles.</span>"
	chosen_attack_num = TENTACLE_PATCH

/datum/action/innate/elite_attack/spawn_children
	name = "Spawn Children"
	button_icon_state = "spawn_children"
	chosen_message = "<span class='boldwarning'>You will spawn two children at your location to assist you in combat.  You can have up to 8.</span>"
	chosen_attack_num = SPAWN_CHILDREN

/datum/action/innate/elite_attack/rage
	name = "Rage"
	button_icon_state = "rage"
	chosen_message = "<span class='boldwarning'>You will temporarily increase your movement speed.</span>"
	chosen_attack_num = RAGE

/datum/action/innate/elite_attack/call_children
	name = "Call Children"
	button_icon_state = "call_children"
	chosen_message = "<span class='boldwarning'>You will summon your children to your location.</span>"
	chosen_attack_num = CALL_CHILDREN

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/OpenFire()
	if(client)
		switch(chosen_attack)
			if(TENTACLE_PATCH)
				tentacle_patch(target)
			if(SPAWN_CHILDREN)
				spawn_children()
			if(RAGE)
				rage()
			if(CALL_CHILDREN)
				call_children()
		return
	var/aiattack = rand(1,4)
	switch(aiattack)
		if(TENTACLE_PATCH)
			tentacle_patch(target)
		if(SPAWN_CHILDREN)
			spawn_children()
		if(RAGE)
			rage()
		if(CALL_CHILDREN)
			call_children()

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/Life()
	. = ..()
	if(!.) //Checks if they are dead as a rock.
		return
	if(health < maxHealth * 0.5 && rand_tent < world.time)
		rand_tent = world.time + 30
		var/tentacle_amount = 5
		if(health < maxHealth * 0.25)
			tentacle_amount = 10
		var/tentacle_loc = spiral_range_turfs(5, get_turf(src))
		for(var/i in 1 to tentacle_amount)
			var/turf/t = pick_n_take(tentacle_loc)
			new /obj/effect/temp_visual/goliath_tentacle/broodmother(t, src)

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/update_stat()
	. = ..()
	if(hp_high != 1 && health < maxHealth * 0.75 && health >= maxHealth * 0.5)
		spawn_children()
		hp_high = 1
	if(hp_mid != 1 && health < maxHealth * 0.50 && health >= maxHealth * 0.25)
		spawn_children()
		hp_mid = 1
	if(hp_low != 1 && health < maxHealth * 0.25 && health >= 1)
		spawn_children()
		hp_low = 1
	if(hp_dead != 1 && stat == DEAD)
		spawn_children()
		hp_dead = 1

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/AttackingTarget()
	if(target && isliving(target))
		if(childragecall != 0)
			call_children()
			childragecall = 0
	return ..()

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/proc/tentacle_patch(target)
	ranged_cooldown = world.time + 15
	var/tturf = get_turf(target)
	if(!isturf(tturf))
		return
	visible_message("<span class='warning'>[src] digs its tentacles under [target]!</span>")
	new /obj/effect/temp_visual/goliath_tentacle/broodmother/patch(tturf, src)

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/proc/spawn_children(target)
	ranged_cooldown = world.time + 40
	visible_message("<span class='boldwarning'>The ground churns behind [src]!</span>")
	for(var/i in 1 to 2)
		if(children_list.len >= 8)
			return
		var/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/newchild = new /mob/living/simple_animal/hostile/asteroid/elite/broodmother_child(loc, src)
		newchild.GiveTarget(target)
		newchild.faction = faction.Copy()
		visible_message("<span class='boldwarning'>[newchild] appears below [src]!</span>")
		children_list += newchild

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/proc/rage()
	ranged_cooldown = world.time + 70
	playsound(src,'sound/spookoween/insane_low_laugh.ogg', 200, 1)
	visible_message("<span class='warning'>[src] starts picking up speed!</span>")
	childragecall = 1
	color = "#FF0000"
	set_varspeed(0)
	move_to_delay = 3
	addtimer(CALLBACK(src, PROC_REF(reset_rage)), 65)

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/proc/reset_rage()
	color = "#FFFFFF"
	set_varspeed(2)
	move_to_delay = 5

/mob/living/simple_animal/hostile/asteroid/elite/broodmother/proc/call_children()
	ranged_cooldown = world.time + 60
	visible_message("<span class='warning'>The ground shakes near [src]!</span>")
	var/list/directions = GLOB.cardinals.Copy() + GLOB.diagonals.Copy()
	for(var/mob/child in children_list)
		var/spawndir = pick_n_take(directions)
		var/turf/T = get_step(src, spawndir)
		if(T)
			child.forceMove(T)
			playsound(src, 'sound/effects/bamf.ogg', 100, 1)

//The goliath's children.  Pretty weak, simple mobs which are able to put a single tentacle under their target when at range.
/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child
	name = "baby goliath"
	desc = "A young goliath recently born from it's mother.  While they hatch from eggs, said eggs are incubated in the mother until they are ready to be born."
	icon = 'icons/mob/lavaland/lavaland_monsters.dmi'
	icon_state = "goliath_baby"
	icon_living = "goliath_baby"
	icon_aggro = "goliath_baby"
	icon_dead = "goliath_baby_dead"
	icon_gib = "syndicate_gib"
	maxHealth = 30
	health = 30
	melee_damage_lower = 5
	melee_damage_upper = 5
	attack_verb_continuous = "bashes against"
	attack_verb_simple = "bash against"
	attack_sound = 'sound/weapons/punch1.ogg'
	throw_message = "does nothing to the rocky hide of the"
	speed = 2
	move_to_delay = 5
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	mouse_opacity = MOUSE_OPACITY_ICON
	butcher_results = list()
	guaranteed_butcher_results = list(/obj/item/stack/sheet/animalhide/goliath_hide = 1)
	deathmessage = "falls to the ground."
	status_flags = CANPUSH
	var/datum/weakref/mother_ref

/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/Initialize(mapload, mob/living/simple_animal/hostile/asteroid/elite/broodmother/mother)
	. = ..()
	mother_ref = WEAKREF(mother)

/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/Destroy()
	var/mob/living/simple_animal/hostile/asteroid/elite/broodmother/mother = mother_ref?.resolve()
	if(mother)
		mother.children_list -= src
	return ..()

/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/OpenFire(target)
	ranged_cooldown = world.time + 40
	var/tturf = get_turf(target)
	if(!isturf(tturf))
		return
	if(get_dist(src, target) <= 7)//Screen range check, so it can't attack people off-screen
		visible_message("<span class='warning'>[src] digs one of its tentacles under [target]!</span>")
		new /obj/effect/temp_visual/goliath_tentacle/broodmother(tturf, src)

/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/death()
	. = ..()
	visible_message("<span class='warning'>[src] explodes!</span>")
	explosion(get_turf(loc),0,0,0,flame_range = 3, adminlog = FALSE)
	gib()

//Tentacles have less stun time compared to regular variant, to balance being able to use them much more often.  Also, 10 more damage.
/obj/effect/temp_visual/goliath_tentacle/broodmother/trip()
	var/latched = FALSE
	for(var/mob/living/L in loc)
		if((!QDELETED(spawner) && spawner.faction_check_mob(L)) || L.stat == DEAD)
			continue
		visible_message("<span class='danger'>[src] grabs hold of [L]!</span>")
		L.Stun(10)
		L.adjustBruteLoss(rand(30,35))
		latched = TRUE
	if(!latched)
		retract()
	else
		deltimer(timerid)
		timerid = addtimer(CALLBACK(src, PROC_REF(retract)), 10, TIMER_STOPPABLE)

/obj/effect/temp_visual/goliath_tentacle/broodmother/patch/Initialize(mapload, new_spawner)
	. = ..()
	INVOKE_ASYNC(src, PROC_REF(createpatch))

/obj/effect/temp_visual/goliath_tentacle/broodmother/patch/proc/createpatch()
	var/tentacle_locs = spiral_range_turfs(1, get_turf(src))
	for(var/T in tentacle_locs)
		new /obj/effect/temp_visual/goliath_tentacle/broodmother(T, spawner)
	var/list/directions = GLOB.cardinals.Copy()
	for(var/i in directions)
		var/turf/T = get_step(get_turf(src), i)
		T = get_step(T, i)
		new /obj/effect/temp_visual/goliath_tentacle/broodmother(T, spawner)

// Broodmother's loot: Broodmother Tongue
/obj/item/crusher_trophy/broodmother_tongue
	name = "broodmother tongue"
	desc = "The tongue of a broodmother.  If attached a certain way, makes for a suitable crusher trophy."
	icon = 'icons/obj/lavaland/elite_trophies.dmi'
	icon_state = "broodmother_tongue"
	denied_type = /obj/item/crusher_trophy/broodmother_tongue
	bonus_value = 35

/obj/item/crusher_trophy/broodmother_tongue/effect_desc()
	return "waveform collapse to have a <b>[bonus_value]%</b> chance to summon a patch of goliath tentacles at the target's location"

/obj/item/crusher_trophy/broodmother_tongue/on_mark_detonation(mob/living/target, mob/living/user)
	if(rand(1, 100) <= bonus_value && target.stat != DEAD)
		new /obj/effect/temp_visual/goliath_tentacle/broodmother/patch(get_turf(target), user)

/mob/living/simple_animal/hostile/asteroid/elite/broodmother_child/rockplanet
	name = "baby gruboid"
	desc = "A young gruboid recently born. As a defense mechanism, they violently explode if killed."
	icon_state = "gruboid_baby"
	icon_living = "gruboid_baby"
	icon_aggro = "gruboid_baby"
	icon_dead = "gruboid_baby_dead"
	icon_gib = "syndicate_gib"
