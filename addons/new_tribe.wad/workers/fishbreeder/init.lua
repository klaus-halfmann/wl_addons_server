push_textdomain("new_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "newtribe_fishbreeder",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("newtribe_worker", "Fish Breeder"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   buildcost = {
      newtribe_carrier = 1,
      tool = 1
   },

   programs = {
      breed = {
         "findspace=size:any radius:7 breed resource:resource_fish",
         "walk=coords",
         "animate=freeing duration:13s500ms", -- Play a freeing animation
         "breed=resource_fish radius:1",
         "return"
      }
   },

   animations = {
      idle = {
         hotspot = { 8, 22 }
      },
      freeing = {
         hotspot = { 10, 19 },
         fps = 10
      },
      walk = {
         hotspot = { 11, 23 },
         fps = 20,
         directional = true
      }
   }
}

pop_textdomain()
