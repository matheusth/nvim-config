return {
	"zbirenbaum/copilot.lua",
    cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = false,
				debounce = 75,
				keymap = {
					accept = "<C-g>",
					accept_word = false,
					accept_line = false,
					next = "<C-a>",
					prev = "<C-x>",
					dismiss = "<C-z>",
				},
			},
		})
	end,
}
