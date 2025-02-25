push_textdomain("new_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "newtribe_shipwright",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("newtribe_worker", "Shipwright"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   buildcost = {
      newtribe_carrier = 1,
      tool = 1
   },

   programs = {
      buildship = {
         "walk=object-or-coords",
         "plant=attrib:newtribe_shipconstruction unless object",
         "playsound=sound/sawmill/sawmill priority:80% allow_multiple",
         "animate=idle duration:500ms",
         "construct",
         "animate=idle duration:5s",
         "return"
      },
      buildferry_1 = {
         -- checks whether water is available
         "findspace=size:swim radius:5",
      },
      buildferry_2 = {
         "findspace=size:swim radius:5",
         "walk=coords",
         "animate=idle duration:10s",
         "createbob=newtribe_ferry",
         "return"
      },
   },

   animations = {
      idle = {
         sound_effect = {
            path = "sound/hammering/hammering",
            priority = "50%"
         },
         hotspot = { 12, 28 },
         fps = 10
      },
      walk = {
         hotspot = { 12, 28 },
         fps = 10,
         directional = true
      },
      walkload = {
         hotspot = { 12, 28 },
         fps = 10,
         directional = true
      }
   }
}

pop_textdomain()
