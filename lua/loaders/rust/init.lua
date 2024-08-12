local dap = require("dap");

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*.rust" },
	callback = function()
		require("loaders.rust.keymaps");
	end,
});

local module = {}

function module.setup_lsp(on_attach, capabilites)
	--Rustaceanvim handles configuring the LSP.
	vim.g.rustaceanvim = {
		server = {
			on_attach = function(client, bufnr)
				-- Set up debugging.
				dap.adapters.gdb = {
					type = 'executable',
					command = 'gdb',
					args = { "-i", "dap" }
				};
				dap.configurations.rust = {
					name = "Launch",
					type = "gdb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/',
							'file')
					end,
					cwd = "${workspaceFolder}",
					stopAtBeginningOfMainSubprogram = false,
				};
				on_attach(client, bufnr);
			end,
		}
	};
end

return module;
