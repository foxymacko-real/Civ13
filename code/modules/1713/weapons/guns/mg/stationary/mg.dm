/obj/item/weapon/gun/projectile/automatic/stationary/maxim
	name = "Maxim 1895"
	desc = "Russian version of the original Maxim machinegun, on cart mount. Uses Russian 7.62x54mm rounds."
	icon_state = "maxim"
	base_icon = "maxim"
	caliber = "a762x54_weak"
	fire_sound = 'sound/weapons/guns/fire/Maxim.ogg'
	magazine_type = /obj/item/ammo_magazine/maxim
	good_mags = list(/obj/item/ammo_magazine/maxim)
	firemodes = list(
		list(name = "full auto", burst=6, burst_delay=2, fire_delay=2, dispersion=list(0.8, 0.9, 1.0, 1.1, 1.2), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x54/weak

/obj/item/weapon/gun/projectile/automatic/stationary/maxim/ww2
	name = "Maxim"
	desc = "Russian version of the original Maxim machinegun, on cart mount. Uses Russian 7.62x54mm rounds."
	icon_state = "maxim_ww2"
	base_icon = "maxim_ww2"
	hardness = 90
	caliber = "a762x54_weak"
	fire_sound = 'sound/weapons/guns/fire/Maxim.ogg'
	magazine_type = /obj/item/ammo_magazine/maxim
	good_mags = list(/obj/item/ammo_magazine/maxim)
	firemodes = list(
		list(name = "full auto", burst=6, burst_delay=2, fire_delay=2, dispersion=list(0.8, 0.9, 1.0, 1.1, 1.2), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x54/weak

/obj/item/weapon/gun/projectile/automatic/stationary/mg08
	name = "Maschinengewehr 08"
	desc = "German Heavy Maxim machinegun, based on the original Maxim. Uses 7.92x57mm Mauser rounds."
	icon_state = "mg08"
	base_icon = "mg08"
	caliber = "a792x57_weak"
	fire_sound = 'sound/weapons/guns/fire/Maxim.ogg'
	magazine_type = /obj/item/ammo_magazine/mg08
	good_mags = list(/obj/item/ammo_magazine/mg08)
	firemodes = list(
		list(name = "full auto", burst=6, burst_delay=2, fire_delay=2, dispersion=list(0.8, 0.9, 1.0, 1.1, 1.2), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a792x57/weak

/obj/item/weapon/gun/projectile/automatic/stationary/pkm
	name = "PKM machine gun"
	desc = "Soviet Heavy PKM machinegun. Uses 7.62x54mm rounds."
	icon_state = "pkm"
	base_icon = "pkm"
	caliber = "a762x54_weak"
	magazine_type = /obj/item/ammo_magazine/pkm
	good_mags = list(/obj/item/ammo_magazine/pkm, /obj/item/ammo_magazine/pkm/c100, /obj/item/ammo_magazine/maxim)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1.3, fire_delay=1.3, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x54/weak

/obj/item/weapon/gun/projectile/automatic/stationary/dshk
	name = "DShK machine gun"
	desc = "Soviet Heavy DShK machinegun, can also be as anti vehicle gun against some lightly armored vehicles. Uses 12.7x108mm rounds."
	icon_state = "dshk"
	base_icon = "dshk"
	caliber = "a127"
	magazine_type = /obj/item/ammo_magazine/ammo127
	good_mags = list(/obj/item/ammo_magazine/ammo127)
	firemodes = list(
		list(name = "full auto", burst=3, burst_delay=1.2, fire_delay=1.2, dispersion=list(0.8, 0.9, 1.0, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a127

/obj/item/weapon/gun/projectile/automatic/stationary/nsvt
	name = "NSVT machine gun"
	desc = "Modern Soviet Heavy NSVT machinegun, can also be as anti vehicle gun against some lightly armored vehicles. Uses 12.7x108mm rounds."
	icon_state = "nsvt"
	base_icon = "nsvt"
	caliber = "a127"
	magazine_type = /obj/item/ammo_magazine/ammo127
	good_mags = list(/obj/item/ammo_magazine/ammo127)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1.1, fire_delay=1.1, dispersion=list(0.3, 0.4, 0.7, 0.9, 1.2), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a127

/obj/item/weapon/gun/projectile/automatic/stationary/foldable
	anchored = TRUE
	var/path

/obj/item/weapon/gun/projectile/automatic/stationary/foldable/verb/Retrieve()
	set category = null
	set name = "Retrieve"
	set src in range(1, usr)
	if (usr.l_hand && usr.r_hand)
		usr << "<span class = 'warning'>You need to have a hand free to do this.</span>"
		return
	usr.face_atom(src)

	visible_message("<span class = 'warning'>[usr] starts to get the [src] from the ground.</span>")
	if (do_after(usr, 40, get_turf(usr)))
		unload_ammo(usr)
		qdel(src)
		usr.put_in_any_hand_if_possible(new path, prioritize_active_hand = TRUE)
		visible_message("<span class = 'warning'>[usr] retrieves the [src] from the ground.</span>")

/obj/item/weapon/gun/projectile/automatic/stationary/foldable/pkm
	name = "Foldable PKM machine gun"
	desc = "Soviet Heavy foldable PKM machinegun. Chambered in 7.62x54mm rounds."
	icon_state = "pkm_foldable"
	base_icon = "pkm_foldable"
	caliber = "a762x54_weak"
	fire_sound = 'sound/weapons/guns/fire/Maxim.ogg'
	magazine_type = /obj/item/ammo_magazine/pkm
	good_mags = list(/obj/item/ammo_magazine/pkm, /obj/item/ammo_magazine/pkm/c100, /obj/item/ammo_magazine/maxim)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1.3, fire_delay=1.3, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x54/weak

	path = /obj/item/weapon/foldable/pkm

/obj/item/weapon/gun/projectile/automatic/stationary/vickers
	name = "Vickers machine gun"
	desc = "A water-cooled heavy machinegun. Chambered in .303 british rounds."
	icon_state = "vickers"
	base_icon = "vickers"
	caliber = "a303_weak"
	fire_sound = 'sound/weapons/guns/fire/Vickers.ogg'
	magazine_type = /obj/item/ammo_magazine/vickers
	good_mags = list(/obj/item/ammo_magazine/vickers)
	firemodes = list(
		list(name = "full auto", burst=6, burst_delay=2, fire_delay=2, dispersion=list(0.8, 0.9, 1.0, 1.1, 1.2), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a303/weak

/obj/item/weapon/gun/projectile/automatic/stationary/hotchkiss1914
	name = "Hotchkiss M1914 machine gun"
	desc = "A french heavy machinegun. Chambered in 8x50mm Lebel."
	icon_state = "hotchkiss1914"
	base_icon = "hotchkiss1914"
	caliber = "a8x50_weak"
	magazine_type = /obj/item/ammo_magazine/hotchkiss
	good_mags = list(/obj/item/ammo_magazine/hotchkiss)
	ammo_type = /obj/item/ammo_casing/a8x50/weak

/obj/item/weapon/gun/projectile/automatic/stationary/type3
	name = "Type 3 machine gun"
	desc = "A japanese heavy machinegun based on the French Hotchkiss. Chambered in 6.5x50mm Arisaka."
	icon_state = "type3"
	base_icon = "type3"
	caliber = "a65x50_weak"
	magazine_type = /obj/item/ammo_magazine/type3
	good_mags = list(/obj/item/ammo_magazine/type3)
	ammo_type = /obj/item/ammo_casing/a65x50/weak

/obj/item/weapon/gun/projectile/automatic/stationary/type98
	name = "Type 92 machine gun"
	desc = "A japanese heavy machinegun. Chambered in 7.7x58mm Arisaka."
	icon_state = "type92hmg"
	base_icon = "type92hmg"
	caliber = "a77x58"
	fire_sound = 'sound/weapons/guns/fire/Type92.ogg'
	magazine_type = /obj/item/ammo_magazine/type92
	good_mags = list(/obj/item/ammo_magazine/type92)
	firemodes = list(
		list(name = "full auto", burst=3, burst_delay=1.8, fire_delay=1.8, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a77x58
	attachment_slots = ATTACH_SCOPE
/obj/item/weapon/gun/projectile/automatic/stationary/type98/update_icon()
	icon_state = "type92hmg[ammo_magazine ? round(ammo_magazine.stored_ammo.len, 5) : "_empty"]"

/obj/item/weapon/gun/projectile/automatic/stationary/breda30
	name = "Breda 30 machine gun"
	desc = "The Fucile Mitragliatore Breda modello 30 is a Italian light machinegun that entered service in 1930. The design of the gun is rather impractical and often makes for long reload times. Chambered in 6.5x52mm Carcano."
	icon_state = "type92hmg"
	base_icon = "type92hmg"
	caliber = "a65x52"
	fire_sound = 'sound/weapons/guns/fire/Type92.ogg'
	magazine_type = /obj/item/ammo_magazine/breda30
	good_mags = list(/obj/item/ammo_magazine/breda30)
	firemodes = list(
		list(name = "full auto", burst=3, burst_delay=2.5, fire_delay=1.0, dispersion = list(0.7, 0.8, 0.9, 1.1, 1.2), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a65x52
	load_method = SINGLE_CASING | SPEEDLOADER
	max_shells = 20
	load_delay = 2 SECONDS
	
/obj/item/weapon/gun/projectile/automatic/stationary/breda30/update_icon()
	icon_state = "type92hmg[ammo_magazine ? round(ammo_magazine.stored_ammo.len, 5) : "_empty"]"

/obj/item/weapon/gun/projectile/automatic/stationary/breda30/stationary
	name = "vehicle mounted Breda 30 machine gun"
	pixel_y = -8
	anchored = TRUE
	density = FALSE
	can_turn = FALSE
/obj/item/weapon/gun/projectile/automatic/stationary/breda30/stationary/update_icon()
	..()
	switch(dir)
		if (NORTH)
			pixel_y = 8
		if (SOUTH)
			pixel_y = -8
		if (EAST)
			pixel_x = 8
		if (WEST)
			pixel_x = -8

/obj/item/weapon/gun/projectile/automatic/stationary/browning
	name = "M1919A1 browning machine gun"
	desc = "An american heavy machinegun. Chambered in 30-06. rounds."
	icon_state = "browning"
	base_icon = "browning"
	caliber = "a3006"
	fire_sound = 'sound/weapons/guns/fire/M1919.ogg'
	magazine_type = /obj/item/ammo_magazine/browning
	good_mags = list(/obj/item/ammo_magazine/browning)
	firemodes = list(
		list(name = "full auto", burst=5, burst_delay=1.8, fire_delay=1.1, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a3006
/obj/item/weapon/gun/projectile/automatic/stationary/browning/update_icon()
	icon_state = "browning[ammo_magazine ? round(ammo_magazine.stored_ammo.len, 50) : "_empty"]"

/obj/item/weapon/gun/projectile/automatic/stationary/m2browning
	name = "M2HB browning machine gun"
	desc = "An american heavy machinegun. Chambered in .50 cal rounds."
	icon_state = "m2"
	base_icon = "m2"
	caliber = "a50cal"
	fire_sound = 'sound/weapons/guns/fire/M1919.ogg'
	magazine_type = /obj/item/ammo_magazine/a50cal_can
	good_mags = list(/obj/item/ammo_magazine/a50cal_can)
	firemodes = list(
		list(name = "full auto", burst=5, burst_delay=1.8, fire_delay=1.1, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a50cal/weak

/obj/item/weapon/gun/projectile/automatic/stationary/mg34
	name = "MG 34 machine gun"
	desc = "A german heavy machinegun. Chambered in 7.92x57 Mauser."
	icon_state = "mg34hmg"
	base_icon = "mg34hmg"
	caliber = "a792x57_weak"
	magazine_type = /obj/item/ammo_magazine/mg34belt
	good_mags = list(/obj/item/ammo_magazine/mg34belt, /obj/item/ammo_magazine/mg34)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1, fire_delay=1, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a792x57/weak

/obj/item/weapon/gun/projectile/automatic/stationary/mg3
	name = "MG 3 machine gun"
	desc = "A german heavy machinegun. Chambered in 7.62x51mm rounds."
	icon_state = "mg3"
	base_icon = "mg3"
	caliber = "a792x57_weak"
	magazine_type = /obj/item/ammo_magazine/mg3belt
	good_mags = list(/obj/item/ammo_magazine/mg3belt)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1, fire_delay=1, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x51/weak

/obj/item/weapon/gun/projectile/automatic/stationary/fnmag
	name = "FN MAG machine gun"
	desc = "A Belgian general-purpose machine gun, designed in the early 1950s by Ernest Vervier. It has been used by more than 80 countries and it has been made under licence in several countries."
	icon_state = "mg3"
	base_icon = "mg3"
	caliber = "a792x57_weak"
	magazine_type = /obj/item/ammo_magazine/mg3belt
	good_mags = list(/obj/item/ammo_magazine/mg3belt)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1, fire_delay=1, dispersion=list(0.8, 0.9, 1.1, 1.2, 1.3), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x51/weak

/obj/item/weapon/gun/projectile/automatic/stationary/blugoslavia
	name = "BHMG-21 machine gun"
	desc = "A Blugoslavian heavy machinegun. Uses 7.62x54mm rounds."
	icon_state = "pkm"
	base_icon = "pkm"
	caliber = "a762x54"
	magazine_type = /obj/item/ammo_magazine/emptybelt/filled_762x54
	good_mags = list(/obj/item/ammo_magazine/emptybelt,/obj/item/ammo_magazine/emptybelt/filled_762x54)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1.3, fire_delay=2.5, dispersion=list(0.8, 1.0, 1.2, 1.4, 1.5), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x54

/obj/item/weapon/gun/projectile/automatic/stationary/redmenia
	name = "RK-42 stationary machine gun"
	desc = "A Redmenian heavy machinegun. Uses 5.56x45mm rounds."
	icon_state = "nsvt"
	base_icon = "nsvt"
	caliber = "a556x45"
	magazine_type = /obj/item/ammo_magazine/emptybelt/filled_556x45
	good_mags = list(/obj/item/ammo_magazine/emptybelt,/obj/item/ammo_magazine/emptybelt/filled_556x45)
	firemodes = list(
		list(name = "full auto", burst=4, burst_delay=1.3, fire_delay=2.3, dispersion=list(0.8, 0.9, 1.0, 1.2, 1.5), accuracy=list(2))
		)
	ammo_type = /obj/item/ammo_casing/a762x54

// Autocannons

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon
	name = "30mm Autocannon"
	desc = "An autocannon capable of firing 600 rounds a minute! Unfortunately the firing mode switch is stuck at semi-automatic. It fires 30mm rounds."
	icon_state = "autocannon"
	base_icon = "autocannon"
	caliber = "a30"
	fire_sound = 'sound/weapons/guns/fire/30mm.ogg'
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	magazine_type = /obj/item/ammo_magazine/a30mm_ap
	good_mags = list(/obj/item/ammo_magazine/a30mm_ap, /obj/item/ammo_magazine/a30mm_he)
	firemodes = list(
		list(name = "single shot", burst=1, fire_delay=20, dispersion=list(0.1, 0.3, 1, 2.5), accuracy=list(2)),
		)
	ammo_type = /obj/item/ammo_casing/a30mm_ap
	is_hmg = TRUE
	full_auto = FALSE

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/shipunov2a42
	name = "Shipunov 2A42 30mm Autocannon"
	desc = "The 30 mm 2A42 autocannon was developed as a replacement for 2A28 Grom. It fires 30mm rounds."
	icon_state = "autocannon"
	base_icon = "autocannon"
	caliber = "a30"
	fire_sound = 'sound/weapons/guns/fire/30mm.ogg'
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	magazine_type = /obj/item/ammo_magazine/a30mm_ap
	good_mags = list(/obj/item/ammo_magazine/a30mm_ap, /obj/item/ammo_magazine/a30mm_he)
	firemodes = list(
		list(name = "single shot", burst=1, fire_delay=12, dispersion=list(0.1, 0.2, 0.3, 0.3), accuracy=list(2)),
		)
	ammo_type = /obj/item/ammo_casing/a30mm_ap

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/shipunov2a72
	name = "Shipunov 2A72 30mm Autocannon"
	desc = "A lighter simplified variant of the 2A42 with a lower number of parts, a longer barrel, and higher muzzle velocity, but also a lower rate of fire. It fires 30mm rounds."
	icon_state = "autocannon"
	base_icon = "autocannon"
	caliber = "a30"
	fire_sound = 'sound/weapons/guns/fire/2a72.ogg'
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	magazine_type = /obj/item/ammo_magazine/a30mm_ap/btr80
	good_mags = list(/obj/item/ammo_magazine/a30mm_ap/btr80, /obj/item/ammo_magazine/a30mm_he/btr80)
	firemodes = list(
		list(name = "full auto", burst=3, burst_delay=3.5, fire_delay=2.5, dispersion=list(0.1, 0.1, 0.2, 0.2), accuracy=list(2)),
		)
	ammo_type = /obj/item/ammo_casing/a30mm_ap

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/red
	name = "30mm Autocannon"
	desc = "An autocannon capable of firing 20 rounds per minute."
	icon_state = "autocannon"
	base_icon = "autocannon"
	caliber = "a30"
	fire_sound = 'sound/weapons/guns/fire/30mm.ogg'
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	magazine_type = /obj/item/ammo_magazine/a30mm_ap
	good_mags = list(/obj/item/ammo_magazine/a30mm_ap, /obj/item/ammo_magazine/a30mm_ap/small, /obj/item/ammo_magazine/a30mm_he, /obj/item/ammo_magazine/a30mm_he/small)
	firemodes = list(
		list(name = "single shot", burst=1, fire_delay=35, dispersion=list(0.1, 0.3, 1, 2.5), accuracy=list(2)),
		)
	ammo_type = /obj/item/ammo_casing/a30mm_ap
	is_hmg = TRUE
	full_auto = FALSE

// ATGM Autocannons

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm
	name = "30mm Autocannon with ATGM"
	desc = "An autocannon capable of firing 600 rounds a minute! Unfortunately the firing mode switch is stuck at semi-automatic. It fires 30mm rounds. It includes an Anti Tank Guide Missle system, to use it right-click the gun and press 'Toggle ATGM Mode'"
	icon_state = "atgm_autocannon"
	base_icon = "atgm_autocannon"
	caliber = "a30"
	fire_sound = 'sound/weapons/guns/fire/30mm.ogg'
	load_method = MAGAZINE
	handle_casings = EJECT_CASINGS
	magazine_type = /obj/item/ammo_magazine/a30mm_ap
	good_mags = list(/obj/item/ammo_magazine/a30mm_ap, /obj/item/ammo_magazine/a30mm_he)
	firemodes = list(
		list(name = "single shot", burst=1, fire_delay=12, dispersion=list(0.1, 0.3, 1, 2.5), accuracy=list(2)),
		)
	ammo_type = /obj/item/ammo_casing/a30mm_ap
	anchored = TRUE
	var/mode = "autocannon"

	var/atgm_ammo = /obj/item/ammo_casing/rocket/atgm
	var/max_rockets = 1
	var/list/rockets = new/list()
	var/release_force = 0
	var/throw_distance = 30


/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm/verb/switch_firingmode()
	set name = "Toggle ATGM Mode"
	set category = null
	set src in range(1, usr)
	switch (mode)
		if ("atgm")
			playsound(src, 'sound/machines/click.ogg', 60)
			usr << "You switch the gun to fire the autocannon"
			mode = "autocannon"
			caliber = "a30"
			load_method = MAGAZINE
			handle_casings = EJECT_CASINGS

		if ("autocannon")
			playsound(src, 'sound/machines/click.ogg', 60)
			usr << "You switch the gun to fire the ATGM"
			mode = "atgm"
			caliber = "rocket"
			load_method = SINGLE_CASING
			handle_casings = REMOVE_CASINGS

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm/AltClick()
	..()
	switch_firingmode()

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm/attackby(obj/item/I as obj, mob/user as mob)
	if (istype(I, atgm_ammo))
		if (rockets.len < max_rockets && do_after(user, load_delay, src, can_move = TRUE))
			user.drop_item()
			I.loc = src
			rockets += I
			user << "You put the rocket in the ATGM."
			update_icon()
		else
			usr << "The ATGM cannot hold more rockets."

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm/handle_click_empty(mob/user)
	if (mode != "atgm")
		if (user)
			user.visible_message("*click click*", "<span class='danger'>*click*</span>")
		else
			visible_message("*click click*")
		playsound(loc, 'sound/weapons/empty.ogg', 100, TRUE)

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm/consume_next_projectile()
	if (mode == "atgm")
		if (rockets.len)
			var/obj/item/ammo_casing/rocket/I = rockets[1]
			var/obj/item/missile/M = new I.projectile_type(src)
			playsound(get_turf(src), 'sound/weapons/guns/fire/rpg7.ogg', 100, TRUE)
			if (ishuman(src.loc))
				M.dir = src.loc.dir
			M.primed = 1
			rockets -= I
			return M
		return null

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm/handle_post_fire(mob/user, atom/target)
	if (mode == "atgm")
		message_admins("[key_name_admin(user)] fired an ATGM at [target].", key_name_admin(user))
		log_game("[key_name_admin(user)] used an ATGM at [target].")
		update_icon()
		..()

/obj/item/weapon/gun/projectile/automatic/stationary/autocannon/atgm/process_projectile(obj/item/projectile, mob/user, atom/target, var/target_zone, var/params=null, var/pointblank=0, var/reflex=0)
	if (mode == "atgm")
		projectile.loc = get_turf(user)
		projectile.throw_at(target, throw_distance, release_force, user)
		projectile.dir = get_dir(src.loc, target.loc)
		if (ishuman(user) && istype(projectile, /obj/item/missile))
			var/obj/item/missile/MS = projectile
			MS.firer = user
		if (istype(projectile, /obj/item/missile))
			var/obj/item/missile/M = projectile
			M.startingturf = get_turf(user)
		update_icon(projectile)
		return TRUE

// ATGMs

/obj/item/weapon/gun/projectile/automatic/stationary/atgm
	name = "Stationary ATGM"
	desc = "An ATGM system capable of taking out armored targets. This one is firmly bolted to the ground."
	icon_state = "atgm"
	base_icon = "atgm"
	caliber = "rocket"
	fire_sound = 'sound/weapons/guns/fire/rpg7.ogg'
	load_method = SINGLE_CASING
	handle_casings = REMOVE_CASINGS
	magazine_type = /obj/item/ammo_magazine/mosin
	firemodes = list(
		list(name = "single shot", burst=1, fire_delay=20, accuracy=list(2)),
		)
	ammo_type = /obj/item/ammo_casing/rocket/atgm
	is_hmg = TRUE
	full_auto = FALSE
	anchored = TRUE

	var/atgm_ammo = /obj/item/ammo_casing/rocket/atgm
	var/max_rockets = 1
	var/list/rockets = new/list()
	var/release_force = 0
	var/throw_distance = 30

/obj/item/weapon/gun/projectile/automatic/stationary/atgm/attackby(obj/item/I as obj, mob/user as mob)
	if (istype(I, atgm_ammo))
		if (rockets.len < max_rockets && do_after(user, load_delay, src, can_move = TRUE))
			user.remove_from_mob(I)
			I.loc = src
			rockets += I
			user.visible_message("[user] loads a rocket in the [src].","You load a rocket into the [src]")
			update_icon()
		else
			usr << "The ATGM cannot hold more rockets."

/obj/item/weapon/gun/projectile/automatic/stationary/atgm/handle_click_empty(mob/user)
	if (rockets.len <= 0)
		if (user)
			user.visible_message("*click click*", "<span class='danger'>*click*</span>")
		else
			visible_message("*click click*")
		playsound(loc, 'sound/weapons/empty.ogg', 100, TRUE)

/obj/item/weapon/gun/projectile/automatic/stationary/atgm/consume_next_projectile()
	if (rockets.len)
		var/obj/item/ammo_casing/rocket/I = rockets[1]
		var/obj/item/missile/M = new I.projectile_type(src)
		playsound(get_turf(src), 'sound/weapons/guns/fire/rpg7.ogg', 100, TRUE)
		if (ishuman(src.loc))
			M.dir = src.loc.dir
		M.primed = 1
		rockets -= I
		return M
	return null

/obj/item/weapon/gun/projectile/automatic/stationary/atgm/handle_post_fire(mob/user, atom/target)
	message_admins("[key_name_admin(user)] fired an ATGM at [target].", key_name_admin(user))
	log_game("[key_name_admin(user)] used an ATGM at [target].")
	update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/stationary/atgm/process_projectile(obj/item/projectile, mob/user, atom/target, var/target_zone, var/params=null, var/pointblank=0, var/reflex=0)
	projectile.loc = get_turf(user)
	projectile.throw_at(target, throw_distance, release_force, user)
	projectile.dir = get_dir(src.loc, target.loc)
	if (ishuman(user) && istype(projectile, /obj/item/missile))
		var/obj/item/missile/MS = projectile
		MS.firer = user
	if (istype(projectile, /obj/item/missile))
		var/obj/item/missile/M = projectile
		M.startingturf = get_turf(user)
	update_icon(projectile)
	return TRUE

// Foldable ATGMs

/obj/item/weapon/gun/projectile/automatic/stationary/atgm/foldable
	name = "Foldable ATGM"
	desc = "An ATGM system capable of taking out armored targets. You can move this one around by right-clicking it and pressing 'Retrieve'"
	icon_state = "foldable_atgm"
	base_icon = "foldable_atgm"
	var/path = /obj/item/weapon/foldable/atgm

/obj/item/weapon/gun/projectile/automatic/stationary/atgm/foldable/verb/Retrieve()
	set category = null
	set name = "Retrieve"
	set src in range(1, usr)
	if (usr.l_hand && usr.r_hand)
		usr << "<span class = 'warning'>You need to have a hand free to do this.</span>"
		return
	usr.face_atom(src)
	visible_message("<span class = 'warning'>[usr] starts to get the [src] from the ground.</span>")
	if (do_after(usr, 40, get_turf(usr)))
		for (var/obj/item/ammo_casing/rocket/I in rockets)
			I.loc = get_turf(src)
			rockets -= I
		qdel(src)
		usr.put_in_any_hand_if_possible(new path, prioritize_active_hand = TRUE)
		visible_message("<span class = 'warning'>[usr] retrieves the [src] from the ground.</span>")
