push_textdomain("new_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "newtribe_farmer",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("newtribe_worker", "Farmer"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   buildcost = {
      newtribe_carrier = 1,
      tool = 1
   },

   programs = {
      plant_rye = {
         "findspace=size:any radius:2 space",
         "walk=coords",
         "animate=plant duration:6s",
         "plant=attrib:seed_rye",
         "animate=plant duration:6s",
         "return"
      },
      harvest_rye = {
         "findobject=attrib:ripe_rye radius:2",
         "walk=object",
         "playsound=sound/farm/scythe priority:70% allow_multiple",
         "animate=harvest duration:10s",
         "callobject=harvest",
         "animate=gather duration:4s",
         "createware=rye",
         "return"
      },
      plant_reed = {
         "findspace=size:any radius:1",
         "walk=coords",
         "animate=plant duration:2s",
         "plant=attrib:seed_reed",
         "animate=plant duration:1s",
         "return"
      },
      harvest_reed = {
         "findobject=attrib:ripe_reed radius:1",
         "walk=object",
         "animate=harvest duration:6s",
         "callobject=harvest",
         "animate=gather duration:6s",
         "createware=reed",
         "return"
      },
   },

   animations = {
      idle = {
         hotspot = { 8, 17 },
      },
   },
   spritesheets = {
      walk = {
         fps = 10,
         frames = 10,
         rows = 4,
         columns = 3,
         directional = true,
         hotspot = { 14, 18 }
      },
      walkload = {
         fps = 10,
         frames = 10,
         rows = 4,
         columns = 3,
         directional = true,
         hotspot = { 12, 19 }
      },
      plant = {
         fps = 10,
         frames = 20,
         rows = 5,
         columns = 4,
         hotspot = { 14, 19 }
      },
      harvest = {
         fps = 10,
         frames = 10,
         rows = 4,
         columns = 3,
         hotspot = { 17, 21 }
      },
      gather = {
         fps = 5,
         frames = 20,
         rows = 5,
         columns = 4,
         hotspot = { 8, 19 }
      }
   }
}

pop_textdomain()
