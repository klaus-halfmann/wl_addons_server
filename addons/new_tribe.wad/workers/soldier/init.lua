push_textdomain("new_tribe.wad", true)

dirname = path.dirname(__file__)

animations = {
   idle = {
      pictures = path.list_files(dirname .. "idle_??.png"),
      hotspot = { 10, 36 },
      fps = 5
   },
   atk_ok_e = {
      pictures = path.list_files(dirname .. "atk_ok_e_??.png"),
      hotspot = { 36, 40 },
      fps = 10
   },
   atk_fail_e = {
      pictures = path.list_files(dirname .. "atk_fail_e_??.png"),
      hotspot = { 36, 40 },
      fps = 10
   },
   eva_ok_e = {
      pictures = path.list_files(dirname .. "eva_ok_e_??.png"),
      hotspot = { 36, 40 },
      fps = 20
   },
   eva_fail_e = {
      pictures = path.list_files(dirname .. "eva_fail_e_??.png"),
      hotspot = { 36, 40 },
      fps = 10
   },
   atk_ok_w = {
      pictures = path.list_files(dirname .. "atk_ok_w_??.png"),
      hotspot = { 36, 40 },
      fps = 10
   },
   atk_fail_w = {
      pictures = path.list_files(dirname .. "atk_fail_w_??.png"),
      hotspot = { 36, 40 },
      fps = 10
   },
   eva_ok_w = {
      pictures = path.list_files(dirname .. "eva_ok_w_??.png"),
      hotspot = { 36, 40 },
      fps = 20
   },
   eva_fail_w = {
      pictures = path.list_files(dirname .. "eva_fail_w_??.png"),
      hotspot = { 36, 40 },
      fps = 10
   },
   die_w = {
      pictures = path.list_files(dirname .. "die_??.png"),
      hotspot = { 10, 36 },
      fps = 10
   },
   die_e = {
      pictures = path.list_files(dirname .. "die_??.png"),
      hotspot = { 10, 36 },
      fps = 10
   },
   walk = {
      hotspot = { 20, 34 },
      fps = 10,
      directional = true
   }
}

all_levels_newtribe = {
   min_health = 0,
   min_attack = 0,
   min_defense = 0,
   min_evade = 0,
   max_health = 0,
   max_attack = 0,
   max_defense = 0,
   max_evade = 2,
}

descriptions:new_soldier_type {
   name = "newtribe_soldier",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("newtribe_worker", "Soldier"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   animations = animations,

   -- Battle attributes - initial values and per level increase
   health = {
      max_level = 0,
      base = 30000,
      increase_per_level = 4000,
      pictures = path.list_files(dirname .. "health_level?.png"),
   },
   attack = {
      max_level = 0,
      base = 4000,
      maximum = 6000,
      increase_per_level = 920,
      pictures = path.list_files(dirname .. "attack_level?.png"),
   },
   defense = {
      max_level = 0,
      base = 10,
      increase_per_level = 8,
      pictures = path.list_files(dirname .. "defense_level?.png"),
   },
   evade = {
      max_level = 2,
      base = 10,
      increase_per_level = 35,
      pictures = path.list_files(dirname .. "evade_level?.png"),
   },

   -- Random animations for battle
   attack_success_w = {
      atk_ok_w = all_levels_newtribe,
   },
   attack_success_e = {
      atk_ok_e = all_levels_newtribe,
   },
   attack_failure_w = {
      atk_fail_w = all_levels_newtribe,
   },
   attack_failure_e = {
      atk_fail_e = all_levels_newtribe,
   },
   evade_success_w = {
      eva_ok_w = all_levels_newtribe,
   },
   evade_success_e = {
      eva_ok_e = all_levels_newtribe,
   },
   evade_failure_w = {
      eva_fail_w = all_levels_newtribe,
   },
   evade_failure_e = {
      eva_fail_e = all_levels_newtribe,
   },
   die_w = {
      die_w = all_levels_newtribe,
   },
   die_e = {
      die_e = all_levels_newtribe,
   },
   idle = {
      idle = all_levels_newtribe,
   },
   walk = {
      {
         range = all_levels_newtribe,
         sw = "walk_sw",
         se = "walk_se",
         nw = "walk_nw",
         ne = "walk_ne",
         w = "walk_w",
         e = "walk_e",
      },
   },
}

pop_textdomain()
