return {
	-- Install markdown preview, use npx if available.
	-- Try to go at location and do run install.sh script manually inside app directory
	-- if didn't work ~/.local/share/nvim/lazy/markdown-preview.nvim/app/install.sh
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function(plugin)
		if vim.fn.executable("npx") then
			vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
		else
			vim.cmd([[Lazy load markdown-preview.nvim]])
			vim.fn["mkdp#util#install"]()
		end
	end,
	init = function()
		if vim.fn.executable("npx") then
			vim.g.mkdp_filetypes = { "markdown" }
		end
	end,
}
