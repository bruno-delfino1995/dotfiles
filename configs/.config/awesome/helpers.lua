local shape = require("gears.shape")

local helpers = {}

-- Create rounded rectangle shape (in one line)
helpers.rrect = function(radius)
	return function(cr, width, height)
		shape.rounded_rect(cr, width, height, radius)
	end
end

-- Add a hover cursor to a widget by changing the cursor on
-- mouse::enter and mouse::leave
helpers.add_hover_cursor = function(w, hover_cursor)
    local original_cursor = "left_ptr"

    w:connect_signal("mouse::enter", function()
        local w = _G.mouse.current_wibox
        if w then w.cursor = hover_cursor end
    end)

    w:connect_signal("mouse::leave", function()
        local w = _G.mouse.current_wibox
        if w then w.cursor = original_cursor end
    end)
end

-- Markup helpers

helpers.colorize_text = function(txt, fg)
	return "<span foreground='" .. fg .. "'>" .. txt .. "</span>"
end

return helpers
