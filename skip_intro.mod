return {
  run = function()
    fassert(rawget(_G, "new_mod"), "Skip Intro mod must be lower than Vermintide Mod Framework in your launcher's load order.")
    new_mod("skip_intro", {
      mod_script       = "scripts/mods/skip_intro/skip_intro",
      mod_data         = "scripts/mods/skip_intro/skip_intro_data",
      mod_localization = "scripts/mods/skip_intro/skip_intro_localization"
    })
  end,
  packages = {
    "resource_packages/skip_intro/skip_intro"
  }
}