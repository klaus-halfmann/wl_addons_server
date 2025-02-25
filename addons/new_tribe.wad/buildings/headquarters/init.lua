push_textdomain("new_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_warehouse_type {
   name = "newtribe_headquarters",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = pgettext("newtribe_building", "Headquarters"),
   icon = dirname .. "menu.png",
   size = "big",
   destructible = false,

   -- The interim headquarters of the newtribe is a simple stone building thatched
   -- with reed and coated with many different wares.
   animations = {
      idle = {
         pictures = path.list_files(dirname .. "idle_??.png"),
         hotspot = { 64, 106 }
      },
   },

   aihints = {},

   heal_per_second = 170,
   conquers = 9,
}

pop_textdomain()
