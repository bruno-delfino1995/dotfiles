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

-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
	-- All clients will match this rule.
	{
		rule = {},
		properties = {
			border_width = beautiful.border_width,
			border_color = beautiful.border_normal,
			focus = awful.client.focus.filter,
			raise = true,
			keys = clientkeys,
			buttons = clientbuttons,
			screen = awful.screen.preferred,
			placement = awful.placement.no_overlap + awful.placement.no_offscreen
		}
	},
	-- Floating clients.
	{
		rule_any = {
			instance = {
				"pinentry"
			},
			class = {},
			-- Note that the name property shown in xprop might be set slightly after creation of the client
			-- and the name shown there might not match defined rules here.
			name = {},
			role = {}
		},
		properties = {floating = true}
	}

	-- Add titlebars to normal clients and dialogs
	-- {
	-- 	rule_any = {type = {"normal", "dialog"}},
	-- 	properties = {titlebars_enabled = true}
	-- },

	-- Set Firefox to always map on the tag named "2" on screen 1.
	-- {
	-- 	rule = {class = "Firefox"},
	-- 	properties = {screen = 1, tag = "2"}
	-- },
}
-- }}}
