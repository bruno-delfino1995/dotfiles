local awful = require("awful")

local gears = require("gears")
local gfs = require("gears.filesystem")

local helpers = require("helpers")

local xresources = require("beautiful.xresources")
local colors = require("colors")
local dpi = xresources.apply_dpi

local theme_assets = require("beautiful.theme_assets")
local themes_path = gfs.get_themes_dir()
local assets_path = gfs.get_configuration_dir() .. "assets/"

local naughty = require("naughty")
local nconf = naughty.config

-- Inherit default theme

local theme = dofile(themes_path .. "default/theme.lua")
theme.wallpaper = gfs.get_configuration_dir() .. "images/background.png"

-- Configure icons theme

theme.icon_theme = "/usr/share/icons/Numix/22/status/:/usr/share/icons/Numix/22/devices/"

-- Fonts

theme.font_name = "Lexend Deca"
theme.font = theme.font_name .. ":fontformat=truetype:size=12:antialias=true;2"
theme.icon_font = "FiraCode Nerd Font Mono 18"
theme.font_taglist = "FiraCode Nerd Font Mono 13"
theme.max_font = "FiraCode Nerd Font Mono 10"

-- Background Colors

theme.bg_dark = colors.base00
theme.bg_normal = colors.background
theme.bg_focus = colors.base00
theme.bg_urgent = colors.base08
theme.bg_minimize = colors.base08

-- Foreground Colors

theme.fg_normal = colors.base07
theme.fg_focus = colors.base04
theme.fg_urgent = colors.base03
theme.fg_minimize = colors.base08

theme.button_close = colors.base01

-- Borders

theme.border_width = dpi(2)
theme.oof_border_width = dpi(0)
theme.border_normal = colors.base00
theme.border_focus = colors.base0B
theme.border_radius = dpi(12)
theme.client_radius = dpi(12)
theme.widget_border_width = dpi(1)
theme.widget_border_color = colors.base00

-- Taglist

local taglist_square_size = dpi(0)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)
theme.taglist_font = theme.font_taglist
theme.taglist_bg = theme.wibar_bg
theme.taglist_bg_focus = colors.base01
theme.taglist_fg_focus = colors.base05
theme.taglist_bg_urgent = colors.base03
theme.taglist_fg_urgent = colors.base07
theme.taglist_bg_occupied = colors.base00
theme.taglist_fg_occupied = colors.base05
theme.taglist_bg_empty = colors.base00
theme.taglist_fg_empty = colors.base03
theme.taglist_bg_volatile = transparent
theme.taglist_fg_volatile = colors.base0B
theme.taglist_disable_icon = true
-- theme.taglist_shape_focus = helpers.rrect(theme.border_radius - 3)

-- Tasklist

theme.tasklist_font = theme.font
theme.tasklist_plain_task_name = true
theme.tasklist_bg_focus = colors.base00
theme.tasklist_fg_focus = colors.base06
theme.tasklist_bg_minimize = colors.base00
theme.tasklist_fg_minimize = colors.foreground
theme.tasklist_bg_normal = colors.base00
theme.tasklist_fg_normal = colors.foreground
theme.tasklist_disable_task_name = false
theme.tasklist_disable_icon = true
theme.tasklist_bg_urgent = colors.base00
theme.tasklist_fg_urgent = colors.base01
theme.tasklist_align = "center"

-- Titlebars

theme.titlebar_size = dpi(40)
theme.titlebar_height = dpi(20)
theme.titlebar_bg_focus = colors.background
theme.titlebar_bg_normal = colors.background
theme.titlebar_fg_normal = colors.base08
theme.titlebar_fg_focus = colors.base0F

-- Edge snap

theme.snap_bg = colors.base08
theme.snap_shape = helpers.rrect(0)

-- Prompts

theme.prompt_bg = transparent
theme.prompt_fg = colors.foreground

-- Tooltips

theme.tooltip_bg = colors.background
theme.tooltip_fg = colors.foreground
theme.tooltip_font = theme.font_name .. ":size=12"
theme.tooltip_border_width = theme.widget_border_width - 1
theme.tooltip_border_color = colors.base00
theme.tooltip_opacity = 1
theme.tooltip_align = "left"

-- Menu

theme.menu_font = theme.font
theme.menu_bg_focus = colors.base04
theme.menu_fg_focus = colors.base07
theme.menu_bg_normal = colors.background
theme.menu_fg_normal = colors.base07
theme.menu_submenu_icon = assets_path .. "submenu.png"
theme.menu_height = dpi(20)
theme.menu_width = dpi(130)
theme.menu_border_color = "#0000000"
theme.menu_border_width = theme.border_width

-- Hotkeys Pop Up

theme.hotkeys_font = theme.font
theme.hotkeys_border_color = colors.base00
theme.hotkeys_group_margin = dpi(40)
theme.hotkeys_shape = helpers.custom_shape

-- Layout List

theme.layoutlist_border_color = colors.base08
theme.layoutlist_border_width = theme.border_width
-- Recolor Layout icons:
theme = theme_assets.recolor_layout(theme, colors.foreground)

-- Gaps

theme.useless_gap = dpi(3)

-- Exit Screen

theme.exit_screen_fg = colors.foreground
theme.exit_screen_bg = colors.base00

-- Wibar

theme.wibar_height = dpi(34) + theme.widget_border_width
theme.wibar_margin = dpi(15)
theme.wibar_spacing = dpi(15)
theme.wibar_bg = colors.background

-- Systray

theme.systray_icon_spacing = dpi(10)
theme.bg_systray = colors.base00
theme.systray_icon_size = dpi(15)

-- Tabs

theme.mstab_bar_height = dpi(60)
theme.mstab_bar_padding = dpi(0)
theme.mstab_border_radius = dpi(6)
theme.tabbar_style = "modern"
theme.tabbar_bg_focus = colors.background
theme.tabbar_bg_normal = colors.base00
theme.tabbar_fg_focus = colors.base08
theme.tabbar_fg_normal = colors.base0F
theme.tabbar_position = "bottom"
theme.tabbar_AA_radius = 0
theme.mstab_bar_ontop = true

-- Naugthy configs

theme.notification_font = "Lexend Deca:fontformat=truetype:size=12:antialias=true;2"
theme.notification_spacing = 10

nconf.defaults.border_width = 0
nconf.defaults.margin = 16
nconf.defaults.icon_size = 64
nconf.defaults.margin = 2
nconf.padding = 8
nconf.spacing = 8

nconf.presets.critical.bg = theme.bg_urgent
nconf.presets.critical.fg = theme.fg_urgent
nconf.presets.critical.timeout = 20

nconf.presets.low.bg = theme.bg_normal
nconf.presets.low.fg = theme.fg_normal
nconf.presets.low.timeout = 5

nconf.presets.normal.bg = theme.bg_focus
nconf.presets.normal.fg = theme.fg_focus
nconf.presets.normal.timeout = 10

-- Titlebar layout icons

theme.titlebar_close_button_normal = assets_path .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus = assets_path .. "titlebar/close_focus.png"
theme.titlebar_minimize_button_normal = assets_path .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = assets_path .. "titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive = assets_path .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = assets_path .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = assets_path .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = assets_path .. "titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive = assets_path .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = assets_path .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = assets_path .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = assets_path .. "titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive = assets_path .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = assets_path .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = assets_path .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = assets_path .. "titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = assets_path .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = assets_path .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = assets_path .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = assets_path .. "titlebar/maximized_focus_active.png"

-- Wibar layout icons

theme.layout_fairh = assets_path .. "layouts/fairhw.png"
theme.layout_fairv = assets_path .. "layouts/fairvw.png"
theme.layout_floating = assets_path .. "layouts/floatingw.png"
theme.layout_magnifier = assets_path .. "layouts/magnifierw.png"
theme.layout_max = assets_path .. "layouts/maxw.png"
theme.layout_fullscreen = assets_path .. "layouts/fullscreenw.png"
theme.layout_tilebottom = assets_path .. "layouts/tilebottomw.png"
theme.layout_tileleft = assets_path .. "layouts/tileleftw.png"
theme.layout_tile = assets_path .. "layouts/tilew.png"
theme.layout_tiletop = assets_path .. "layouts/tiletopw.png"
theme.layout_spiral = assets_path .. "layouts/spiralw.png"
theme.layout_dwindle = assets_path .. "layouts/dwindlew.png"
theme.layout_cornernw = assets_path .. "layouts/cornernww.png"
theme.layout_cornerne = assets_path .. "layouts/cornernew.png"
theme.layout_cornersw = assets_path .. "layouts/cornersww.png"
theme.layout_cornerse = assets_path .. "layouts/cornersew.png"

return theme
