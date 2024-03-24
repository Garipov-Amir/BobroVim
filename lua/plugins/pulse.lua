return {
	"linguini1/pulse.nvim",
	version = "*", -- Latest stable release
	config = function()
		local pulse = require("pulse")
		pulse.setup()
		pulse.add("pomodoro-timer", {
			interval = 60,
			message = "Пора отдохнуть!",
			enabled = true,
		})
	end,
}
