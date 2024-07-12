local ls = require("luasnip");

local snippets_js = require("custom.loaders.javascript_node.snippets_shared");

ls.add_snippets("javascript", {
  snippets_js.debug,
});
