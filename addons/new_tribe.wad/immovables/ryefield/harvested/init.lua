dirname = path.dirname(__file__)
push_textdomain("new_tribe.wad", true)

descriptions:new_immovable_type {
   name = "ryefield_harvested",
   -- TRANSLATORS: This is an immovable name used in lists of immovables
   descname = pgettext("immovable", "Rye Field (harvested)"),
   icon = dirname .. "menu.png",
   programs = {
      main = {
         "animate=idle duration:1000s",
         "remove=",
      }
   },
   animations = {
      idle = {
         directory = dirname,
         basename = "idle",
         hotspot = {21, 34}
      }
   }
}
pop_textdomain()
