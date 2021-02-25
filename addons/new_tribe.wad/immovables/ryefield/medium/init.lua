dirname = path.dirname(__file__)
push_textdomain("new_tribe.wad", true)

descriptions:new_immovable_type {
   name = "ryefield_medium",
   -- TRANSLATORS: This is an immovable name used in lists of immovables
   descname = pgettext("immovable", "Rye Field (medium)"),
   icon = dirname .. "menu.png",
   size = "small",
   programs = {
      main = {
         "animate=idle duration:250s",
         "transform=ryefield_ripe",
      }
   },
   animations = {
      idle = {
         directory = dirname,
         basename = "idle",
         hotspot = {21, 33}
      }
   }
}
pop_textdomain()
