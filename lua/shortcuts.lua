return {

	{},
	config = function()
		vim.keymap.set("n", "<leader>cd", vim.cmd("cd %:p:h"), { desc = "[C]hange Working [D]irecorty" })
	end,
}
