-- SafetyNukeLauncher data.lua
-- Extend the global data table to describe the mod elements.


-- Nominal tech cost.  This mod is more like a UI enhancement than a
-- real in-game technology, and the research is here just to avoid
-- cluttering the crafting UI with something that isn't needed until
-- nukes are researched.
--
-- The tech requires yellow and purple science just to ensure it sorts
-- toward the end of the tech list.
local snl_tech_cost = table.deepcopy(data.raw.technology["atomic-bomb"].unit);
snl_tech_cost.count = 10;


-- Technology to make the safety launcher.
local safety_nuke_launcher_technology = {
  type = "technology",
  name = "safety-nuke-launcher-technology",
  effects = {
    {
      type = "unlock-recipe",
      recipe = "safety-nuke-launcher-recipe",
    },
  },
  icon = "__SafetyNukeLauncher__/graphics/technology/safety-nuke-launcher-technology.png",
  icon_size = 128,

  -- It seems that the order parameter is ignored, and instead the tech
  -- list is sorted by increasing cost.  (Maybe 'order' is a tie-breaker?)
  -- Consequently, this appears before atomic bombs even though they are a
  -- prereq.
  order = "e-a-b-safety",

  prerequisites = {
    "atomic-bomb",
  },
  unit = snl_tech_cost,
};

-- Original launcher, for easy reference.
local vanilla_rocket_launcher = data.raw.gun["rocket-launcher"];

-- Recipe to make the safety launcher item.
local safety_nuke_launcher_recipe = {
  type = "recipe",
  name = "safety-nuke-launcher-recipe",
  enabled = false,
  energy_required = 2,                 -- 2 seconds to build.
  ingredients = {
    -- Start with a normal rocket launcher.
    {
      amount = 1,
      name = vanilla_rocket_launcher.name,
      type = "item"
    },
    -- Add a green circuit because green means safety!
    {
      amount = 1,
      name = "electronic-circuit",
      type = "item"
    },
  },
  results = {
    {
      amount = 1,
      name = "safety-nuke-launcher-item",
      type = "item"
    }
  },
};

-- Launcher is like the vanilla one but has a minimum range.
local safety_nuke_launcher_item = table.deepcopy(vanilla_rocket_launcher);
safety_nuke_launcher_item.name = "safety-nuke-launcher-item";
safety_nuke_launcher_item.attack_parameters.min_range =
  settings.startup["safety-nuke-launcher-min-range"].value;
safety_nuke_launcher_item.order = vanilla_rocket_launcher.order .. "-safety";
safety_nuke_launcher_item.icon =
  "__SafetyNukeLauncher__/graphics/icons/safety-nuke-launcher-item.png";
safety_nuke_launcher_item.icon_size = 32;

data:extend{
  safety_nuke_launcher_technology,
  safety_nuke_launcher_recipe,
  safety_nuke_launcher_item,
};

if (settings.startup["safety-nuke-launcher-range-bonus"].value) then
  -- Nuclear rocket will have three times the range of a non-nuclear
  -- rocket, as it did before the 1.0 update.
  data.raw.ammo["atomic-bomb"].ammo_type.range_modifier = 3;
end;

-- EOF
