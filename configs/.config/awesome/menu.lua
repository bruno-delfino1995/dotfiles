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


-- {{{ Menu
-- Create a launcher widget and a main menu

mymainmenu = awful.menu({
	items = {
		{"hotkeys", function()
				hotkeys_popup.show_help(nil, awful.screen.focused())
			end},
		{"manual", terminal .. " -e man awesome"},
		{"edit config", editor_cmd .. " " .. awesome.conffile},
		{"restart", awesome.restart}
	}
})

mylauncher = awful.widget.launcher({
	image = beautiful.awesome_icon,
	menu = mymainmenu
})

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}
