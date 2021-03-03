-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- Themes define colours, icons, font and wallpapers.
beautiful.init(gears.filesystem.get_configuration_dir() .. "theme.lua")

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
	naughty.notify({
			preset = naughty.config.presets.critical,
			title = "Oops, there were errors during startup!",
			text = awesome.startup_errors
	})
end

-- Handle runtime errors after startup
do
	local in_error = false
	awesome.connect_signal(
		"debug::error",
		function(err)
			-- Make sure we don't go into an endless error loop
			if in_error then
				return
			end
			in_error = true

			naughty.notify({
				preset = naughty.config.presets.critical,
				title = "Oops, an error happened!",
				text = tostring(err)
			})
			in_error = false
		end
	)
end
-- }}}

-- {{{ Variable definitions

-- This is used later as the default terminal and editor to run.
terminal = "rofi-sensible-terminal"
editor = os.getenv("EDITOR")
editor_cmd = terminal .. " -e " .. editor

-- Default modkey - super.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
	awful.layout.suit.tile.bottom,
	awful.layout.suit.fair,
	awful.layout.suit.max
	-- awful.layout.suit.magnifier,
	-- awful.layout.suit.tile,
	-- awful.layout.suit.tile.left,
	-- awful.layout.suit.tile.top,
	-- awful.layout.suit.fair.horizontal,
	-- awful.layout.suit.floating,
	-- awful.layout.suit.spiral,
	-- awful.layout.suit.spiral.dwindle,
	-- awful.layout.suit.max.fullscreen,
	-- awful.layout.suit.corner.nw,
	-- awful.layout.suit.corner.ne,
	-- awful.layout.suit.corner.sw,
	-- awful.layout.suit.corner.se,
}
-- }}}

require("exitscreen")
require("keys")
require("bar")
require("rules")
require("signals")
