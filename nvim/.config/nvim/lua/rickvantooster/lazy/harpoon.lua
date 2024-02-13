return {
	"ThePrimeAgen/harpoon",
	config = function ()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<leader>mf", function ()
			harpoon:list():append()
		end)

		vim.keymap.set("n", "<leader>ml", function ()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		
	end

}
