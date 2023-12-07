local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hr", mark.rm_file)
vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu)

for i = 1, 10 do
	vim.keymap.set("n", "<leader>h"..tostring(i-1), function() ui.nav_file(i) end)
end

