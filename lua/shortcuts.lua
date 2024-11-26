return {

	{},
	config = function()
		vim.keymap.set("n", "<leader>cd", function()
			vim.cmd("cd %:p:h")
		end, { desc = "[C]hange Working [D]irecorty" })
	end,
}
