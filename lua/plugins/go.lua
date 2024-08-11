return {
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("go").setup()
		require("go.format").gofmt() -- gofmt only
		require("go.format").goimports() -- goimports + gofmt
		vim.api.nvim_create_user_command("GoTestCover", "!go test -cover", { bang = true })
		vim.api.nvim_create_user_command("GoTestBenchmark", "!go test -bench=.", { bang = true })
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
