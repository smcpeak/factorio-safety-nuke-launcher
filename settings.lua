-- settings.lua
-- Defines configuration settings for SafetyNukeLauncher.

data:extend({
  -- Minimum range for the safety nuke launcher.
  {
    type = "int-setting",
    name = "safety-nuke-launcher-min-range",
    setting_type = "startup",

    -- See README.md for discussion of this value.
    default_value = 30,

    minimum_value = 1,
    maximum_value = 100,
  },

  -- Option to increase nuclear rocket range.
  {
    type = "bool-setting",
    name = "safety-nuke-launcher-range-bonus",
    setting_type = "startup",
    default_value = false,
  },
});

-- EOF
