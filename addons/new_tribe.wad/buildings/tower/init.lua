push_textdomain("new_tribe.wad", true)

dirname = path.dirname (__file__)

descriptions:new_militarysite_type {
   name = "newtribe_tower",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = pgettext ("newtribe_building", "Tower"),
   icon = dirname .. "menu.png",
   size = "big",
   vision_range = 21,

   buildcost = {
      granite = 2,
      log = 4,
      reed = 3
   },
   return_on_dismantle = {
      granite = 1,
      log = 2,
      reed = 1
   },

   spritesheets = {
      idle = {
         directory = dirname,
         basename = "idle",
         hotspot = {64, 94},
         frames = 10,
         columns = 5,
         rows = 2,
         fps = 10
      }
   },
   animations = {
      unoccupied = {
         directory = dirname,
         basename = "unoccupied",
         hotspot = {64, 94}
      }
   },

   aihints = {
      fighting = true,
      mountain_conqueror = true,
      prohibited_till = 500
   },

   max_soldiers = 7,
   heal_per_second = 170,
   conquers = 10,
   prefer_heroes = true,

   messages = {
      -- TRANSLATORS: Message sent by a Frisian military site
      occupied = pgettext("newtribe_building", "Your soldiers have occupied your tower."),
      -- TRANSLATORS: Message sent by a Frisian military site
      aggressor = pgettext("newtribe_building", "Your tower discovered an aggressor."),
      -- TRANSLATORS: Message sent by a Frisian military site
      attack = pgettext("newtribe_building", "Your tower is under attack."),
      -- TRANSLATORS: Message sent by a Frisian military site
      defeated_enemy = pgettext("newtribe_building", "The enemy defeated your soldiers at the tower."),
      -- TRANSLATORS: Message sent by a Frisian military site
      defeated_you = pgettext("newtribe_building", "Your soldiers defeated the enemy at the tower.")
   },
}

pop_textdomain()
