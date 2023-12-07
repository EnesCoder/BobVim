function SetColors(color)
	color = color or 'tokyonight-storm'
	vim.cmd.colorscheme(color)
	--if bg_trans then
	--	vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
	--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
	--end
end

SetColors('tokyonight-moon')

