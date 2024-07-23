local module = {}

function module.setup(on_attach, capabilites)
	--Rustaceanvim handles configuring the LSP.
	vim.g.rustaceanvim = {
		server = {
			on_attach = function(client, bufnr)
				require("custom.loaders.rust.keymaps");
				on_attach(client, bufnr);
			end,
		}
	};
end

return module;
