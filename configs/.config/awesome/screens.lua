local awful = require("awful")

local screens = {
	primary = 1,
	secondary = 1
}

awful.screen.connect_for_each_screen(function(s)
	for out,_ in pairs(s.outputs) do
		if out == "eDP1" then
			screens.secondary = s.index
		elseif out == "HDMI1" then
			screens.primary = s.index
		end
	end
end)

return screens
