push_textdomain("new_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "newtribe_builder",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext ("newtribe_worker", "Builder"),
   icon = dirname .. "menu.png",
   vision_range = 2,

   buildcost = {
      newtribe_carrier = 1,
      tool = 1
   },

   animation_directory = dirname,
   ware_hotspot = {0, 29},
   spritesheets = {
      walk = {
         directional = true,
         hotspot = {17, 28},
         fps = 15,
         frames = 30,
         columns = 6,
         rows = 5
      },
      walkload = {
         directional = true,
         hotspot = {17, 31},
         fps = 15,
         frames = 30,
         columns = 6,
         rows = 5
      },
      idle = {
         hotspot = {12, 30},
         fps = 15,
         frames = 40,
         columns = 8,
         rows = 5
      },
      work = {
         hotspot = {16, 38},
         fps = 15,
         frames = 80,
         columns = 10,
         rows = 8,
         sound_effect = {
            path = "sound/hammering/hammering",
            priority = "50%"
         }
      },
   },
}

pop_textdomain()
