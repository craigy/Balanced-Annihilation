return {
	corkrog = {
		acceleration = 0.10800000280142,
		brakerate = 0.23800000548363,
		buildcostenergy = 577039,
		buildcostmetal = 27182,
		buildpic = "CORKROG.DDS",
		buildtime = 552145,
		canmove = true,
		category = "KBOT WEAPON ALL NOTSUB NOTSHIP NOTAIR",
		collisionvolumeoffsets = "0 -7 -5",
		collisionvolumescales = "112 168 104",
		collisionvolumetest = 1,
		collisionvolumetype = "Ell",
		corpse = "DEAD",
		description = "Experimental Assault Kbot",
		energymake = 35,
		energystorage = 350,
		explodeas = "NUCLEAR_MISSILE",
		footprintx = 5,
		footprintz = 5,
		icontype = "krogoth",
		idleautoheal = 1337,
		idletime = 900,
		mass = 200000,
		maxdamage = 133700,
		maxslope = 17,
		maxvelocity = 1.1200000047684,
		maxwaterdepth = 12,
		movementclass = "VKBOT5",
		name = "Krogoth",
		nochasecategory = "VTOL",
		objectname = "CORKROG",
		seismicsignature = 0,
		selfdestructas = "CRBLMSSL",
		selfdestructcountdown = 10,
		sightdistance = 845,
		smoothanim = true,
		turnrate = 380,
		upright = true,
		customparams = {
			paralyzemultiplier = 0,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				damage = 57600,
				description = "Krogoth Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 17668,
				object = "CORKROG_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 28800,
				description = "Krogoth Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 15067,
				object = "3X3A",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "krogok1",
			},
			select = {
				[1] = "krogsel1",
			},
		},
		weapondefs = {
			corkrog_fire = {
				areaofeffect = 112,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.5,
				explosiongenerator = "custom:FLASH96",
				impulseboost = 0.60000002384186,
				impulsefactor = 0.60000002384186,
				intensity = 4,
				name = "GaussCannon",
				noselfdamage = true,
				predictboost = 1,
                projectiles = 10,
				range = 590,
				reloadtime = 1.3999999761581,
				rgbcolor = "1 0.75 0.25",
				size = 4,
				soundhit = "xplomed2",
				soundstart = "kroggie2",
				sprayangle = 2750,
				tolerance = 6000,
				turret = true,
				weapontimer = 2,
				weapontype = "Cannon",
				weaponvelocity = 900,
				damage = {
					default = 165,
					l1subs = 5,
				},
			},
			corkrog_laser = {
				areaofeffect = 72,
				beamtime = 0.60000002384186,
				corethickness = 0.75,
				craterboost = 0,
				cratermult = 0,
				energypershot = 350,
				explosiongenerator = "custom:LARGE_IGNITE",
				firestarter = 90,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				laserflaresize = 22,
				name = "KrogHeatRay",
				noselfdamage = true,
				proximitypriority = -1,
				range = 900,
				reloadtime = 4,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundstart = "heatray1",
				targetmoveerror = 0.10000000149012,
				thickness = 5,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1500,
				damage = {
					commanders = 1200,
					default = 5500,
					l1subs = 5,
				},
			},
			corkrog_rocket = {
				areaofeffect = 200,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.69999998807907,
				explosiongenerator = "custom:CORE_KROGROCKET_EXPLOSION",
				firestarter = 70,
				impulseboost = 1,
				impulsefactor = 1,
				metalpershot = 0,
				model = "fmdmisl",
				name = "HeavyRockets",
				noselfdamage = true,
				proximitypriority = -5,
				range = 950,
				reloadtime = 6,
				smoketrail = true,
				soundhit = "xplosml2",
				soundstart = "rocklit1",
				startvelocity = 200,
				texture2 = "coresmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 50000,
				weaponacceleration = 230,
				weapontimer = 2,
				weapontype = "StarburstLauncher",
				weaponvelocity = 3000,
				damage = {
					default = 800,
					l1subs = 5,
				},
			},
			krogcrush = {
				areaofeffect = 125,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:KROGCRUSHE",
				impulseboost = 0.2339999973774,
				impulsefactor = 0.2339999973774,
				intensity = 0,
				metalpershot = 0,
				name = "KrogCrush",
				noselfdamage = true,
				range = 125,
				reloadtime = 0.10000000149012,
				rgbcolor = "0 0 0",
				thickness = 0,
				tolerance = 100,
				turret = true,
				weapontimer = 0.10000000149012,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					antibomber = 2000,
					commanders = 1,
					crawlingbombs = 2000,
					default = 1,
					["else"] = 2000,
					heavyunits = 1,
					minelayser = 2000,
					mines = 2000,
					nanos = 2000,
					radar = 2000,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORKROG_FIRE",
				onlytargetcategory = "NOTAIR",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "CORKROG_LASER",
			},
			[3] = {
				badtargetcategory = "VTOL",
				def = "CORKROG_ROCKET",
				onlytargetcategory = "NOTAIR",
			},
			[4] = {
				def = "KROGCRUSH",
			},
			[5] = {
				def = "KROGCRUSH",
			},
		},
	},
}
