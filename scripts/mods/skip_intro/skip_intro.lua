local mod = get_mod("skip_intro")

-- #####################################################################################################################
-- ##### Hooks #########################################################################################################
-- #####################################################################################################################

-- Both of them are delayed, because in VT1 mods are loaded before StateSplashScreen definition.
mod:hook("StateSplashScreen", "on_enter", function(func, self)
  self._skip_splash = true
  func(self)
end)


mod:hook_safe("StateSplashScreen", "setup_splash_screen_view", function(self)
  self.splash_view = nil
end)

-- #####################################################################################################################
-- ##### Callbacks #####################################################################################################
-- #####################################################################################################################

function mod.on_game_state_changed(status, state)
  if state == "StateSplashScreen" and status == "exit" then
    mod:disable_all_hooks()
  end
end