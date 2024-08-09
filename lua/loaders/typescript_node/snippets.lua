local ls = require("luasnip");

local snippets_js = require("custom.loaders.typescript_node.snippets_shared");

ls.add_snippets("typescript", {
  snippets_js.debug,
});
