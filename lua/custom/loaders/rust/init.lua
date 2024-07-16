local nvim_lsp = require('lspconfig')

local module = {}

function module.setup(on_attach, capabilites)
	-- nvim_lsp.denols.setup {
	-- 	on_attach = function(client, bufnr)
	-- 		require("custom.loaders.typescript_deno.snippets");
	--
	-- 		on_attach(client, bufnr);
	-- 	end,
	-- 	capabilites = capabilites,
	-- 	root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
	-- }
end

return module;
